package com.example.phimonline.repository;

import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.model.enity.Rating;
import com.example.phimonline.model.enity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RatingRepository extends JpaRepository<Rating, Integer> {
    Rating findRatingById(Integer id);
    boolean existsRatingByMovieAndAndUser(Movie movie , User user);
    Rating findRatingByMovieAndUser(Movie movie,User user);
}
