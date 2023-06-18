 package com.mvcjspdemo.dao;
import com.mvcjspdemo.pojo.*;
public interface UserDao {

		boolean checkUserCredentials(User u);
		boolean addNewUser(User u);
	}

