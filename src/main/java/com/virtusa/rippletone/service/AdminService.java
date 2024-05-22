package com.virtusa.rippletone.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.rippletone.dao.AdminDao;
import com.virtusa.rippletone.model.Admin;

@Service
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	
  
	public void saveAdmin(Admin admin) {
		adminDao.saveAdmin(admin);
	}
    
	public Admin getAdminByIt(int id) {
	Admin admin=adminDao.getAdminByIt(id);
	return admin;
	}
    
	public void updateAdmin(Admin admin) {
		adminDao.updateAdmin(admin);
	}
   
	public List<Admin> getAllAdmin() {

		List<Admin> list = new ArrayList<Admin>();
		list = adminDao.getAllAdmin();
		return list;
	}
    
	public void deleteAdmin(int id) {
		adminDao.deleteAdmin(id);
	}
}
