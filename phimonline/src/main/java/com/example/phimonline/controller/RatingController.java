package com.example.phimonline.controller;

import com.example.phimonline.Security.jwt.JwtUtils;
import com.example.phimonline.Security.service.UserDetailsImpl;
import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.model.enity.Rating;
import com.example.phimonline.model.enity.User;
import com.example.phimonline.service.MovieService;
import com.example.phimonline.service.RatingService;
import com.example.phimonline.service.UserService;
import io.jsonwebtoken.Jwt;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api")

public class RatingController {
    @Autowired
    public RatingService ratingService;
    @Autowired
    public MovieService movieService;
    @Autowired
    private JwtUtils jwtUtils;
    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private UserService userService;
    @PostMapping("/rate")
    @ResponseBody
    public Map<String, String> addRating(HttpServletRequest request, @RequestParam(name = "number_rating") float number_rating,
                                         @RequestParam(name = "movie_id") int movie_id){
        String jwt =jwtUtils.getJwtFromCookies(request);
        Map<String, String> data = new HashMap<>();
//        String jwt = "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsaW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY4MjgwNDcwMywiZXhwIjoxNjgyODkxMTAzfQ.VQphIBT732an3yAedAbCZTyawlo2UDEW5oZHtSZadiJW8Zv0wx378md6cCmwKNs9bfd--JFkbPf6XiGXI0kSsA";
        if (jwt != null && jwtUtils.validateJwtToken(jwt)) {
            String username = jwtUtils.getUserNameFromJwtToken(jwt);
            User user = userService.getUserByEmail(username);
            Movie movie = movieService.getMovieById(movie_id);
            if(!ratingService.existsRating(movie,user)) {
                Rating rating = new Rating();
                rating.setNumberRating((number_rating));
                rating.setMovie(movie);
                ratingService.addRating(rating);
                data.put("success","true");
                data.put("message","Đánh giá phim thành công");

            }else {
              Rating rating = ratingService.getRatingByMovieandUser(movie,user);
              rating.setNumberRating(number_rating);
              ratingService.updateRating(rating);
                data.put("success","true");
                data.put("message","Đánh giá phim thành công");
            }
        }else {
            data.put("success","false");
            data.put("message","Vui lòng đăng nhập để đánh giá");
        }
        return data;
    }
}
