package com.ssm.service;

import java.util.List;

import com.ssm.pojo.Book;

public interface BookService {

	void addBook(Book book);

	List<Book> selectAllBook();

	Book editBook(String bid);

	void editBookSave(Book book);

	void delBook(String bid);

	List<Book> getOneCatgoryBook(String cid);

	Book bookDetails(String bid);
	
}
