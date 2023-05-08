package com.example.phimonline.controller;

import com.example.phimonline.Security.UserInfoResponse;
import com.example.phimonline.Security.jwt.JwtUtils;
import com.example.phimonline.Security.service.UserDetailsImpl;
import com.example.phimonline.model.enity.Comment;
import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.model.enity.User;
import com.example.phimonline.service.CommentService;
import com.example.phimonline.service.MovieService;
import com.example.phimonline.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;


import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@RestController
@RequestMapping("/api")
class CommentController{
    @Autowired
    public MovieService movieService;
    @Autowired
    private JwtUtils jwtUtils;
    @Autowired
    private CommentService commentService;
    @Autowired
    private UserService userService;
    @PostMapping("/addComment")
    public Map<String,String> addComment(HttpServletRequest request, @RequestParam("content") String content, @RequestParam("movie_id") int movie_id){
        String jwt =jwtUtils.getJwtFromCookies(request);
        Map<String, String> data = new HashMap<>();
//        String jwt = "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsaW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY4MjgwNDcwMywiZXhwIjoxNjgyODkxMTAzfQ.VQphIBT732an3yAedAbCZTyawlo2UDEW5oZHtSZadiJW8Zv0wx378md6cCmwKNs9bfd--JFkbPf6XiGXI0kSsA";
        if (jwt != null && jwtUtils.validateJwtToken(jwt)) {
            String username = jwtUtils.getUserNameFromJwtToken(jwt);
            User user = userService.getUserByEmail(username);
            Movie movie = movieService.getMovieById(movie_id);
           Comment comment = new Comment();
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            Date formattedDate = Date.valueOf(now.format(formatter));
            comment.setDate(formattedDate);
            comment.setMovie(movie);
            comment.setUser(user);
            comment.setContent(content);
            commentService.addComment(comment);
            data.put("success","true");
            data.put("message","Bình luận thành công");
            data.put("date", String.valueOf(formattedDate));
        }else{
            data.put("success","true");
            data.put("message","Vui lòng đăng nhập để tiếp tục");
        }
    return data;
    }
    @GetMapping("/loadComment")
    public List<Comment> loadComment(@RequestParam("page") int page,@RequestParam("movie_id") int movie_id) {

        Movie movie = movieService.getMovieById(movie_id);

        System.out.println(page );
        Pageable pageable = PageRequest.of(page, 10);
        Page<Comment> comments = commentService.getAllCommentByMovie(pageable, movie);


        for (Comment comment : comments
        ) {
            User user = comment.getUser();
            comment.setUser(new User(user.getId(), "", "", user.getName(), "", user.getUrl_avatar(), null));

        }
        return comments.getContent();
    }
}