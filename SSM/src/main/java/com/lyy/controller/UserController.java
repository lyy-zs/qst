package com.lyy.controller;

import com.lyy.pojo.User;
import com.lyy.service.user.UserService;
import lombok.val;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/userlogin")
    public String loginOne(Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        System.out.println("进入控制器");
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(name + password);

        PrintWriter writer = response.getWriter();
        if ("".equals(name) || "".equals(password) || name == null || password == null) {
            writer.print("<script type='text/javascript' charset='utf-8'> alert('姓名和密码不能为空');history.back();</script>");
            writer.flush();;
            writer.close();
            return "redirect:/user/userlogin";
        }
        User user = userService.login(name);
        System.out.println(user.toString());
        if(password.equals(user.getPassword())){
            request.setAttribute("uesr",user);

            return "redirect:/book/book-list";
        }
        else {
            return "redirect:/user/userlogin";
        }
    }

    @RequestMapping("/login")
    public String loginOne() {
        return "userlogin";

    }


    @RequestMapping("/toRegister")
    public String toAddUser(){ return "register"; }

    @RequestMapping("/register")
    public String register(User user,HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        System.out.println("进入注册控制器");
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        String rpassword = request.getParameter("rpassword");
        System.out.println(password + rpassword);

        PrintWriter writer = response.getWriter();

        if(!password.equals(rpassword)){
            writer.print("<script type='text/javascript' charset='utf-8'> alert('两次密码不统一');history.back();</script>");
            writer.flush();;
            writer.close();
            return "register";
        }else{
            userService.register(user);
            return "redirect:/user/login";
        }

    }

}
