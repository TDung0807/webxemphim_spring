package com.example.phimonline.repository;

import com.example.phimonline.model.enity.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Integer> {
    Page<Movie> findAllByOrderByViewDesc(Pageable pageable);

    Movie findMovieById(Integer id);

    Page<Movie> findAllByGenresOrderByIdDesc(Genre genre, Pageable pageable);

    @Query("SELECT m FROM Movie m JOIN m.actors as a JOIN  m.genres as g  WHERE m.name LIKE %:keyword% OR g.name LIKE %:keyword%  OR  m.description LIKE %:keyword% OR m.year LIKE %:keyword% OR a.name LIKE %:keyword%")
    Page<Movie> searchMovies(@Param("keyword") String keyword, Pageable pageable);

    Page<Movie> findByOrderByViewDesc(Pageable pageable);

    Page<Movie> findByLanguage(Language language, Pageable pageable);

    Page<Movie> findByGenres(Genre genre, Pageable pageable);

    Page<Movie> findByCountry(Country country, Pageable pageable);

    Page<Movie> findByActors(Actor actor, Pageable pageable);

    @Query("SELECT m FROM Movie m ORDER BY m.view DESC LIMIT 10")
    List<Movie> topMovie();

}

