package com.bus.booking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bus.booking.entities.User;
import com.bus.booking.repositories.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	private UserRepository userRepo; // to perform CRUD operation

	
	@RequestMapping("/showLoginPage")
	public String showLoginPage() {
		return "login/login";
	}
	
	@RequestMapping("/showReg")
	public String showReg() {
		return "login/showReg";
	}

	@RequestMapping("/saveReg")
	public String saveReg(@ModelAttribute("user") User user) {
		// all the data from the jsp page will store in the 'user' object

		// now we need to push all the data to the database
		userRepo.save(user);
		return "login/login"; //once it is saved, it will redirect us to login page
		// we have to built login page now
	}
	
	@RequestMapping("/verifyLogin")
	public String verifyLogin(
			@RequestParam("emailId") String emailId, 
			@RequestParam("password") String password, 
			ModelMap modelMap) {

		User user = userRepo.findByEmail(emailId);
		
		if(user!=null) {
			if (user.getEmail().equals(emailId) && user.getPassword().equals(password)) {
				return "findBus";
			} else {
				modelMap.addAttribute("error", "invalid username/password");
				return "login/login";
			}
		} else {
			modelMap.addAttribute("error", "invalid username/password");
			return "login/login";
		}
			
	}
	
	
	

}
