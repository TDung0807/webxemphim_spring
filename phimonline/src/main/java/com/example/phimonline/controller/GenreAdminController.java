package com.example.phimonline.controller;


import com.example.phimonline.model.enity.Country;
import com.example.phimonline.model.enity.Genre;
import com.example.phimonline.service.GenreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class GenreAdminController {

    @Autowired
    private GenreService genreService;


    @GetMapping("/admin/genre")
    public String showGenrePage(Model model){
        List<Genre> genres = (List<Genre>) genreService.getAllGenres();
        model.addAttribute("genres", genres);

        return "AdminPage/genre";
    }


    @PostMapping("/admin/genre")
    public String addGenre(@RequestParam Map<String, String> allParams){
        Genre genre = new Genre();
        genre.setName(allParams.get("name"));
        genre.setDescription(allParams.get("description"));

        return "redirect:/admin/genre";
    }

    @PostMapping("admin/genre/edit")
    public String updateGenre(@RequestParam Map<String, String> allParams){

        Genre genre = new Genre();
        genre.setName(allParams.get("name"));
        genre.setDescription(allParams.get("description"));
        genreService.updateGenre(Integer.parseInt(allParams.get("btn_value")), genre);

        return "redirect:/admin/genre";
    }

    @PostMapping("admin/genre/delete")
    public String deleteGenre(@RequestParam Map<String, String> allParams){
        genreService.deleteGenre(Integer.parseInt(allParams.get("id")));
        return "redirect:/admin/genre";
    }



}