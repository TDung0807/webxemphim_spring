package com.example.phimonline.controller;


import com.example.phimonline.Security.UserInfoResponse;
import com.example.phimonline.Security.jwt.JwtUtils;
import com.example.phimonline.Security.service.UserDetailsImpl;
import com.example.phimonline.Security.service.UserDetailsServiceImpl;
import com.example.phimonline.model.enity.*;
import com.example.phimonline.service.*;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MovieController {
    @Autowired
    private CommentService commentService;
    @Autowired
    MovieService movieService;
    @Autowired
    GenreService genreService;
    @Autowired
    LanguageService languageService;
    @Autowired
    EpisodeService episodeService;
    @Autowired
    CountryService countryService;
    @Autowired
    UserDetailsServiceImpl userDetailsService;
    @Autowired
    private JwtUtils jwtUtils;

    @Autowired
    private ActorService actorService;
    @GetMapping("/movies/trending")
    public String movieTrending(Model model, HttpServletRequest request, @RequestParam(value = "page" ,defaultValue = "1") int page){

            page = page -1;

        Pageable pageable = PageRequest.of(page, 21);
        Page<Movie> movies = movieService.getMovieTrending(pageable);

        List<Movie> movieList = movies.getContent(); // Lấy danh sách các phần tử của Page

        int pageSize = 7; // Số phần tử trên mỗi trang
        int totalPagesnew = (int) Math.ceil((double) movieList.size() / pageSize); // Tính số trang cần tạo

        List<Page<Movie>> moviePages = new ArrayList<>(); // Danh sách các Page mới

        for (int i = 0; i < totalPagesnew; i++) {
            int fromIndex = i * pageSize;
            int toIndex = Math.min(fromIndex + pageSize, movieList.size());
            List<Movie> subList = movieList.subList(fromIndex, toIndex);

            Page<Movie> pageasa = new PageImpl<>(subList, pageable, movieList.size());
            moviePages.add(pageasa);
        }
        model.addAttribute("movies",moviePages);

        int totalPages = movies.getTotalPages();
        model.addAttribute("page",page +1);
        model.addAttribute("totalPages",totalPages);
        model.addAttribute("genres",genreService.getAllGenre(pageable));
        model.addAttribute("languages",languageService.getAllLanguage(pageable));
        model.addAttribute("countrys",countryService.getMovieAllCountry(pageable));
        String jwt =jwtUtils.getJwtFromCookies(request);
        if (jwt != null) {
            String username = jwtUtils.getUserNameFromJwtToken(jwt);
            UserDetailsImpl user = (UserDetailsImpl) userDetailsService.loadUserByUsername(username);
            UserInfoResponse userInfoResponse = new UserInfoResponse(null,null,user.getFullname(),user.getUrl_image(),null);

            model.addAttribute("user",userInfoResponse);
        }else {
            model.addAttribute("user",null);
        }

        return "movies";
    }

    @GetMapping("/movies/genre/{genre}")
    public String movieOfGenre(Model model, HttpServletRequest request, @PathVariable(value = "genre") int id, @RequestParam(value = "page" ,defaultValue = "1") int page){
        Genre genre = genreService.getGenreByID(id);
        page = page -1;

        Pageable pageable = PageRequest.of(page, 21);
        Page<Movie> movies = movieService.getMovieGenre(genre,pageable);

        List<Movie> movieList = movies.getContent(); // Lấy danh sách các phần tử của Page

        int pageSize = 7; // Số phần tử trên mỗi trang
        int totalPagesnew = (int) Math.ceil((double) movieList.size() / pageSize); // Tính số trang cần tạo

        List<Page<Movie>> moviePages = new ArrayList<>(); // Danh sách các Page mới

        for (int i = 0; i < totalPagesnew; i++) {
            int fromIndex = i * pageSize;
            int toIndex = Math.min(fromIndex + pageSize, movieList.size());
            List<Movie> subList = movieList.subList(fromIndex, toIndex);

            Page<Movie> pageasa = new PageImpl<>(subList, pageable, movieList.size());
            moviePages.add(pageasa);
        }
        model.addAttribute("movies",moviePages);

        int totalPages = movies.getTotalPages();
        model.addAttribute("page",page +1);
        model.addAttribute("totalPages",totalPages);
        model.addAttribute("genres",genreService.getAllGenre(pageable));
        model.addAttribute("languages",languageService.getAllLanguage(pageable));
        model.addAttribute("countrys",countryService.getMovieAllCountry(pageable));
        String jwt =jwtUtils.getJwtFromCookies(request);
        if (jwt != null && jwtUtils.validateJwtToken(jwt)) {            String username = jwtUtils.getUserNameFromJwtToken(jwt);
            UserDetailsImpl user = (UserDetailsImpl) userDetailsService.loadUserByUsername(username);
            UserInfoResponse userInfoResponse = new UserInfoResponse(null,null,user.getFullname(),user.getUrl_image(),null);

            model.addAttribute("user",userInfoResponse);
        }else {
            model.addAttribute("user",null);
        }

        return "movies";
    }
    @GetMapping("/movies/language/{language}")
    public String movieOflanguage(Model model, HttpServletRequest request, @PathVariable(value = "language") int id, @RequestParam(value = "page" ,defaultValue = "1") int page){
        Language language = languageService.getLanguageById(id);
        page = page -1;

        Pageable pageable = PageRequest.of(page, 21);
        Page<Movie> movies = movieService.getMovieLanguage(language,pageable);

        List<Movie> movieList = movies.getContent(); // Lấy danh sách các phần tử của Page

        int pageSize = 7; // Số phần tử trên mỗi trang
        int totalPagesnew = (int) Math.ceil((double) movieList.size() / pageSize); // Tính số trang cần tạo

        List<Page<Movie>> moviePages = new ArrayList<>(); // Danh sách các Page mới

        for (int i = 0; i < totalPagesnew; i++) {
            int fromIndex = i * pageSize;
            int toIndex = Math.min(fromIndex + pageSize, movieList.size());
            List<Movie> subList = movieList.subList(fromIndex, toIndex);

            Page<Movie> pageasa = new PageImpl<>(subList, pageable, movieList.size());
            moviePages.add(pageasa);
        }
        model.addAttribute("movies",moviePages);

        int totalPages = movies.getTotalPages();
        model.addAttribute("page",page +1);
        model.addAttribute("totalPages",totalPages);
        model.addAttribute("genres",genreService.getAllGenre(pageable));
        model.addAttribute("languages",languageService.getAllLanguage(pageable));
        model.addAttribute("countrys",countryService.getMovieAllCountry(pageable));
        String jwt =jwtUtils.getJwtFromCookies(request);
        if (jwt != null && jwtUtils.validateJwtToken(jwt)) {            String username = jwtUtils.getUserNameFromJwtToken(jwt);
            UserDetailsImpl user = (UserDetailsImpl) userDetailsService.loadUserByUsername(username);
            UserInfoResponse userInfoResponse = new UserInfoResponse(null,null,user.getFullname(),user.getUrl_image(),null);

            model.addAttribute("user",userInfoResponse);
        }else {
            model.addAttribute("user",null);
        }

        return "movies";
    }
    @GetMapping("movies/detail/{id}")
    public String movieinfor(Model model,@PathVariable("id") int id ,HttpServletRequest request){
        Movie movie = movieService.getMovieById(id);
        model.addAttribute("movie",movie);
        Pageable pageable = PageRequest.of(0, 21);
        Pageable pageableTrending = (Pageable) PageRequest.of(0, 7);
        model.addAttribute("trending",movieService.getMovieTrending(pageableTrending));
        model.addAttribute("genres",genreService.getAllGenre(pageable));
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
        return  "film_inform";
    }
    @GetMapping("/movies/play/{id}")
    public String playmovie(Model model, HttpServletRequest request, @PathVariable(value = "id") int id, @RequestParam(value = "tap" ,defaultValue = "1") int tap){
        Movie movie = movieService.getMovieById(id);
        model.addAttribute("movie",movie);
        Pageable pageable = PageRequest.of(0, 21);
        Pageable pageableTrending = (Pageable) PageRequest.of(0, 7);
        Pageable comment = (Pageable) PageRequest.of(0, 10);
        model.addAttribute("trending",movieService.getMovieTrending(pageableTrending));

        model.addAttribute("genres",genreService.getAllGenre(pageable));
        model.addAttribute("languages",languageService.getAllLanguage(pageable));
        model.addAttribute("countrys",countryService.getMovieAllCountry(pageable));
        Episode episode = episodeService.getEpisodeByNumberAndMovie(movie,tap);

        if(episode!=null){
            model.addAttribute("episode",episode);
        }else {
            return "redirect:/movies/detail/"+id;
        }


        model.addAttribute("comment",commentService.getAllCommentByMovie(comment,movie).getContent());
        String jwt =jwtUtils.getJwtFromCookies(request);
        if (jwt != null && jwtUtils.validateJwtToken(jwt)) {
            String username = jwtUtils.getUserNameFromJwtToken(jwt);
            UserDetailsImpl user = (UserDetailsImpl) userDetailsService.loadUserByUsername(username);
            UserInfoResponse userInfoResponse = new UserInfoResponse(null,null,user.getFullname(),user.getUrl_image(),null);
            model.addAttribute("user",userInfoResponse);
        }else {
            model.addAttribute("user",null);
        }
        return "film_play";
    }
    @GetMapping("/movies/country/{country}")

    public String movieOfcountry(Model model, HttpServletRequest request, @PathVariable(value = "country") int id, @RequestParam(value = "page" ,defaultValue = "1") int page){
        Country country = countryService.getCountryById(id);
        page = page -1;

        Pageable pageable = PageRequest.of(page, 21);
        Page<Movie> movies = movieService.getMovieCountry(country,pageable);

        List<Movie> movieList = movies.getContent(); // Lấy danh sách các phần tử của Page

        int pageSize = 7; // Số phần tử trên mỗi trang
        int totalPagesnew = (int) Math.ceil((double) movieList.size() / pageSize); // Tính số trang cần tạo

        List<Page<Movie>> moviePages = new ArrayList<>(); // Danh sách các Page mới

        for (int i = 0; i < totalPagesnew; i++) {
            int fromIndex = i * pageSize;
            int toIndex = Math.min(fromIndex + pageSize, movieList.size());
            List<Movie> subList = movieList.subList(fromIndex, toIndex);

            Page<Movie> pageasa = new PageImpl<>(subList, pageable, movieList.size());
            moviePages.add(pageasa);
        }
        model.addAttribute("movies",moviePages);

        int totalPages = movies.getTotalPages();
        model.addAttribute("page",page +1);
        model.addAttribute("totalPages",totalPages);
        model.addAttribute("genres",genreService.getAllGenre(pageable));
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
        return "movies";
    }

    @GetMapping("/movies/actor/{actor}")
    public String movieOfactor(Model model, HttpServletRequest request, @PathVariable(value = "actor") int id, @RequestParam(value = "page" ,defaultValue = "1") int page){
        Actor actor = actorService.getActorByID(id);
        page = page -1;

        Pageable pageable = PageRequest.of(page, 21);
        Page<Movie> movies = movieService.getMovieActor(actor,pageable);

        List<Movie> movieList = movies.getContent(); // Lấy danh sách các phần tử của Page

        int pageSize = 7; // Số phần tử trên mỗi trang
        int totalPagesnew = (int) Math.ceil((double) movieList.size() / pageSize); // Tính số trang cần tạo

        List<Page<Movie>> moviePages = new ArrayList<>(); // Danh sách các Page mới

        for (int i = 0; i < totalPagesnew; i++) {
            int fromIndex = i * pageSize;
            int toIndex = Math.min(fromIndex + pageSize, movieList.size());
            List<Movie> subList = movieList.subList(fromIndex, toIndex);

            Page<Movie> pageasa = new PageImpl<>(subList, pageable, movieList.size());
            moviePages.add(pageasa);
        }
        model.addAttribute("movies",moviePages);

        int totalPages = movies.getTotalPages();
        model.addAttribute("page",page +1);
        model.addAttribute("totalPages",totalPages);
        model.addAttribute("genres",genreService.getAllGenre(pageable));
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

        return "movies";
    }

    @GetMapping("/movies/search")
    public String Search(Model model, HttpServletRequest request, @RequestParam(value = "content") String key, @RequestParam(value = "page" ,defaultValue = "1") int page){

        page = page -1;

        Pageable pageable = PageRequest.of(page, 21);
        Page<Movie> movies = movieService.searchMovies(key,pageable);

        List<Movie> movieList = movies.getContent(); // Lấy danh sách các phần tử của Page

        int pageSize = 7; // Số phần tử trên mỗi trang
        int totalPagesnew = (int) Math.ceil((double) movieList.size() / pageSize); // Tính số trang cần tạo

        List<Page<Movie>> moviePages = new ArrayList<>(); // Danh sách các Page mới

        for (int i = 0; i < totalPagesnew; i++) {
            int fromIndex = i * pageSize;
            int toIndex = Math.min(fromIndex + pageSize, movieList.size());
            List<Movie> subList = movieList.subList(fromIndex, toIndex);

            Page<Movie> pageasa = new PageImpl<>(subList, pageable, movieList.size());
            moviePages.add(pageasa);
        }
        model.addAttribute("movies",moviePages);

        int totalPages = movies.getTotalPages();
        model.addAttribute("page",page +1);
        model.addAttribute("totalPages",totalPages);
        model.addAttribute("genres",genreService.getAllGenre(pageable));
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

        return "movies";
    }

}
