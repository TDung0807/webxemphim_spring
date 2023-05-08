package com.example.phimonline.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;


import com.example.phimonline.Security.UserInfoResponse;
import com.example.phimonline.Security.jwt.JwtUtils;
import com.example.phimonline.Security.service.UserDetailsImpl;
import com.example.phimonline.model.enity.Role;
import com.example.phimonline.model.enity.User;
import com.example.phimonline.repository.RoleRepository;
import com.example.phimonline.repository.UserRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;


@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/auth")
public class AuthController {
    @Autowired
    AuthenticationManager authenticationManager;

    @Autowired
    UserRepository userRepository;
    @Autowired
    RoleRepository roleRepository;
    @Autowired
    public PasswordEncoder passwordEncoder;

    @Autowired
    JwtUtils jwtUtils;





    @PostMapping("/signin")
    public ModelAndView authenticateUser(
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            HttpServletRequest request,
            HttpServletResponse response
           ) throws ServletException, IOException {
        Authentication authentication = authenticationManager
                .authenticate(new UsernamePasswordAuthenticationToken(email, password));
        SecurityContextHolder.getContext().setAuthentication(authentication);
        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
        ResponseCookie jwtCookie = jwtUtils.generateJwtCookie(userDetails);
        response.addHeader(HttpHeaders.SET_COOKIE, jwtCookie.toString());
        List<String> roles = userDetails.getAuthorities().stream()
                .map(item -> item.getAuthority())
                .collect(Collectors.toList());
        UserInfoResponse userInfoResponse = new UserInfoResponse(userDetails.getId(),userDetails.getUsername(),userDetails.getFullname(),userDetails.getUrl_image(),roles);
            if(roles.contains("ROLE_ADMIN")){
                return new ModelAndView(new RedirectView("/admin/film"));
            }
        if(roles.contains("ROLE_USER")){
            return new ModelAndView(new RedirectView("/"));
        }
          return  null;
    }

    @PostMapping("/signup")
    public ModelAndView registerUser( @RequestParam("email") String email,
                                           @RequestParam("password") String password,
                                           @RequestParam("name") String fullname,
                                           @RequestParam(value = "role", defaultValue = "user") String role
    ) {


        if (userRepository.existsByEmail(email)) {
            return new ModelAndView(new RedirectView("/login"));
        }
        User user = new User();
        user.setPassword(passwordEncoder.encode(password));
        user.setEmail(email);
        user.setName(fullname);

        String strRoles = role;
        Set<Role> roles = new HashSet<>();

        if (strRoles == null) {
            Role userRole = roleRepository.findByName("ROLE_USER")
                    .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
            roles.add(userRole);
        } else {
            switch (strRoles){
                case  "admin":
                    roles.add(roleRepository.findByName("ROLE_ADMIN").orElseThrow(() -> new RuntimeException("Error: Role is not found.")));
                    roles.add(roleRepository.findByName("ROLE_USER").orElseThrow(() -> new RuntimeException("Error: Role is not found.")));
                        break;
                case "mod":
                    roles.add(roleRepository.findByName("ROLE_ADMIN").orElseThrow(() -> new RuntimeException("Error: Role is not found.")));
                    roles.add(roleRepository.findByName("ROLE_USER").orElseThrow(() -> new RuntimeException("Error: Role is not found.")));
                    roles.add(roleRepository.findByName("ROLE_SUPER_ADMIN").orElseThrow(() -> new RuntimeException("Error: Role is not found.")));
                    break;
                default:
                    roles.add(roleRepository.findByName("ROLE_USER").orElseThrow(() -> new RuntimeException("Error: Role is not found.")));
                    break;
            }

        }

        user.setRoles(roles);
        userRepository.save(user);

        return new ModelAndView(new RedirectView("/login"));
    }

    @GetMapping("/signout")
    public ModelAndView logoutUser(  HttpServletResponse response ) {
        ResponseCookie cookie = jwtUtils.getCleanJwtCookie();
        response.addHeader(HttpHeaders.SET_COOKIE, cookie.toString());
        return new ModelAndView(new RedirectView("/"));

    }
}