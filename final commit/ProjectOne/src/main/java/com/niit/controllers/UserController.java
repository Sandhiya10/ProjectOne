package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDAO;
import com.niit.model.User;
import com.niit.service.UserService;

@Controller
public class UserController {

	
	@Autowired
	UserService userservice;
	
	
	@RequestMapping(value="register", method=RequestMethod.GET)
	public ModelAndView sendregister(@ModelAttribute("user")User user)
	{
		ModelAndView mv=new ModelAndView("RegisterPage");
		return mv;
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public ModelAndView getUser(User user)
	{
		
		userservice.addUser(user);
		ModelAndView mv=new ModelAndView("login","user",new User());
		return mv;		
		
	}
	@RequestMapping(value="loginpage", method=RequestMethod.POST)
	public ModelAndView validateUser(User user)
	{
		
	User users=	userservice.getUserByEmailID(user.getEmail());

	if(users==null)
	{
		ModelAndView mv=new ModelAndView("Failure","user",new User());
		return mv;
	}
	else
	{
		if(users.getPassword()== user.getPassword()){
		ModelAndView mv=new ModelAndView("Sucess","user",new User());
		return mv;}
		else
		{ModelAndView mv=new ModelAndView("Failure","user",new User());
		return mv;}
	}
		
	}
	@RequestMapping(value="login", method=RequestMethod.GET)
	public ModelAndView validatedUser(@ModelAttribute("user")User user)
	{
		ModelAndView mv=new ModelAndView("login","user",new User());
		return mv;
	}
	
	@RequestMapping("all/user/getallusers")
	public String getAllUsers(Model model)
	{
		List<User> userlist=userservice.getAllUsers();
		model.addAttribute("userlists", userlist);
		return "userslist";
	}
	
	
	}

