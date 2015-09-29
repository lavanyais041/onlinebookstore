package org.ndt.obs.service;

import java.util.List;

import org.ndt.obs.db.OrderDao;
import org.ndt.obs.db.UserDAO;
import org.ndt.obs.entity.Order;
import org.ndt.obs.entity.OrderItem;
import org.ndt.obs.entity.User;


public class OrderService 
{

	public static int createOrder(Order order)
	{
		
		OrderDao dao=new OrderDao();
		return dao.insertOrder(order);
		
	}
	
	public static boolean createOrderItem(OrderItem orderitem,int orderId)
	{
		
		OrderDao dao=new OrderDao();
		return dao.insertOrderItem(orderitem, orderId);
		
	}
	
	/*public static User userAthentucate(String username, String password) 
	{
		UserDAO dao=new UserDAO();
		return dao.authenticate(username, password);
	}*/
	
	public static List<Order> usrOrder(String username) 
	{
		
		OrderDao dao=new OrderDao();
		return dao.getuserorder(username);
		
	}
	
}
