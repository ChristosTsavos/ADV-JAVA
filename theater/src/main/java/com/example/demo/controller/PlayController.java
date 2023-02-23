package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import com.example.demo.model.Play;
import com.example.demo.service.PlayService;

@Controller
public class PlayController {

	@Autowired
	private PlayService playService;

	@GetMapping("/showPlays")
	public String showArticles(Model model, HttpServletRequest request) {
		List<Play> plays = playService.findAll();
		model.addAttribute("plays", plays);
		return "showPlays";
	}
	
	@GetMapping("/showPlay/{id}")
	public String showPlay(@PathVariable Long id, Model model) {
		model.addAttribute("play", playService.findById(id));
		return "showPlay";
	}	

}
