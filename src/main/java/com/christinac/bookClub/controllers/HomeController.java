package com.christinac.bookClub.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.christinac.bookClub.models.LoginUser;
import com.christinac.bookClub.models.User;
import com.christinac.bookClub.services.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private UserService userServ;
	
	// index
	@GetMapping("/")
	public String index(Model model, HttpSession session) {
		session.setAttribute("userId", null);
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "index.jsp";
	}
	
	//register new user
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User user, BindingResult result, HttpSession session, Model model) {
		User newUser = userServ.register(user, result);
		if(newUser == null) {
			model.addAttribute("newLogin", new LoginUser());
			return "index.jsp";
		} else {
			session.setAttribute("userId", newUser.getId());
			return "redirect:/book";
		}
	}
	
	// login user
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser loginUser, BindingResult result, Model model, HttpSession session) {
		User user = userServ.login(loginUser, result);
		if (user == null) {
			model.addAttribute("newUser", new User());
			return "index.jsp";
		} else {
			session.setAttribute("userId", user.getId());
			return "redirect:/book";
		}
	}
	
	//dashboard

	
	// process new book form jsp
	
	//add post /book/new method here
	
	//view book
	//edit book (if belongs to user)
}
