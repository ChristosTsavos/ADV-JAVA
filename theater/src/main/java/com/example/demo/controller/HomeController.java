package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String showHomePage() {		
		return "home";
	}
	
	
	@GetMapping("/contact")
	public String contact() {
		
		return "contact";
	}
}
