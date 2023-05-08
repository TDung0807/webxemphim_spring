package com.example.phimonline.repository;

import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.model.enity.MovieHistory;
import com.example.phimonline.model.enity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

@Repository
public interface MovieHistoryRepository  extends JpaRepository<MovieHistory,Integer> {
    MovieHistory findMovieHistoriesByUserAndMovie(User user, Movie movie);
    boolean existsMovieHistoriesByUserAndMovie(User user,Movie movie);

}
