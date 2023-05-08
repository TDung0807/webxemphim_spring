package com.example.phimonline.repository;

import java.util.List;
import java.util.Optional;

import com.example.phimonline.model.enity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;



@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
    Optional<User> findByEmail(String email);
    User getUserByEmail(String email);
    Boolean existsByEmail(String email);
    @Query("SELECT  u  from  User as u ORDER BY u.id desc ")
    List<User> findAllOrderByIdDesc();
}