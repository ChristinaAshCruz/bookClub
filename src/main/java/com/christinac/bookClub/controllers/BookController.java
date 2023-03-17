package com.christinac.bookClub.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.christinac.bookClub.models.Book;
import com.christinac.bookClub.models.User;
import com.christinac.bookClub.services.BookService;
import com.christinac.bookClub.services.UserService;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Autowired
	private UserService userServ;
	@Autowired
	private BookService bookServ;
	
	@GetMapping("")
	public String dashboard(Model model, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/";
		} else {
			Long userId = (Long) session.getAttribute("userId");
			User loggedUser = userServ.findById(userId);
			model.addAttribute("user", loggedUser);
			List<Book> allBooks = bookServ.findAll();
			model.addAttribute("allBooks", allBooks);
			return "dashboard.jsp";
		}
	}
	//new book form
	@GetMapping("/new")
	public String newBook(@ModelAttribute("newBook") Book newBook) {
		return "newBook.jsp";
	}
	
	@PostMapping("/new")
	public String createBook(@Valid @ModelAttribute("newBook") Book newBook, BindingResult result, HttpSession session) {
		if(result.hasErrors()) {
			return "newBook.jsp";
		} else {
			// save the book
			Long userId = (Long) session.getAttribute("userId");
			newBook.setSubmittedBy(userServ.findById(userId));
			bookServ.create(newBook);
			return "redirect:/book";
		}
	}
	//edit book entry
	@GetMapping("/{bookId}/edit")
	public String editEntry(@PathVariable("bookId") Long bookId, Model model) {
		Book thisBook = bookServ.findById(bookId);
		model.addAttribute("thisBook", thisBook);
		return "editEntry.jsp";
	}
	
	@PutMapping("/{bookId}/edit")
	public String updateBook(@Valid @ModelAttribute("thisBook") Book thisBook, BindingResult result, @PathVariable("bookId") Long bookId, HttpSession session) {
		if(result.hasErrors()) {
			return "editEntry.jsp";
		} else {
			// save the book
			Long userId = (Long) session.getAttribute("userId");
			Long newBookId = bookId;
			thisBook.setId(newBookId);
			thisBook.setSubmittedBy(userServ.findById(userId));
			bookServ.update(thisBook);
			return "redirect:/book";
		}
	}
	//view book
	@GetMapping("/{bookId}/view")public String viewBook(@PathVariable("bookId") Long bookId, Model model, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/";
		} else {
			Book thisBook = bookServ.findById(bookId);
			model.addAttribute("thisBook", thisBook);
			return "viewBook.jsp";
		}
	}
	
	
	//delete book
	@GetMapping("/{bookId}/delete")
	public String deleteBook(@PathVariable("bookId") Long bookId, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/";
		} else {
			bookServ.deleteBookById(bookId);
			return "redirect:/book";
		}
	}
}
