package com.example.phimonline.controller;


import com.example.phimonline.model.enity.Actor;
import com.example.phimonline.model.enity.Country;
import com.example.phimonline.service.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class CountryAdminController {

    @Autowired
    private CountryService countryService;


    @GetMapping("/admin/country")
    public String showCountryPage(Model model)
    {

        List<Country> countries = countryService.getAllCountries();
        model.addAttribute("countries", countries);
        return "AdminPage/country";
    }

    @PostMapping("/admin/country")
    public String addCountry(@RequestParam Map<String, String> allParams)
    {
        Country country = new Country();
        country.setName(allParams.get("name"));
        countryService.createCountry(country);

        return "redirect:/admin/country";
    }

    @PostMapping("admin/country/edit")
    public String updateCountry(@RequestParam Map<String, String> allParams){

        Country country = new Country();
        country.setName(allParams.get("name"));
        countryService.updateCountry(Integer.parseInt(allParams.get("btn_value")), country);

        return "redirect:/admin/country";
    }


    @PostMapping("admin/country/delete")
    public String deleteCountry(@RequestParam Map<String, String> allParams){
        countryService.deleteCountry(Integer.parseInt(allParams.get("id")));
        return "redirect:/admin/country";
    }



}
