package com.lyy.service.book;

import com.lyy.dao.book.BookMapper;
import com.lyy.pojo.Books;
import com.lyy.pojo.PageData;

import java.util.List;


public class BookServiceImpl implements BookService {

    //service调dao层：组合Dao
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    public List<PageData> queryData(){return  bookMapper.queryData();}
}
