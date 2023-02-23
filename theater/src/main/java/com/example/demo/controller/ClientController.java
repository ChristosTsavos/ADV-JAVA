package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.model.Client;
import com.example.demo.service.ClientService;

@Controller
public class ClientController {
	
	@Autowired
	private ClientService clientService;
	
	@GetMapping("/profile")
	public String profile(Model model, HttpServletRequest request) {
		
		Client client = clientService.findCurrentClient();
		model.addAttribute("client", client);
		return "profile";
	}
	
}
