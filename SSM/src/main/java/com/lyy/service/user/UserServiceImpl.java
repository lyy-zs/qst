package com.lyy.service.user;

import com.lyy.dao.user.UserMapper;
import com.lyy.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;

public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {this.userMapper = userMapper;}
    public UserMapper getUserMapper() {return userMapper;}


    @Override
    public User login(String name) {
        return userMapper.login(name);
    }

    @Override
    public int register(User user) { return userMapper.register(user); }


}
