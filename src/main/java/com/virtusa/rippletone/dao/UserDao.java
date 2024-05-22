package com.virtusa.rippletone.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.virtusa.rippletone.model.User;

@Component
@Transactional
public class UserDao {
    @Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	
	public void save(User user) {
		hibernateTemplate.save(user);
	}
	
	public User getByIt(int userid) {
		User user=hibernateTemplate.load(User.class, userid);
		return user;
	}
	public void update(User user) {
		
		hibernateTemplate.update(user);
	}
	
	public List<User> getAllUser() {

		List<User> list = new ArrayList<User>();

		list = hibernateTemplate.loadAll(User.class);
		return list;
	}

	public void delete(int id) {
		User user=new User();
		user.setUserId(id);
		hibernateTemplate.delete(user);
	}

}