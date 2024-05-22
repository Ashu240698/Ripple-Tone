package com.virtusa.rippletone.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.virtusa.rippletone.model.Admin;

@Component
@Transactional
public class AdminDao  {
    @Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	
	public void saveAdmin(Admin admin) {
		hibernateTemplate.save(admin);
	}
	
	public Admin getAdminByIt(int id) {
		Admin admin=hibernateTemplate.get(Admin.class,"id");
		return admin;
	}
	
	public void updateAdmin(Admin admin) {
		
		hibernateTemplate.update(admin);
	}
	
	public List<Admin> getAllAdmin() {

		List<Admin> list = new ArrayList<Admin>();

		list = hibernateTemplate.loadAll(Admin.class);
		return list;
	}

	public void deleteAdmin(int id) {
		Admin admin=new Admin();
		admin.setAdminId(id);
		hibernateTemplate.delete(admin);
	}
}
