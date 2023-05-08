package com.example.phimonline.controller;

import com.example.phimonline.Security.UserInfoResponse;
import com.example.phimonline.Security.jwt.AuthTokenFilter;
import com.example.phimonline.Security.jwt.JwtUtils;
import com.example.phimonline.Security.service.UserDetailsImpl;
import com.example.phimonline.Security.service.UserDetailsServiceImpl;
import com.example.phimonline.model.enity.Genre;
import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.model.enity.User;
import com.example.phimonline.repository.CountryRepository;
import com.example.phimonline.repository.LanguageRepository;
import com.example.phimonline.service.CountryService;
import com.example.phimonline.service.GenreService;
import com.example.phimonline.service.LanguageService;
import com.example.phimonline.service.MovieService;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;


@Controller
public class HomePageController {

	@Autowired
    MovieService movieService;
    @Autowired
    GenreService genreService;
    @Autowired
    LanguageService languageService;
    @Autowired
    CountryService countryService;
    @Autowired
    UserDetailsServiceImpl userDetailsService;
    @Autowired
    private JwtUtils jwtUtils;
//    public HomePageController(MovieService movieService) {
//        this.movieService = movieService;
//    }
//
//    @GetMapping("/movies")
//    public Page<Movie> getMovies(@RequestParam(defaultValue = "0") int page,
//                                 @RequestParam(defaultValue = "10") int size,
//                                 @RequestParam(defaultValue = "view") String sortBy) {
//        Pageable pageable = PageRequest.of(page, size, Sort.by(sortBy).descending());
//        return movieService.getAllMoviesOrderByViewDesc(pageable);
//	}

    @GetMapping("/")
    public String getMovieOfIndex(Model model, HttpServletRequest request){
        Pageable pageable = (Pageable) PageRequest.of(0, 20);
        Pageable pageableTrending = (Pageable) PageRequest.of(0, 7);
        model.addAttribute("genres",genreService.getAllGenre(pageable));
        model.addAttribute("trending",movieService.getMovieTrending(pageableTrending));
        model.addAttribute("languages",languageService.getAllLanguage(pageable));
        model.addAttribute("countrys",countryService.getMovieAllCountry(pageable));

        String jwt =jwtUtils.getJwtFromCookies(request);
        if (jwt != null && jwtUtils.validateJwtToken(jwt)) {
            String username = jwtUtils.getUserNameFromJwtToken(jwt);
            UserDetailsImpl user = (UserDetailsImpl) userDetailsService.loadUserByUsername(username);
            UserInfoResponse userInfoResponse = new UserInfoResponse(null,null,user.getFullname(),user.getUrl_image(),null);

            model.addAttribute("user",userInfoResponse);
        }else {
            model.addAttribute("user",null);
        }


        return "index";

	}
    @GetMapping("/login")
    public String login(){
        return  "landingPage";
    }





}
