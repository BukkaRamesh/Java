package com.testapp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.testapp.dao.UserDao;
import com.testapp.domain.User;

public class UserServiceImpl implements UserService {

	 @Autowired
	 UserDao userdao;

	 @Override
	 public void insertData(User user) {
	  userdao.insertData(user);
	 }

	 @Override
	 public List<User> getUserList() {
	  return userdao.getUserList();
	 }

	 @Override
	 public void deleteData(String id) {
	  userdao.deleteData(id);
	  
	 }

	 @Override
	 public User getUserByName(String username) {
	  return userdao.getUserByName(username);
	 }
	 
	 @Override
	 public User getUserById(String id) {
	  return userdao.getUserById(id);
	 }

	 @Override
	 public void updateData(User user) {
	  userdao.updateData(user);
	  
	 }

	@Override
	public boolean authenticateUser(User user) {
		return userdao.authenticateUser(user);
	}


	 
	}