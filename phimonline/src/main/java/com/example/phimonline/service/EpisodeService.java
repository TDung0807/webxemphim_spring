package com.example.phimonline.service;

import com.example.phimonline.model.enity.Episode;
import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.repository.EpisodeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EpisodeService {

    @Autowired
    private EpisodeRepository episodeRepo;


    public List<Episode> getAllEpisode(){
        return episodeRepo.findAll();
    }

    public Episode addEpisode(Episode eps){
        return episodeRepo.save(eps);
    }
    public Episode getEpisodeByNumberAndMovie(Movie eps, int number){
        return episodeRepo.findByMovieAndNumber(eps,number);
    }
    public void insertEp(Movie film,int number) {
        Episode epi = new Episode();
        epi.setName(film.getName());
        epi.setMovie(film);
        epi.setNumber(number);
        epi.setDescription(film.getDescription());
        epi.setUrl(film.getUrlTrailer());
        episodeRepo.save(epi);
    }
}
