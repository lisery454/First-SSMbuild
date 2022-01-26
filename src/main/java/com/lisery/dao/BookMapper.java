package com.lisery.dao;

import com.lisery.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    //增
    void addBook(Books books);

    //删
    void deleteBookByID(@Param("bookID") int id);

    //改
    void updateBook(Books books);

    //查
    Books queryBookByID(@Param("bookID") int id);

    List<Books> queryAllBooks();

    List<Books> queryBookByName(@Param("bookName") String bookName);
}
