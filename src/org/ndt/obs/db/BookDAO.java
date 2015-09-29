package org.ndt.obs.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.ndt.obs.entity.Author;
import org.ndt.obs.entity.Book;

public class BookDAO 
{
	private static final String SELECT_SQL="select b.bookisbn,b.booktitle,b.bookprice,a.authorname,a.authormailid from books b,authors a where b.bookisbn=a.bookisbn and b.booktitle=?";
	
	public List<Book> getAllBook(String bkTitle)
	{
		Connection conn =DBConnManager.geConnection();
		List<Book> bookList=new ArrayList<Book>();
		PreparedStatement ps = null;
		Author a;
		try {
			ps = conn.prepareStatement(SELECT_SQL);
			ps.setString(1, bkTitle);
			ResultSet rs=ps.executeQuery();
			
			
			while(rs!= null && rs.next())
			{
				String bookisbn4 = rs.getString(1);
		    	String booktitle4 = rs.getString(2);
		    	String bookprice = rs.getString(3);
		    	
		    	String aname=rs.getString(4);
				String amail=rs.getString(5);
				
				a=new Author(aname, amail);
		    	 Book b=new Book(bookisbn4, booktitle4, bookprice,a);
		   
		    	bookList.add(b);
		     
			}
			
		} 
		
		catch (SQLException e)
		{
		
			e.printStackTrace();
		}
		
		
		return bookList;
		
	}
	
	
	
	
}
