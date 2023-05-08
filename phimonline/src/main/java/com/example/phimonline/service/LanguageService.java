package com.example.phimonline.service;

import com.example.phimonline.model.enity.Language;

import com.example.phimonline.repository.LanguageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Optional;

@Service
public class LanguageService {

    @Autowired
    private LanguageRepository languageRepo;


    public Page<Language> getAllLanguage(Pageable pageable){
        return languageRepo.findAll(pageable);
    }
    @Autowired
    private LanguageRepository languageRepository;



    public Language getLanguageById(int id) {
        Optional<Language> language = languageRepository.findById(id);
        return language.orElse(null);
    }

    public Language createLanguage(Language language) {
        return languageRepository.save(language);
    }

    public Language updateLanguage(Language language) {
        Language temp = languageRepository.findById(language.getId()).orElseThrow();
        if(temp==null){
            return  null;
        }
        return languageRepository.save(language);
    }

    public void deleteLanguage(int id) {
        languageRepository.deleteById(id);
    }

    public List<Language> getAllLanguages() {
       return languageRepo.findAll();
    }
}
