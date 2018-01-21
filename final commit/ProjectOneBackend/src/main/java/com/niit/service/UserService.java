package com.niit.service;

import java.util.List;

import com.niit.model.User;

public interface UserService {


	public void addUser(User user);
	List<User> getAllUsers();
	public User getUserByUserName(String uname);
	public void deleteUserByUserName(String uname);
	public void updateUser(User user);
	public User getUserByEmailID(String email);
}