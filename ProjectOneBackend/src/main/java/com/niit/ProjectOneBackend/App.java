package com.niit.ProjectOneBackend;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfiguration;
import com.niit.dao.UserDAOImpl;
import com.niit.model.User;
import com.niit.service.UserService;
import com.niit.service.UserServiceImpl;

/**
 * Hello world!
 *
 */
public class App 
{
    
	public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
       
      
		ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,UserDAOImpl.class,UserServiceImpl.class);
        UserService userService=(UserService)context.getBean("userServiceImpl");
        User user=new User();
        user.setUsername("Tu");
        user.setFirstname("Test");
        user.setLastname("User");
        user.setEmail("tu@yahoo.com");
        user.setAddress("Somewhere");
        user.setPassword("tu");
        userService.addUser(user);
        List<User> ulist= userService.getAllUsers();
        for(User u : ulist)
        {
        	System.out.println(u.getUsername());
        }
        User users=userService.getUserByUserName("Tu");
        System.out.println(users.getUsername());
        System.out.println(users.getFirstname());
        System.out.println(users.getEmail());
        System.out.println(users.getAddress());
        userService.deleteUserByUserName("Tu");
        
}
}
