package com.example.phimonline.service;

import com.example.phimonline.model.enity.Comment;
import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CommentService {
    @Autowired
    private CommentRepository commentRepository;
    public Comment addComment(Comment comment){
        return commentRepository.save(comment);
    }

    public boolean delete(Comment comment){
        Comment commentfound = commentRepository.findCommentById(comment.getId());
        if (commentfound!=null){
              commentRepository.delete(comment);
              return true;
        }
        return  false;
    }

    public Page<Comment> getAllCommentByMovie(Pageable pageable, Movie movie){
        return commentRepository.findAllByMovie(movie,pageable);
    }

    public Comment updateComment(Comment comment){
        Comment commentfound = commentRepository.findCommentById(comment.getId());
        if (commentfound!=null){
            return  commentRepository.save(comment);
        }
        return null;

    }


}
