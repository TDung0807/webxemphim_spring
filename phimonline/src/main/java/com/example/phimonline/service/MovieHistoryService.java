package com.example.phimonline.service;

import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.model.enity.MovieHistory;
import com.example.phimonline.model.enity.User;
import com.example.phimonline.repository.MovieHistoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieHistoryService{
    @Autowired
    private MovieHistoryRepository movieHistoryRepository;
    public MovieHistory save(MovieHistory movieHistory){
        return movieHistoryRepository.save(movieHistory);
    }

    public MovieHistory getMovieHistoryByUserAndMovie(User user, Movie movie){
        return  movieHistoryRepository.findMovieHistoriesByUserAndMovie(user,movie);
    }
    public boolean exists(User user, Movie movie){
        return  movieHistoryRepository.existsMovieHistoriesByUserAndMovie(user,movie);

    }
}
