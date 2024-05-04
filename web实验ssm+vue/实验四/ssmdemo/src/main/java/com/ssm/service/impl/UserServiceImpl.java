package com.ssm.service.impl;

import com.ssm.entity.User;
import com.ssm.mapper.UserMapper;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service // 添加@Service注解
public class UserServiceImpl implements UserService {
    private final UserMapper userMapper;
    @Autowired
    public UserServiceImpl(UserMapper userMapper) {
        this.userMapper = userMapper;
    }
    @Override
    public User selectByPrimaryKey(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }
    @Override
    public void registerUser(User user) {
        userMapper.insert(user);
    }
    @Override
    public boolean authenticateUser(String username, String password) {
        User user = userMapper.findByUsername(username);
        return user != null && user.getPassword().equals(password);
    }
    @Override
    public void deleteByUsername(int id) {
         userMapper.deleteByUsername(id);
    }
    @Override
    public void updateByUsername(User user) {
        userMapper.updateByUsername(user);
    }


    @Override
    public List<User> getAllUsers() {
        return userMapper.getAllUsers();
    }
}




