package com.virtusa.rippletone.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.virtusa.rippletone.model.Admin;
import com.virtusa.rippletone.model.User;
import com.virtusa.rippletone.service.AdminService;
import com.virtusa.rippletone.service.UserService;

@Controller
public class AdminController {

	@Autowired
	private UserService service;

	@Autowired
	private AdminService adminService;

	/*
	 * 
	 * 
	 * Admin Login And Admin Login Validation
	 * 
	 * 
	 */
	@RequestMapping("/adminlogin")
	public String login(@ModelAttribute("admin") Admin admin) {
		return "adminlogin";
	}

	@RequestMapping("/adminProcess")
	public String adminvalidate(Model model, @Valid @ModelAttribute("admin") Admin admin, BindingResult br, HttpSession session, RedirectAttributes rd) {

		for (Admin adminlist : adminService.getAllAdmin()) {
			if (admin.getAdminEmail().equals(adminlist.getAdminEmail())) {
				if (admin.getAdminPassword().equals(adminlist.getAdminPassword())) {
					session.setAttribute("admin", admin);
					model.addAttribute("adminName", adminlist.getAdminName());
					rd.addAttribute("adminName", adminlist.getAdminName());
					return "redirect:/l";
				} else if (admin.getAdminPassword() != adminlist.getAdminPassword()) {
					model.addAttribute("passwordwrong", "Incorrect Password");
					return "adminlogin";
				}
			}
		}
		for (Admin adminlist : adminService.getAllAdmin()) {
			if (admin.getAdminEmail() != adminlist.getAdminEmail()) {
				model.addAttribute("adminnotfound", "Admin Not Found");
				return "adminlogin";
			}
		}
		return "adminlogin";
	}
	
	@RequestMapping("/l")
	public String dummy(@ModelAttribute("admin") Admin admin, @RequestParam String adminName, Model model) {
		model.addAttribute("adminName", adminName);
		return "adminhome";
	}
	
	@RequestMapping("/logoutadmin")
	public String logoutAdmin(HttpSession session) {
		
		session.removeAttribute("admin");
		session.invalidate();
		return "redirect:/welcome";
	}

	/*
	 * 
	 * 
	 * Admin Signup And Admin Signup Validation
	 * 
	 * 
	 */
	@RequestMapping("/adminsignup")
	public String adminSignup(Model m, @ModelAttribute("admin") Admin admin) {
		m.addAttribute("command", new Admin());
		return "adminsignup";
	}

	@RequestMapping(path = "/adminsignup", method = RequestMethod.POST)
	public String adminSignupValidate(Model model, @Valid @ModelAttribute("admin") Admin admin, Errors error) {
		if (error.hasErrors()) {
			return "adminsignup";
		} else {
			for (Admin adminlist : adminService.getAllAdmin()) {
				if (admin.getAdminEmail().equals(adminlist.getAdminEmail())) {
					model.addAttribute("userexist", "Email is Alrady Exist");
					return "adminsignup";
				} else {
					adminService.saveAdmin(admin);
				}
			}
		}
		System.out.println("return");
		return "adminlogin";
	}
	/*
	 * 
	 * Admin Home
	 * 
	 */

	@RequestMapping("/adminhome")
	public String adminHome(@ModelAttribute("admin") Admin admin) {
		return "adminhome";
	}

	/*
	 * 
	 * 
	 * View Admin List in Admin Home
	 * 
	 * 
	 */
	@RequestMapping(path = "/viewadmin", method = RequestMethod.GET)
	public String viewAdmin(Model m) {
		List<Admin> list = adminService.getAllAdmin();
		System.out.println(list);
		m.addAttribute("list", list);
		return "viewadmin";
	}
	/*
	 * 
	 * 
	 * Delete Admin List in Admin Home
	 * 
	 * 
	 */

	@RequestMapping(value = "deleteadmin/{id}", method = RequestMethod.GET)
	public String deleteAdmin(@PathVariable int id) {
		for (Admin adminlist : adminService.getAllAdmin()) {
			if (id == adminlist.getAdminId()) {
				adminService.deleteAdmin(id);
			}
		}
		return "redirect:/viewadmin";
	}

	/*
	 * 
	 * 
	 * View User List in Admin Home
	 * 
	 * 
	 */
	@RequestMapping(path = "/viewuser", method = RequestMethod.GET)
	public String viewuser(Model m) {
		List<User> list = service.getAllUser();
		m.addAttribute("list", list);
		return "viewuser";
	}
	/*
	 * 
	 * 
	 * Delete User List in Admin Home
	 * 
	 * 
	 */

