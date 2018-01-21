package com.niit.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	
	
	public void addUser(User user) {
		
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(user);
			trans.commit();
			session.flush();
			session.close();
		}
		
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
	}
	public List<User> getAllUsers()
	{
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from User");
		List<User> users=query.list();
		return users;
		
	}
	public User getUser(String uname) {
		
		Session session=sessionFactory.getCurrentSession();
		User SeletedUserByUserName =(User)session.get(User.class, uname);
		return SeletedUserByUserName;
		
	}
	public void deleteUser(String uname) {
	
		Session session=sessionFactory.getCurrentSession();
		session.delete(getUser(uname));
	}
	public void updateUser(User user) {
		
		Session session=sessionFactory.getCurrentSession();
		session.update(user);
		
	}
	public User getUserByEmailID(String email) {
		Session session=sessionFactory.getCurrentSession();
		User SeletedUserByemail =(User)session.get(User.class, email);
		return SeletedUserByemail;
	}
	

}

