package com.ssm.mapper;

import com.ssm.entity.User;
import java.util.List;

public interface UserMapper {

    User selectByPrimaryKey(Integer id);
    void deleteByUsername(Integer id);
    void updateByUsername(User user);
    void insert(User user);
    User findByUsername(String username);
    List<User> getAllUsers();
}
