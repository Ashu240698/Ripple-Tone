package com.virtusa.rippletone.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.virtusa.rippletone.exceptions.MusicNotFoundException;
import com.virtusa.rippletone.model.Admin;
import com.virtusa.rippletone.model.MusicModel;
import com.virtusa.rippletone.model.User;
import com.virtusa.rippletone.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService service;

	public UserController() {
		System.out.println("User Controller Start");
	}
	
	@RequestMapping("payment")
	public String payment() {
		return "payment";
	}
	
	
	@RequestMapping("/")
	public String welcome() {
		return "welcome";
	}

	@RequestMapping("/welcome")
	public String welcomee() {
		return "welcome";
	}

	@RequestMapping("/login")
	public String login(@ModelAttribute("user") User login, Model model) {
		return "login";
	}

	@RequestMapping("/signup")
	public String signup(@ModelAttribute("user") User user, Model m) {
		m.addAttribute("command", new User());
		return "signup";
	}

	@RequestMapping(path = "/signupProcess", method = RequestMethod.POST)
	public String signupValidate(Model model, @Valid @ModelAttribute("user") User user, Errors error) {
		if (error.hasErrors()) {
			return "signup";
		} else {
			for (User userlist : service.getAllUser()) {
				if (user.getUserEmail().equals(userlist.getUserEmail())) {
					System.out.println("same");
					model.addAttribute("userexist", "Email is Alrady Exist");
					return "signup";
				} else {
					service.save(user);
				}
			}
		}
		return "login";
	}

	@RequestMapping(path = "/loginProcess", method = RequestMethod.GET)
	public String loginValidate(Model model, @Valid @ModelAttribute("user") User user, Errors error, HttpSession session, RedirectAttributes rd) {

		for (User userlist : service.getAllUser()) {
			if (user.getUserEmail().equals(userlist.getUserEmail())) {
				if (user.getUserPassword().equals(userlist.getUserPassword())) {
					session.setAttribute("user", user);
					model.addAttribute("userName", userlist.getUserName());
					rd.addAttribute("userName", userlist.getUserName());
					return "redirect:/y";
				} else if (user.getUserPassword() != userlist.getUserPassword()) {
					model.addAttribute("passwordwrong", "Incorrect Password");
					return "login";
				}
			}
		}
		for (User userlist : service.getAllUser()) {
			if (user.getUserEmail() != userlist.getUserEmail()) {
				model.addAttribute("usernotfound", "User Not Found");
				return "login";
			}
		}

		return "login";
	}
	
	@RequestMapping("/y")
	public String dummy(@ModelAttribute("admin") Admin admin, @RequestParam String userName, Model model) {
		model.addAttribute("userName", userName);
		return "userTemp";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		session.removeAttribute("user");
		session.invalidate();
		return "redirect:/welcome";
	}

}
