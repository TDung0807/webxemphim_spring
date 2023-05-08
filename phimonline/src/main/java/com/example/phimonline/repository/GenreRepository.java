package com.example.phimonline.repository;
import com.example.phimonline.model.enity.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GenreRepository  extends JpaRepository<Genre,Integer> {
    Genre findGenreById(Integer id);
}
