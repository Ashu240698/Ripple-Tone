package com.virtusa.rippletone.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.rippletone.dao.UserDao;
import com.virtusa.rippletone.model.User;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;

	
	public void save(User user) {
		userDao.save(user);
	}
	
	public User getByIt(int userid) {
		User user=userDao.getByIt(userid);
		return user;
	}
	public void update(User user) {
		
		userDao.update(user);
	}
	
	public List<User> getAllUser() {
		List<User> list = new ArrayList<User>();
	    list = userDao.getAllUser();
	    return list;
	}

	public void delete(int id) {
		userDao.delete(id);
	}

}