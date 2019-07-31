package com.ssm.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.pojo.Book;

@Repository
public interface BookMapper {

	void addBook(Book book);

	List<Book> selectAllBook();

	Book editBook(String bid);

	void editBookSave(Book book);

	void delBook(String bid);

	List<Book> getOneCatgoryBook(String cid);

	Book bookDetails(String bid);
	
}
