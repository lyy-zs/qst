package com.lyy.service.user;

import com.lyy.pojo.User;

public interface UserService {

    User login(String name);

    int register(User user);
}
