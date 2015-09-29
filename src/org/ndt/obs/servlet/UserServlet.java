package org.ndt.obs.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ndt.obs.entity.Book;
import org.ndt.obs.entity.User;
import org.ndt.obs.service.BookService;
import org.ndt.obs.service.UserService;

public class UserServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
   
    public UserServlet()
    {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		ArrayList<User> usrList=(ArrayList<User>) UserService.listUser();	
		request.setAttribute("usrList", usrList);
		String title=request.getParameter("title");
		ArrayList<Book> bookList=(ArrayList<Book>) BookService.listbook(title);		
		request.setAttribute("BookList", bookList);
		RequestDispatcher rd=request.getRequestDispatcher("order.jsp");
		rd.forward(request, response);
		
	}

}
