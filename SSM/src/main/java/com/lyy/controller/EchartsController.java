package com.lyy.controller;

import com.lyy.pojo.PageData;
import com.lyy.service.book.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/echarts")
public class EchartsController {

    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @ResponseBody
    @RequestMapping(value = "go",produces = "application/json;charset=utf-8")
    public List<PageData> Dataa(HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {

        List<PageData> list = bookService.queryData();
        request.setAttribute("booksList", list);
        return list;

    }

}
