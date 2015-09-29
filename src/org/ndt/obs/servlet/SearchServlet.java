package org.ndt.obs.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ndt.obs.entity.Book;
import org.ndt.obs.service.BookService;


public class SearchServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
   
    public SearchServlet() 
    {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		RequestDispatcher rd;
		String mess=null;
		mess="Please enter the valid value for title";
		String title=null;
		title=request.getParameter("title");
		ArrayList<Book> bookList=(ArrayList<Book>) BookService.listbook(title);		
		if(bookList.size()==0)
		{		
		
		 request.setAttribute("MESSAGE", mess);
		 rd=request.getRequestDispatcher("welcome.jsp");
		
	}
		else
		{
			request.setAttribute("BookList", bookList);
			 rd=request.getRequestDispatcher("search.jsp");
			
		}
		
		rd.forward(request, response);
	}
	
}
