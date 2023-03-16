package com.christinac.bookClub.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	// index
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	//dashboard
	@GetMapping("/books")
	public String dashboard() {
		return "dashboard.jsp";
	}
	
	@GetMapping("/books/new")
	public String newBook() {
		return "newBook.jsp";
	}
}
