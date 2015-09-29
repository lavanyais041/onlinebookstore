package org.ndt.obs.db;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.ndt.obs.entity.Author;
import org.ndt.obs.entity.Book;
import org.ndt.obs.entity.User;

public class UserDAO 
{
	private static final String SELECT_SQL="select u.username,u.mailid,u.doorNum,u.street,u.city,u.state,u.pincode,u.phonenum from  bookuser u";
	private static final String SELECT_SQL1="select u.username,u.mailid,u.doorNum,u.street,u.city,u.state,u.pincode,u.phonenum from  bookuser u where u.username=?";
	private static final String SELECT_SQL2="select u.username,u.mailid,u.doorNum,u.street,u.city,u.state,u.pincode,u.phonenum from bookuser u where u.username=? and u.password=?";
	public boolean insertUser(User usrVar)
	  {
		  boolean flag=false;
		  String CREATE_SQL="insert into  bookuser(username,password,mailid,doorNum,street,city,state,pincode,phonenum) values(?,?,?,?,?,?,?,?,?)";
		  Connection conn = DBConnManager.geConnection();
		  PreparedStatement ps;
		  
		  
			try 
			{
				ps = conn.prepareStatement(CREATE_SQL);
				ps.setString(1, usrVar.getUserName());
				ps.setString(2, usrVar.getPassword());
				ps.setString(3, usrVar.getMailId());
				ps.setString(4, usrVar.getDoornum());
				ps.setString(5, usrVar.getStreet());
				ps.setString(6, usrVar.getCity());
				ps.setString(7, usrVar.getState());
				ps.setString(8, usrVar.getPincode());
				ps.setString(9, usrVar.getPhonenum());
				ps.executeUpdate();
				flag=true;
			}
			
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		  
			return flag;
		  
	  }
	  
	  
	   public boolean loginUser(String userName,String userPswd) 
	   {
			String query = "select u.username,u.password,u.mailid  from  bookuser u where u.username=?  and  u.password=?";
			
			Connection conn = DBConnManager.geConnection();
			
			PreparedStatement ps;
			try
			{
				ps = conn.prepareStatement(query);
				ps.setString(1, userName);
				ps.setString(2, userPswd);
				ResultSet rs = ps.executeQuery();
				if(rs!=null && rs.next())
				{
					conn.close();
					return true;
				}
				else
				{
					return false;
				}
			}
			
			catch (SQLException e) 
			{
				e.printStackTrace();
				return false;
			}
			
			 
	   }
	   
	   public List<User> getAllUser()
		{
			Connection conn =DBConnManager.geConnection();
			List<User> userList=new ArrayList<User>();
			PreparedStatement ps = null;
			
			try {
				ps = conn.prepareStatement(SELECT_SQL);
				
				ResultSet rs=ps.executeQuery();
				
				
				while(rs!= null && rs.next())
				{
					String userName = rs.getString(1);
			    	String usermailid = rs.getString(2);
			    	String doornum = rs.getString(3);
			    	String street = rs.getString(4);
			    	String city = rs.getString(5);
			    	String state = rs.getString(6);
			    	String pincode = rs.getString(7);
			    	String userphonenum=rs.getString(8);
			    	
			    	User usr=new User(userName, usermailid, doornum, street, city, state, pincode, userphonenum);
			    	userList.add(usr);
			    	
				}
				conn.close();
			} 
			
			catch (SQLException e)
			{
			
				e.printStackTrace();
			}
			
			return userList;
			
		}
	   
	   public List<User> getUserByName(String usrName)
		{
			Connection conn =DBConnManager.geConnection();
			List<User> userList=new ArrayList<User>();
			PreparedStatement ps = null;
			
			try {
				ps = conn.prepareStatement(SELECT_SQL1);
				ps.setString(1,usrName);
				ResultSet rs=ps.executeQuery();
				
				
				while(rs!= null && rs.next())
				{
					String userName = rs.getString(1);
			    	String usermailid = rs.getString(2);
			    	String doornum = rs.getString(3);
			    	String street = rs.getString(4);
			    	String city = rs.getString(5);
			    	String state = rs.getString(6);
			    	String pincode = rs.getString(7);
			    	String userphonenum=rs.getString(8);
					/*String userName = rs.getString(1);
			    	String usermailid = rs.getString(2);
			    	String useraddress = rs.getString(3);
			    	String userphonenum=rs.getString(4);*/
			    	
			    	User usr=new User(userName, usermailid, doornum, street, city, state, pincode, userphonenum);
			    	userList.add(usr);
			    	
				}
				conn.close();
			} 
			
			catch (SQLException e)
			{
			
				e.printStackTrace();
			}
			
			return userList;
			
		}
	   
	   public User authenticate(String username, String password) 
	   {
			
			Connection conn=DBConnManager.geConnection();
			ResultSet rs=null;
			User user=null;
			boolean flag=false;
			try {
				
				PreparedStatement ps=conn.prepareStatement(SELECT_SQL2);
				ps.setString(1,username );
				ps.setString(2,password);
				rs=ps.executeQuery();
			
				if(rs!=null && rs.next())
				{
					
					/*String userName = rs.getString(1);
					String userpassword=rs.getString(2);
			    	String usermailid = rs.getString(3);
			    	String useraddress = rs.getString(4);
			    	String userphonenum=rs.getString(5);*/
					String userName = rs.getString(1);
			    	String usermailid = rs.getString(2);
			    	String doornum = rs.getString(3);
			    	String street = rs.getString(4);
			    	String city = rs.getString(5);
			    	String state = rs.getString(6);
			    	String pincode = rs.getString(7);
			    	String userphonenum=rs.getString(8);
			    	user=new User(userName, usermailid, doornum, street, city, state, pincode, userphonenum);
			    	/*user.setPassword(null);*/
			    	flag=true;
					
				}	
			} 
			
			catch (SQLException e) 
			{
		
				e.printStackTrace();
			}
			return user;
		}
}
