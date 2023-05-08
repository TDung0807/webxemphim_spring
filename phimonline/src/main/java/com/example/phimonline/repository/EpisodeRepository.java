package com.example.phimonline.repository;

import com.example.phimonline.model.enity.Episode;
import com.example.phimonline.model.enity.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface EpisodeRepository extends JpaRepository<Episode, Integer> {
    Episode findByMovieAndNumber(Movie movie, int Number);
}
