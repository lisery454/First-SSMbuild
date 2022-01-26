package com.lisery.controller;

import com.lisery.pojo.Books;
import com.lisery.service.BookService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/request")
public class BookController {
    private final BookService bookService;

    public BookController(@Qualifier("bookServiceImpl") BookService bookService) {
        this.bookService = bookService;
    }

    //查询全部的书籍,并且返回到一个书籍展示页面
    @RequestMapping("/allBooks")
    public String toAllBooksPaper(Model model) {
        List<Books> booksList = bookService.queryAllBooks();
        model.addAttribute("booksList", booksList);
        return "allBooks";
    }

    //跳转到书籍增加页面
    @RequestMapping("/toAddBook")
    public String toAddPaper() {
        return "addBook";
    }

    //添加书籍的请求
    @RequestMapping("/addBook")
    public String addBook(Books books) {
        System.out.println("addBook => " + books);
        bookService.addBook(books);
        return "redirect:/request/allBooks";
    }

    //跳转到书籍增加页面
    @RequestMapping("/toUpdateBook")
    public String toUpdatePaper(int id, Model model) {
        Books books = bookService.queryBookByID(id);
        model.addAttribute("Qbooks", books);
        return "updateBook";
    }

    //修改书籍的请求
    @RequestMapping("/updateBook")
    public String updateBook(Books books) {
        System.out.println("updateBook => " + books);
        bookService.updateBook(books);
        return "redirect:/request/allBooks";
    }

    //删除书籍的请求
    @RequestMapping("/deleteBook")
    public String updateBook(int id) {
        bookService.deleteBookByID(id);
        return "redirect:/request/allBooks";
    }

    //通过名字来查询书籍的请求
    @RequestMapping("/queryBookByName")
    public String queryBook(String queryBookName, Model model){
        List<Books> booksList = bookService.queryBookByName(queryBookName);
        model.addAttribute("booksList", booksList);
        return "allBooks";
    }
}
