package com.ssm.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.BookMapper;
import com.ssm.pojo.Book;
import com.ssm.service.BookService;
@Service
public class BookServiceImp implements BookService {

	@Autowired
	private BookMapper mapper;
	
	@Override
	public void addBook(Book book) {
		mapper.addBook(book);
	}

	@Override
	public List<Book> selectAllBook() {
		return mapper.selectAllBook();
	}
	
}
