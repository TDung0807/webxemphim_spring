package com.example.phimonline.repository;

import com.example.phimonline.model.enity.Comment;
import com.example.phimonline.model.enity.Episode;
import com.example.phimonline.model.enity.Movie;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

@Repository
public interface CommentRepository extends JpaRepository<Comment,Integer> {
    Comment findCommentById(Integer id);
    Page<Comment> findAllByMovie(Movie movie,Pageable pageable);


}
