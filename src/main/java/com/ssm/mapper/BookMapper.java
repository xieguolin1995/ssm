package com.ssm.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.pojo.Book;

@Repository
public interface BookMapper {

	void addBook(Book book);

	List<Book> selectAllBook();
	
}
