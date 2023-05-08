package com.example.phimonline.repository;

import com.example.phimonline.model.enity.Actor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActorRepository extends JpaRepository<Actor,Integer> {
    Actor findActorsById(Integer id);
}
