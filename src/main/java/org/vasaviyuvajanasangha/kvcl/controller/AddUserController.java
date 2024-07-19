package org.vasaviyuvajanasangha.kvcl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.vasaviyuvajanasangha.kvcl.model.AppUser;
import org.vasaviyuvajanasangha.kvcl.service.AppUserServiceImpl;

@Controller
@SessionAttributes(names = {"name","username"})
public class AddUserController {

	@Autowired
	private AppUserServiceImpl appUserService;
	
	@GetMapping(path = "/register-user")
	public String registerUser(ModelMap model) {
		model.put("user", new AppUser());
		return "registerUser";
	}
	
	
	@PostMapping(path = "/register-user")
	public String registerUser(ModelMap model,AppUser user) {
		appUserService.saveAppUser(user);
		model.put("name", user.getUsername());
		model.put("username", user.getName());
		return "home";
	}
	
}
