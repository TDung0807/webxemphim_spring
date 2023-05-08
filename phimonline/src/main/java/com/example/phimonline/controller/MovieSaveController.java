package com.example.phimonline.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MovieSaveController {
	@GetMapping("/profile/history")
	public String home(Model model) {
		return "filmsave";
	}
}