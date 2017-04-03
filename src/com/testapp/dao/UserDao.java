package com.testapp.dao;

import java.util.List;

import com.testapp.domain.User;

public interface UserDao {
	
	 public void insertData(User user);
	 public List<User> getUserList();
	 public void updateData(User user);
	 public void deleteData(String id);
	 public User getUserByName(String username);
	 public User getUserById(String id);
	 public abstract boolean authenticateUser(User user);
	}