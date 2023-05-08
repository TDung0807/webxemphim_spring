package com.example.phimonline.controller;

import com.example.phimonline.Security.jwt.JwtUtils;
import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.model.enity.MovieHistory;
import com.example.phimonline.model.enity.Rating;
import com.example.phimonline.model.enity.User;
import com.example.phimonline.service.MovieHistoryService;
import com.example.phimonline.service.MovieService;
import com.example.phimonline.service.RatingService;
import com.example.phimonline.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/api")
public class MovieHistoryController {

    @Autowired
    public RatingService ratingService;
    @Autowired
    public MovieService movieService;
    @Autowired
    private MovieHistoryService movieHistoryService;
    @Autowired
    private JwtUtils jwtUtils;
    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private UserService userService;
    @PostMapping("/savefilm")
    @ResponseBody
    public Map<String, String> savefilm(HttpServletRequest request, @RequestParam(name = "number_now") int number_now,
                                         @RequestParam(name = "movie_id") int movie_id){
        String jwt =jwtUtils.getJwtFromCookies(request);
        Map<String, String> data = new HashMap<>();
//        String jwt = "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsaW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY4MjgwNDcwMywiZXhwIjoxNjgyODkxMTAzfQ.VQphIBT732an3yAedAbCZTyawlo2UDEW5oZHtSZadiJW8Zv0wx378md6cCmwKNs9bfd--JFkbPf6XiGXI0kSsA";
        if (jwt != null && jwtUtils.validateJwtToken(jwt)) {
            String username = jwtUtils.getUserNameFromJwtToken(jwt);
            User user = userService.getUserByEmail(username);
            Movie movie = movieService.getMovieById(movie_id);
            if(!ratingService.existsRating(movie,user)) {
                MovieHistory movieHistory = new MovieHistory();
                movieHistory.setMovie((movie));
                movieHistory.setUser(user);
                movieHistory.setNumberNow(number_now);
                movieHistoryService.save(movieHistory);
                data.put("success","true");
                data.put("message","Lưu phim thành công");

            }else {

                data.put("success","false");
                data.put("message","Phim đã được lưu");
            }
        }else {
            data.put("success","false");
            data.put("message","Vui lòng đăng nhập để lưu phim");
        }
        return data;
    }
}
