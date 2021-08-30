package com.lyy.service.book;

import com.lyy.pojo.Books;
import com.lyy.pojo.PageData;

import java.util.List;

public interface BookService {

    //增加一本书
    int addBook(Books books);

    //删除一本书
    int deleteBookById(int id);

    //更新一本书
    int updateBook(Books books);

    //查询一本书
    Books queryBookById(int id);

    //查询所有书
    List<Books> queryAllBook();

    //Data
    List<PageData> queryData();

}
