package com.example.phimonline.service;

import com.example.phimonline.model.enity.Actor;
import com.example.phimonline.repository.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class ActorService {
    @Autowired
    ActorRepository actorRepository;
    public Actor getActorByID(Integer id){
        return actorRepository.findActorsById(id);
    }
    public List<Actor> getAllActors() {
        return actorRepository.findAll();
    }

    public Optional<Actor> getActorById(int id) {
        return actorRepository.findById(id);
    }

    public Actor createActor(Actor actor) {
        return actorRepository.save(actor);
    }

    public Actor updateActor(int id, Actor actorDetails) {
        Optional<Actor> optionalActor = actorRepository.findById(id);
        if (optionalActor.isPresent()) {
            Actor actor = optionalActor.get();
            actor.setName(actorDetails.getName());
            return actorRepository.save(actor);
        } else {
            throw new RuntimeException("Actor not found with id: " + id);
        }
    }

    public void deleteActor(int id) {
        actorRepository.deleteById(id);
    }
}
