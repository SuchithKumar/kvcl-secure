package org.vasaviyuvajanasangha.kvcl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {
	
	
	@GetMapping(path = {"/home"})
	public String home() {
		return "home";
	}
	
	@GetMapping(path = {"/login"})
	public String login() {
		return "loginJsp";
	}
	
	
	@GetMapping(path = {"/admin-home"})
	public String adminHome() {
		return "adminHome";
	}
	
	@GetMapping(path = "/logout-success")
	public String logoutSuccess() {
		return "redirect:home";
	
	}
	
	
}
