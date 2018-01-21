 package com.niit.dao;
import java.util.List;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;

@Repository("CartDAO")
public interface CartDAO {
	
	
	public void insertCart(Cart cart);
	public Cart getCart(int citemid);
	public List<Cart> retrive(String username);
	public void removeCart(Cart cart);
	public void updateCart(Cart cart);
	public Cart getnCartID(String username);
	public void setQuantity(String username,String name,int qty,int caid);
	public void deletecitems(String username);
	
   	 
}