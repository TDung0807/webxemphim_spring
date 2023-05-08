package com.example.phimonline.controller;


import com.example.phimonline.Security.jwt.JwtUtils;
import com.example.phimonline.model.enity.Role;
import com.example.phimonline.model.enity.User;
import com.example.phimonline.repository.RoleRepository;
import com.example.phimonline.repository.UserRepository;
import com.example.phimonline.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Controller
@RequestMapping("/admin")
public class UserAdminController {
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
    @Autowired

    private UserService userService;
    @GetMapping("/user")
    public String showUserPage(Model model){
        List<User> userList = userService.listAll();
        model.addAttribute("users", userList);
        return "AdminPage/User";
    }

    @PostMapping("/user")
    public String addUser(@RequestParam Map<String,String> allParams) {
        String email = allParams.get("email");
        String password = allParams.get("password");
        String name = allParams.get("name");
        String role = allParams.get("role");

        if (userRepository.existsByEmail(email)) {
            return "redirect:/admin/user";
        }
        User user = new User();
        user.setPassword(passwordEncoder.encode(password));
        user.setEmail(email);
        user.setName(name);

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
        return "redirect:/admin/user";
    }
    @PostMapping("/user/delete")
    public String deleteuser(Model model,@RequestParam Map<String, String> allParams){
        userService.delete(Integer.parseInt(allParams.get("id")));
        return "redirect:/admin/user";
    }
}
