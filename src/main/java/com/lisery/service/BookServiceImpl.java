package com.lisery.service;

import com.lisery.dao.BookMapper;
import com.lisery.pojo.Books;

import java.util.List;

public class BookServiceImpl implements BookService {
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public void addBook(Books books) {
        bookMapper.addBook(books);
    }

    public void deleteBookByID(int id) {
        bookMapper.deleteBookByID(id);
    }

    public void updateBook(Books books) {
        bookMapper.updateBook(books);
    }

    public Books queryBookByID(int id) {
        return bookMapper.queryBookByID(id);
    }

    public List<Books> queryAllBooks() {
        return bookMapper.queryAllBooks();
    }

    public List<Books> queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }
}
