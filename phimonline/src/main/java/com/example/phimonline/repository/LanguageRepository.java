package com.example.phimonline.repository;


import com.example.phimonline.model.enity.Language;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LanguageRepository extends JpaRepository<Language, Integer> {
    @Override
    Page<Language> findAll(Pageable pageable);
}
