package org.ndt.obs.service;

import java.util.List;

import org.ndt.obs.db.BookDAO;
import org.ndt.obs.db.UserDAO;
import org.ndt.obs.entity.Book;
import org.ndt.obs.entity.User;

public class UserService 
{

	public static boolean create(User usr)
	{
		
		UserDAO dao=new UserDAO();
		return dao.insertUser(usr);
		
	}
	
	public static boolean login(String usrName,String usrPswd)
	{
		
		UserDAO dao=new UserDAO();
		return dao.loginUser(usrName, usrPswd);
		
	}
	
	public static List<User>  listUser()
	{
		UserDAO dao=new UserDAO();
		return dao.getAllUser();
		
		
	}

	public static List<User>  listUserByName(String UsrName)
	{
		UserDAO dao=new UserDAO();
		return dao.getUserByName(UsrName);
		
		
	}
	public static User userAthentucate(String username, String password) 
	{
		UserDAO dao=new UserDAO();
		return dao.authenticate(username, password);
	}
}
