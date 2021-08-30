package com.lyy.dao.book;

import com.lyy.pojo.Books;
import com.lyy.pojo.PageData;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.List;

public class BookMapperImp extends SqlSessionDaoSupport implements BookMapper{



    public int addBook(Books books) {
        return 0;
    }

    public int deleteBookById(int id) {
        return 0;
    }

    public int updateBook(Books books) {
        return 0;
    }

    public Books queryBookById(int id) {
        return null;
    }

    public List<Books> queryAllBook() {
        return null;
    }

    public List<PageData> queryData() { return null;}
}
