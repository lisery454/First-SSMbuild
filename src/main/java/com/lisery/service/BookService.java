package com.lisery.service;

import com.lisery.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    //增
    void addBook(Books books);

    //删
    void deleteBookByID(int id);

    //改
    void updateBook(Books books);

    //查
    Books queryBookByID(int id);

    List<Books> queryAllBooks();

    List<Books> queryBookByName(String bookName);
}
