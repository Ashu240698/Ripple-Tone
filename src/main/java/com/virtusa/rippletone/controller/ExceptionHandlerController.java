package com.virtusa.rippletone.controller;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.virtusa.rippletone.exceptions.MusicNotFoundException;

@ControllerAdvice
public class ExceptionHandlerController {
	
	@ExceptionHandler(MusicNotFoundException.class)
	public String handler(Model model) {
		model.addAttribute("errorMsg", "Music Not Found....Try again");
		return "exception";
	}
	
	@ExceptionHandler(DataIntegrityViolationException.class)
	public String primaryKeyExceptionHandler(Model model) {
		model.addAttribute("errorMsg", "Music already present");
		return "exception";
	}
}
