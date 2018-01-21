package com.niit.dao;

import java.util.List;

import com.niit.model.Subscribe;



public interface SubscribeDAO {

	public boolean addSubscribe(Subscribe subcribe);
	public Subscribe getSubscribe(int subid);
	public List<Subscribe> retrieveSubscribe();
}
