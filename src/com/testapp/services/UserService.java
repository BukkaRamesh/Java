package com.testapp.services;

import java.util.List;

import com.testapp.domain.User;

public interface UserService {

	 public void insertData(User user);
	 public List<User> getUserList();
	 public void deleteData(String id);
	 public User getUserByName(String username);
	 public User getUserById(String id);
	 public void updateData(User user);
	 public abstract boolean authenticateUser(User user);
	}