package com.christinac.bookClub.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.christinac.bookClub.models.Book;
import com.christinac.bookClub.repositories.BookRepository;

@Service
public class BookService {

	@Autowired
	private BookRepository bookRepo;
	
	// find all the books
	public List<Book> findAll(){
		return bookRepo.findAll();
	}
	
	// find by id
	public Book findById(Long id) {
		Optional<Book> optBook = bookRepo.findById(id);
		if(optBook.isEmpty()) {
			return null;
		} else {
			return optBook.get();
		}
	}
	
	// create a new book
	public Book create(Book b) {
		return bookRepo.save(b);
	}
	
	//update book entry
	public Book update(Book b) {
		return bookRepo.save(b);
	}
	
	//delete book
	public void deleteBookById(Long id) {
		bookRepo.deleteById(id);
	}
}
