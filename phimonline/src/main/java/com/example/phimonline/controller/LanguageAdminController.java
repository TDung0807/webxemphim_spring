package com.example.phimonline.controller;


import com.example.phimonline.model.enity.Language;
import com.example.phimonline.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class LanguageAdminController {


    @Autowired
    private LanguageService languageService;


    @GetMapping("/admin/language")
    public String showLanguagePage(Model model)
    {
        List<Language> languages = languageService.getAllLanguages();
        model.addAttribute("languages", languages);
        return "AdminPage/language";
    }


    @PostMapping("/admin/language")
    public String addLanguage(@RequestParam Map<String, String> allParams){
        Language language = new Language();
        language.setName(allParams.get("name"));
        languageService.createLanguage(language);

        return "redirect:/admin/language";
    }

    @PostMapping("admin/language/edit")
    public String updatelanguage(@RequestParam Map<String, String> allParams){

        Language language = new Language();
        language.setId(Integer.parseInt(allParams.get("btn_value")));
        language.setName(allParams.get("name"));
        languageService.updateLanguage(language);

        return "redirect:/admin/language";
    }


    @PostMapping("admin/language/delete")
    public String deleteLanguage(Model model,@RequestParam Map<String, String> allParams){
        languageService.deleteLanguage(Integer.parseInt(allParams.get("id")));
        return "redirect:/admin/language";
    }
}
