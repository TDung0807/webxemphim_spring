package com.example.phimonline.service;

import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.model.enity.Rating;
import com.example.phimonline.model.enity.User;
import com.example.phimonline.repository.RatingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RatingService {
    @Autowired
    private RatingRepository ratingRepository;
    public Rating addRating(Rating rating){
        return ratingRepository.save(rating);
    }
    public Rating updateRating(Rating rating){
        Rating findRating = ratingRepository.findRatingById(rating.getId());
        if(findRating !=null){
        return      ratingRepository.save(rating);
        }
        return  null;
    }
    public boolean deleteRating(Integer id){
        Rating findRating = ratingRepository.findRatingById(id);
        if(findRating !=null) {
            return  false;
        }
        ratingRepository.deleteById(id);
            return true;
    }
    public boolean existsRating(Movie movie , User user){
        return ratingRepository.existsRatingByMovieAndAndUser(movie,user);
    }
    public Rating getRatingByMovieandUser(Movie movie,User user){
        return  ratingRepository.findRatingByMovieAndUser(movie,user);
    }
}
