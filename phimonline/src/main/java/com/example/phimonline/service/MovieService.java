package com.example.phimonline.service;

import com.example.phimonline.model.enity.*;
import com.example.phimonline.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class MovieService {
    @Autowired
    MovieRepository movieRepository;
    public MovieService(MovieRepository movieRepository) {
        this.movieRepository = movieRepository;
    }
    public Page<Movie> getAllMoviesOrderByViewDesc(Pageable pageable) {
        return movieRepository.findAllByOrderByViewDesc(pageable);
    }
    public Movie detailMovie(int id){
        return  movieRepository.findMovieById(id);
    }

    public Page<Movie> getAllMovies(Pageable pageable){
        return  movieRepository.findAll(pageable);
    }
    public Page<Movie> getMovieTrending(Pageable pageable){

        return movieRepository.findByOrderByViewDesc(pageable);
    }
    public Page<Movie> getMovieGenre(Genre genre, Pageable pageable){

        return movieRepository.findByGenres(genre,pageable);
    }
    public Page<Movie> getMovieLanguage(Language language, Pageable pageable){
        return movieRepository.findByLanguage(language,pageable);
    }
    public Page<Movie> getMovieCountry(Country country ,Pageable pageable ){

        return movieRepository.findByCountry(country,pageable);
    }
    public Page<Movie> getMovieActor(Actor actor , Pageable pageable ){

        return movieRepository.findByActors(actor,pageable);
    }

    public Page<Movie> getAllMoviesByGenreOrderByIdDesc(Genre genre, Pageable pageable) {
        return movieRepository.findAllByGenresOrderByIdDesc(genre, pageable);
    }

    public Page<Movie> searchMovies(String keyword, Pageable pageable) {
        return movieRepository.searchMovies(keyword, pageable);
    }

    public Movie addMovie(Movie movie) {
        return movieRepository.save(movie);
    }

    public Movie getMovieById(int id) {
       Movie movie = movieRepository.findMovieById(id);
        return movie!=null ? movie : null;
    }
    public List<Movie> getAllMovie(){
        return movieRepository.findAll();
    }

    @Autowired
    LanguageService lanService;
    @Autowired
    EpisodeService epiService;
    @Autowired
    CountryService counService;
    public Movie insertMovie(Map<String,String> allParams) {
        Movie film = new Movie();
        film.setPoster(allParams.get("poster"));
        film.setName(allParams.get("name"));
        film.setStatus(allParams.get("status"));
        film.setDirector(allParams.get("director"));
        film.setLanguage(lanService.getLanguageById(Integer.parseInt(allParams.get("Language"))));
        film.setCountry(counService.getCountryById(Integer.parseInt(allParams.get("country"))));
        film.setTotalEpispde(allParams.get("number"));
        film.setDescription(allParams.get("description"));
        film.setUrlTrailer(allParams.get("trailerlink"));
        film.setYear(allParams.get("year"));
        movieRepository.save(film);
        return film;
    }
    public void updateMovie(Movie film,Map<String,String> allParams) {
        film.setPoster(allParams.get("poster"));
        film.setName(allParams.get("name"));
        film.setStatus(allParams.get("status"));
        film.setLanguage(lanService.getLanguageById(Integer.parseInt(allParams.get("Language"))));
        film.setCountry(counService.getCountryById(Integer.parseInt(allParams.get("country"))));
        film.setTotalEpispde(allParams.get("number"));
        film.setDescription(allParams.get("description"));
        film.setUrlTrailer(allParams.get("trailerlink"));
        film.setYear(allParams.get("year"));
        movieRepository.save(film);
    }
    public void deleteMovie(int id) {
        Movie movie =    movieRepository.findById(id).orElseThrow();
        System.out.println(movie.getName());
        movieRepository.delete(movie);
    }
    public List<Movie> getTopMovie(){
        return movieRepository.topMovie();
    }
    public int countMovie() {
        return movieRepository.findAll().size();
    }
}
