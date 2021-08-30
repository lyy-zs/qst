package com.lyy.dao.user;

import com.lyy.pojo.User;

public interface UserMapper {
    User login(String name);

    int register(User user);
}
