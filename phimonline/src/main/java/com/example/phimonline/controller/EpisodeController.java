package com.example.phimonline.controller;


import com.example.phimonline.model.enity.Episode;
import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.service.EpisodeService;
import com.example.phimonline.service.MovieService;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EpisodeController {

    @Autowired
    private EpisodeService episodeService;

    @Autowired
    private MovieService movieService;


    @GetMapping("/episodes")
    public String showEpisodes(Model model){
        model.addAttribute("episodes", episodeService.getAllEpisode());
        return "episodeManagement";
    }
    @GetMapping("/addEpisode")
    public String showAddEpisodeForm(){
        return "addEpisode";
    }
    @PostMapping("/addEpisode")
    public String addEpisode(@RequestParam(name = "number") int number,
                             @RequestParam(name = "name") String name,
                             @RequestParam(name = "url") String url,
                             @RequestParam(name = "description") String description,
                             @RequestParam(name = "movie_id") int id){
        Movie movie = movieService.getMovieById(id);
        Episode episode = new Episode();
        episode.setNumber(number);
        episode.setUrl(url);
        episode.setName(name);
        episode.setMovie(movie);
        episode.setDescription(description);

        episodeService.addEpisode(episode);
        return "redirect:/episodes";
    }


}
