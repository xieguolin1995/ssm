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

	@Override
	public Book editBook(String bid) {
		return mapper.editBook(bid);
	}

	@Override
	public void editBookSave(Book book) {
		mapper.editBookSave(book);
	}

	@Override
	public void delBook(String bid) {
		mapper.delBook(bid);
	}

	@Override
	public List<Book> getOneCatgoryBook(String cid) {
		return mapper.getOneCatgoryBook(cid);
	}

	@Override
	public Book bookDetails(String bid) {
		return mapper.bookDetails(bid);
	}
	
}
