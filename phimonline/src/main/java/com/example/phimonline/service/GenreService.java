package com.example.phimonline.service;

import com.example.phimonline.model.enity.Genre;
import com.example.phimonline.repository.GenreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;


@Service
public class GenreService {
    @Autowired
    GenreRepository genreRepository;
    public Genre getGenreByID(int id){
        return genreRepository.findGenreById(id);
    }
    public Page<Genre> getAllGenre(Pageable pageable) {
        return genreRepository.findAll(pageable);
    }

    public List<Genre> getAllGenres() {
        return  genreRepository.findAll();
    }
    public Genre updateGenre(int id, Genre updatedGenre) {
        Optional<Genre> optionalGenre = genreRepository.findById(id);
        if (optionalGenre.isPresent()) {
            Genre genre = optionalGenre.get();
            genre.setName(updatedGenre.getName());
            genre.setDescription(updatedGenre.getDescription());
            // Add more properties to update if necessary

            return genreRepository.save(genre);
        }
        return null;
    }
    public void deleteGenre(int id) {
        genreRepository.deleteById(id);
    }
}
