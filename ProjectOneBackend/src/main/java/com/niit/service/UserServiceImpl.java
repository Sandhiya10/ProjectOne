package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.User;
import com.niit.dao.UserDAO;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	
	@Autowired
	private UserDAO userDAO;
	public void addUser(User user){
			userDAO.addUser(user);

	}
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return userDAO.getAllUsers();
	}
	public User getUserByUserName(String uname) {
		// TODO Auto-generated method stub
		User user=userDAO.getUser(uname);
		return user;
	}
	public void deleteUserByUserName(String uname) {
		// TODO Auto-generated method stub
		userDAO.deleteUser(uname);
	}
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userDAO.updateUser(user);
		
	}
	public User getUserByEmailID(String email) {
		// TODO Auto-generated method stub
		userDAO.getUserByEmailID(email);
		return null;
	}
}
