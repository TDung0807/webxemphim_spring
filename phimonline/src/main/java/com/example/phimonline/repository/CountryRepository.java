package com.example.phimonline.repository;

import com.example.phimonline.model.enity.Country;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryRepository extends JpaRepository<Country, Integer> {
    @Override
    Page<Country> findAll(Pageable pageable);
}
