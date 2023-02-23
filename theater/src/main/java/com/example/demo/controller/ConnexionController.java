package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Client;
import com.example.demo.service.ClientService;
import com.example.demo.service.SecurityService;
import com.example.demo.validator.ClientValidator;

@Controller
public class ConnexionController {

	@Autowired
	ClientService clientService;

	@Autowired
	private ClientValidator clientValidator;

	public final static String SHOW_PLAYS_PATH = "/showPlays";


	@RequestMapping(value = "/addClient", method = RequestMethod.GET)
	public String addClient(Model model) {
		model.addAttribute("client", new Client());
		List<String> genders = new ArrayList<>();
		genders.addAll(Arrays.asList("male", "female"));
		model.addAttribute("genders", genders);
		return "addClient";
	}
	
	@RequestMapping(value = "/updateClient", method = RequestMethod.GET)
	public String updateClient(Model model, @RequestParam("id") Long id) {
		model.addAttribute("client", clientService.findById(id));
		return "updateClient";
	}

	@RequestMapping(value = "/addClient", method = RequestMethod.POST)
	public String addClient(@ModelAttribute("client") Client clientForm, BindingResult bindingResult, Model model) {
		clientValidator.validate(clientForm, bindingResult);

		if (bindingResult.hasErrors()) {
			return "redirect:/addClient";
		}

		clientService.save(clientForm);

//        securityService.autologin(clientForm.getEmail(), clientForm.getMotDePasse());

		return "redirect:/showPlays";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(HttpServletRequest request, Model model) {
//	    String referer = request.getHeader("Referer");

		request.getSession().setAttribute("url_plays", SHOW_PLAYS_PATH);
		// some other stuff
		return "login";
	}

}