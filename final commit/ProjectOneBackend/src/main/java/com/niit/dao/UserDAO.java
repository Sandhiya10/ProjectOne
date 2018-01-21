package com.niit.dao;

import java.util.List;


import com.niit.model.User;

public interface UserDAO {


	public void addUser(User user);
	
	public List<User> getAllUsers();
	
	public User getUser(String uname);
	
	public void deleteUser(String uname);
	
	public void updateUser(User user);
	
	public User getUserByEmailID(String email);
	
}
