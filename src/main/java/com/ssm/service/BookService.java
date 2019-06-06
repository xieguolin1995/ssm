package com.ssm.service;

import java.util.List;

import com.ssm.pojo.Book;

public interface BookService {

	void addBook(Book book);

	List<Book> selectAllBook();
	
}
