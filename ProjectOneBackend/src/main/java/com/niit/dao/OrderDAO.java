package com.niit.dao;

import java.util.List;
import org.springframework.stereotype.Repository;

import com.niit.model.OrderDetails;


@Repository("OrderDAO")
public interface OrderDAO {
	public void insertOrder(OrderDetails order);

	public List<OrderDetails> retrieveOrders(String username);

}
