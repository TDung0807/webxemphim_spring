package com.example.phimonline.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.phimonline.model.enity.Movie;
import com.example.phimonline.service.UserService;
import com.example.phimonline.service.MovieService;

@Controller
public class statisticController {
	@Autowired
	UserService accountService;
	@Autowired
	MovieService movieService;
	@GetMapping("/admin/statistic")
	public String home(Model model) {
		model.addAttribute("countUser", accountService.countUser());
		model.addAttribute("countMovie", movieService.countMovie());
		model.addAttribute("listTop", movieService.getTopMovie());
		return "AdminPage/statistic";
	}
}
