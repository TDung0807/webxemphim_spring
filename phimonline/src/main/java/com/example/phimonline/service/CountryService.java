package com.example.phimonline.service;

import com.example.phimonline.model.enity.Country;
import com.example.phimonline.repository.CountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CountryService {


    @Autowired
    private CountryRepository countryRepository;

    public Country getCountryById(int id) {
        Optional<Country> country = countryRepository.findById(id);
        return country.orElse(null);
    }
    public Page<Country> getMovieAllCountry(Pageable pageable){
        return countryRepository.findAll(pageable);
    }



    public List<Country> getAllCountries() {
        return countryRepository.findAll();
    }

    public Country createCountry(Country country) {
        return countryRepository.save(country);
    }

    public Country updateCountry(int id, Country updatedCountry) {
        Optional<Country> optionalCountry = countryRepository.findById(id);
        if (optionalCountry.isPresent()) {
            Country country = optionalCountry.get();
            country.setName(updatedCountry.getName());

            return countryRepository.save(country);
        }
        return null;
    }

    public void deleteCountry(int id) {
        countryRepository.deleteById(id);
    }




}
