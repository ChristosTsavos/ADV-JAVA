package com.example.demo.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Shows;
import com.example.demo.service.ShowsService;

@Controller
public class ShowsController {

	@Autowired
	private ShowsService showsService;

	@GetMapping("/showShows")
	public String showShows(Model model, HttpServletRequest request) {
		List<Shows> shows = showsService.findAll();
		model.addAttribute("shows", shows);
		return "showShows";
	}

	@PostMapping("/showsByDate")
	public String showsByDate(@RequestParam String searchDate, Model model) {
		final LocalDate dt = LocalDate.parse(searchDate);
		List<Shows> shows = showsService.findByDate(dt);
		model.addAttribute("shows", shows);
		return "showShows";
	}

}
