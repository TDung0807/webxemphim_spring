package com.example.phimonline.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.repository.MovieRepository;
import com.example.phimonline.service.ActorService;
import com.example.phimonline.service.CountryService;
import com.example.phimonline.service.EpisodeService;
import com.example.phimonline.service.GenreService;
import com.example.phimonline.service.LanguageService;
import com.example.phimonline.service.MovieService;


@Controller
public class filmAdminController {
    @Autowired
    private MovieService movieService;
    @Autowired
    private LanguageService languageService;

    @Autowired
    private CountryService countryService;
    @Autowired
    MovieRepository movieRepository;
    @Autowired
    GenreService genreService;
    @Autowired
    EpisodeService epiService;
    @Autowired
    ActorService actorService;
    @GetMapping("/admin/film")
    public String showStudioPage(Model model,@RequestParam(required=false) String id)
    {
        if(id!=null) {
            model.addAttribute("listGenre",genreService.getAllGenres());
            model.addAttribute("listActor",actorService.getAllActors());
            return "AdminPage/detaifilm";
        }
        List<Movie> movies = movieService.getAllMovie();
        model.addAttribute("listMovie", movies);
        model.addAttribute("listCountry",countryService.getAllCountries());
        model.addAttribute("listLanguage", languageService.getAllLanguages());
        return "AdminPage/film";
    }
    @PostMapping("/admin/film")
    public String addMovie(@RequestParam Map<String, String> allParams){
        movieService.insertMovie(allParams);
        return "redirect:/admin/film";
    }
    @PostMapping("/admin/film/edit")
    public String updatemovie(@RequestParam Map<String, String> allParams){

        Movie film = new Movie();
        film.setId(Integer.parseInt(allParams.get("btn_value")));
        movieService.updateMovie(film, allParams);
        return "redirect:/admin/film";
    }
    @GetMapping("/admin/film/delete/{id}")
    public String deleteMovie(@PathVariable("id") int id){
        movieService.deleteMovie(id);
        return "redirect:/admin/film";
    }
}