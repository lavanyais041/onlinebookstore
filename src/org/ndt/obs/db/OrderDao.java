package org.ndt.obs.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.ndt.obs.entity.Order;
import org.ndt.obs.entity.OrderItem;
import org.ndt.obs.entity.User;

public class OrderDao 
{

	private static final String CREATE_SQL="insert into orders(username,totalprice) values(?,?)";
	private static final String CREATE_SQL1="insert into orderItem(orderID,bookisbn,booktitle,price) values(?,?,?,?)";
	 private static final String ORDER_SQL="select o.username,o.orderid,oi.bookisbn,oi.booktitle,oi.price,o.totalprice from orders o,orderitem oi where o.orderid=oi.orderId and o.username=?";
	
	public int insertOrder(Order orderVar)
	  {
		int flag=0;
		Connection conn = DBConnManager.geConnection();
	    PreparedStatement ps;
	    ResultSet rs;
	    int row=0;
		
		try 
		{
			ps = conn.prepareStatement(CREATE_SQL);
			ps.setString(1, orderVar.getUsername());
			ps.setFloat(2, orderVar.getTotalprice());
			row=ps.executeUpdate();
			rs=ps.getGeneratedKeys();
			if(row>0)
			{
				while(rs.next())
				{
					flag=rs.getInt(1);
					System.out.println("HAI");
		           System.out.println(flag);
				}
			}
			
		}
		
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	  
		return flag;
		
	  }
	
	public boolean insertOrderItem(OrderItem orderitemVar,int orderId)
	{
		boolean flag=false;
		Connection conn = DBConnManager.geConnection();
	    PreparedStatement ps;
	    
	    try 
		{
			ps = conn.prepareStatement(CREATE_SQL1);
			 ps.setInt(1, orderId);
			ps.setInt(2, orderitemVar.getBookIsbn());
			ps.setString(3, orderitemVar.getBookTitle());
			ps.setFloat(4, orderitemVar.getBookPrice());
			ps.executeUpdate();
			flag=true;
		}
		
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	  
		return flag;	
	}
	
	public List<Order> getuserorder(String username)
	{
		Connection conn=DBConnManager.geConnection();
		ResultSet rs=null;
		List<Order> orderList = new ArrayList<Order>();
		Order ord=null;
		boolean flag=false;
		try 
		{
			PreparedStatement ps=conn.prepareStatement(ORDER_SQL);
			ps.setString(1,username );
			rs=ps.executeQuery();
			while(rs!=null && rs.next())
			{
				String usrname=rs.getString(1);
				int orderid=rs.getInt(2);
				int bookisbn=rs.getInt(3);
				String booktitle=rs.getString(4);
				int bookprice=rs.getInt(5);
				int totalprice=rs.getInt(5);
				OrderItem i=new OrderItem(bookisbn, booktitle, bookprice);
				 ord=new Order(orderid, usrname, totalprice, i);
				 orderList.add(ord);
				 flag=true;
			}
			
		} 
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		return orderList;
		
	}
	/*public User authenticate(String username, String password) 
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
					
					String userName = rs.getString(1);
					String userpassword=rs.getString(2);
			    	String usermailid = rs.getString(3);
			    	String useraddress = rs.getString(4);
			    	String userphonenum=rs.getString(5);
					String userName = rs.getString(1);
			    	String usermailid = rs.getString(2);
			    	String doornum = rs.getString(3);
			    	String street = rs.getString(4);
			    	String city = rs.getString(5);
			    	String state = rs.getString(6);
			    	String pincode = rs.getString(7);
			    	String userphonenum=rs.getString(8);
			    	user=new User(userName, usermailid, doornum, street, city, state, pincode, userphonenum);
			    	user.setPassword(null);
			    	flag=true;
					
				}	
			} 
			
			catch (SQLException e) 
			{
		
				e.printStackTrace();
			}
			return user;
		}*/
	
	
	  /*public List<Book> listOfBook()
	  {
		    Book b1;
			Author a;
			List<Book> bookList = new ArrayList<Book>();
			
			String query = "select * from books b,authors a where b.bookisbn=a.bookisbn";
			
			Connection conn = DBConnectionManager.getConnection();
			
			   try
			{
				 PreparedStatement ps =  conn.prepareStatement(query);
				 ResultSet rs = ps.executeQuery();
				
				   while(rs!=null && rs.next())
				{
					int bookIsbn =rs.getInt(1);
					String bookTitle = rs.getString(2);
					String booksCategory=rs.getString(3);
					int numOfBooks=rs.getInt(4);
					String authorname=rs.getString(5);
					String authorMailId=rs.getString(6);
					
			        a=new Author(authorname, authorMailId);
			        b1=new Book(bookIsbn, bookTitle, booksCategory, numOfBooks, a);
			        
					bookList.add(b1);
					
				}
				   
				conn.close();
				
			} 
			   
			 catch (SQLException e)
			{
				
				e.printStackTrace();
			}
			
			return bookList;
			
		}*/
}
