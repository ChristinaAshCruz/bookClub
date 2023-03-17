package com.christinac.bookClub.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.christinac.bookClub.models.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long>{

	@Override
	public List<Book> findAll();
}
