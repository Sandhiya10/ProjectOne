package com.niit.controllers;




import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDAO;
import com.niit.model.User;



@Controller
public class RegisterController {

	@Autowired
	 UserDAO registerDao;
	
	@RequestMapping(value="AddRegister",method=RequestMethod.POST)
	public String addRegister(@ModelAttribute("register")User register,Model m)
	{
		System.out.println(register);
		registerDao.addUser(register);
		
		List<User> listRegister=registerDao.getAllUsers();
		m.addAttribute("registerList",listRegister);
		
		return "redirect:/login";
	}
	
	@RequestMapping("/register")
	public String Showregister(Model m)
	{
		User register=new User();
		m.addAttribute(register);
		
		List<User> listRegister=registerDao.getAllUsers();
		m.addAttribute("registerList",listRegister);
		return "register";
	}
	
	@RequestMapping("/loginf")
	public String Showfailure()
	{
		
		return "loginf";
	}
	
	@RequestMapping("/login_success")
	public ModelAndView loginSuccess(HttpSession session, Model m) {
		
		String page = null;
		
		boolean loggedIn = true;
		// Retrieving the userId;
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		session.setAttribute("username", username);
		session.setAttribute("loggedIn", loggedIn);
		
		// Retrieving the role
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		
		String role="Role_User";
		for (GrantedAuthority authority:authorities) 
		{
		 System.out.println(authority.getAuthority());
		     if (authority.getAuthority().equals(role)) 
		     {
		    	 session.setAttribute("UserLoggedIn", "true");
		    	 session.setAttribute("username", username);
		    	 m.addAttribute("role",authority.getAuthority());
		    	 session.setAttribute("role", authority.getAuthority());
		    	 System.out.println(authority.getAuthority());
		    	 page="userhome";		    	 
		    	 break;
		     }
		     else 
		     {
		    	 session.setAttribute("LoggedIn", "true");
		    	 session.setAttribute("Administrator", "true");
		    	 m.addAttribute("role",authority.getAuthority());
		    	 session.setAttribute("role", authority.getAuthority());
		    	 page="adminhome";
		    	 break;
		    }
		} 
		
		return new ModelAndView(page,"username",username);
		
	}
	
	@RequestMapping(value="/perform_logout")
	public ModelAndView logout(HttpServletRequest request,HttpSession session)
	{
		System.out.println("Logout page");
		session.invalidate();
		//session=request.getSession(true);
		System.out.println("Log Out Successfull");
		
		return new ModelAndView("redirect:/home");
	}
	
	
	
} 

		
		
		
		
		
		
		