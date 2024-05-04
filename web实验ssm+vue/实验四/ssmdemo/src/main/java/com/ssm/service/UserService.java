package com.ssm.service;

import com.ssm.entity.User;

import java.util.List;

public interface UserService {

    void registerUser(User user);
    boolean authenticateUser(String username, String password);
    void deleteByUsername(int id);
    void updateByUsername(User user);
     List<User> getAllUsers();
    User selectByPrimaryKey(Integer id);
}
