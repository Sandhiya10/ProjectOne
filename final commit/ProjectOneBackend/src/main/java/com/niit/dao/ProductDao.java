package com.niit.dao;

import java.util.List;

import com.niit.model.Product;



public interface ProductDao {

	public boolean addProduct(Product product);
	public boolean updateProduct(Product product);
	public boolean deleteProduct(Product product);
	public Product getProduct(int productId);
	public List<Product> retrieveProduct();
	
	public Product getProductbyName(String Name);
	public Product setData(int productId,String productName,String productDesc,float price,float quantity);
 

	
}
