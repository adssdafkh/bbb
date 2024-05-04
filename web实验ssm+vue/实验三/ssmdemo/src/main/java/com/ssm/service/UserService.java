package com.ssm.service;

import com.ssm.entity.User;

public interface UserService {
    User selectByPrimaryKey(Integer id);
    void registerUser(User user);
    boolean authenticateUser(String username, String password);
    void deleteByUsername(int id);
    void updateByUsername(User user);
}