	@RequestMapping(value = "deleteuser/{id}", method = RequestMethod.GET)
	public String deleteUser(@PathVariable int id) {
		for (User userlist : service.getAllUser()) {
			if (id == userlist.getUserId()) {
				service.delete(id);
			}
		}
		return "redirect:/viewuser";
	}

	/*
	 * 
	 * 
	 * Edit User Details Inside Admin Home
	 * 
	 * 
	 */
	@RequestMapping(value = "edituser/{userid}/edit")
	public String editUser(Model model, @ModelAttribute("user") User user, @PathVariable int userid) {
		model.addAttribute("user", user);
		for (User userlist : service.getAllUser()) {
			if (userid == userlist.getUserId()) {
		        model.addAttribute("email", userlist.getUserEmail());
		        model.addAttribute("name", userlist.getUserName());
		        model.addAttribute("password", userlist.getUserPassword());
		        model.addAttribute("contact", userlist.getUserContact());
				model.addAttribute("id", userid);

			}
		}
		return "edituser";
	}

	@RequestMapping(value = "edituser/{id}/editsave")
	public String editSaveUser(Model model, @PathVariable int id, @Valid @ModelAttribute("user") User user,
			Errors error) {

		if (error.hasErrors()) {
			System.out.println(error.getErrorCount());
			return "edituser";
		} else {
			for (User userlist : service.getAllUser()) {
				if (user.getUserContact().equals(userlist.getUserContact())) {
					model.addAttribute("contactexist", "Contact is Already Exist");
					return "edituser";
				} else if (user.getUserContact() != userlist.getUserContact()) {
					service.update(user);
				}
			}
		}
		return "redirect:/viewuser";
	}
	/*
	 * 
	 * 
	 * Edit Admin Details Inside Admin Home
	 * 
	 * 
	 */

	@RequestMapping(value = "editadmin/{id}/edit")
	public String editAdmin(Model model, @ModelAttribute("admin") Admin admin, @PathVariable int id) {
		model.addAttribute("id", id);
		for (Admin adminlist : adminService.getAllAdmin()) {
			if (id == adminlist.getAdminId()) {
		        model.addAttribute("email", adminlist.getAdminEmail());
		        model.addAttribute("name", adminlist.getAdminName());
		        model.addAttribute("password", adminlist.getAdminPassword());
		        model.addAttribute("contact", adminlist.getAdminContact());
				model.addAttribute("id", id);

			}
		}
		return "editadmin";
	}

	@RequestMapping(value = "editadmin/{id}/admineditsave")
	public String editSaveAdmin(Model model, @PathVariable int id, @Valid @ModelAttribute("admin") Admin admin,
			Errors error) {
		if (error.hasErrors()) {
			System.out.println(error.getErrorCount());
			return "editadmin";
		} else {
			for (Admin adminList : adminService.getAllAdmin()) {
				if (admin.getAdminContact().equals(adminList.getAdminContact())) {
					model.addAttribute("contactexist", "Contact is Already Exist");
					return "editadmin";
				} else if (admin.getAdminContact() != adminList.getAdminContact()) {
					adminService.updateAdmin(admin);
				}
			}
				}
		return "redirect:/viewadmin";
	}

	/*
	 * 
	 * Adding User form Admin Home
	 * 
	 */

	@RequestMapping("/adduser")
	public String signup(@ModelAttribute("user") User user, Model m) {
		m.addAttribute("command", new User());
		return "adduser";
	}

	@RequestMapping(path = "/adduserprocess", method = RequestMethod.POST)
	public String signupValidate(Model model, @Valid @ModelAttribute("user") User user, Errors error) {
		if (error.hasErrors()) {
			return "adduser";
		} else {
			for (User userlist : service.getAllUser()) {
				if (user.getUserEmail().equals(userlist.getUserEmail())) {
					model.addAttribute("userexist", "Email is Alrady Exist");
					return "adduser";
				} else {
						if (user.getUserContact().equals(userlist.getUserContact())) {
							model.addAttribute("contactexist", "Contact is Already Exist");
							return "adduser";
						} else if (user.getUserContact() != userlist.getUserContact()) {
							service.save(user);
						}
					}
					
			}
		}
		return "redirect:/viewuser";
	}
}