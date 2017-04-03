package com.testapp.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.testapp.domain.User;

public class UserExtractor implements ResultSetExtractor<User> {

	 public User extractData(ResultSet resultSet) throws SQLException,
	   DataAccessException {
	  
	  User user = new User();
	  
	  user.setUserId(resultSet.getInt(1));
	  user.setFirstName(resultSet.getString(2));
	  user.setLastName(resultSet.getString(3));
	  user.setGender(resultSet.getString(4));
	  user.setCity(resultSet.getString(5));
	  user.setUserName(resultSet.getString(6));
	  user.setPassword(resultSet.getString(7));
	  
	  return user;
	 }

	}
