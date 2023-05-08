package com.example.phimonline.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.phimonline.model.enity.User;
import com.example.phimonline.service.UserService;

@Controller
public class userProfileController {
	@Autowired
	UserService accService;
	@GetMapping("/profile/setting")
	public String homeUser(Model model) {
		model.addAttribute("user", accService.get(1));
		return "userProfile";
	}
	@PostMapping("/profile/setting")
	public String userEdit(@RequestParam(required = false,name = "username") String username,@RequestParam(required = false,name = "email") String email,@RequestParam(required = false,name = "password") String password,@RequestParam(required = false,name = "image") MultipartFile avatar) {
		User user = new User();
		
		String fileName = StringUtils.cleanPath(avatar.getOriginalFilename());
        user.setUrl_avatar(fileName);
		if(!accService.checkPass(password)) {
			System.out.println("pass");
			return "redirect:/profile";
		}
		if(!accService.checkEmail(email)) {
			System.out.println("email");
			return "redirect:/profile";
		}
		user.setName(username);
		user.setPassword(password);
		user.setEmail(email);
		accService.update(1, user);
		return "redirect:/profile/setting";
	}
}
