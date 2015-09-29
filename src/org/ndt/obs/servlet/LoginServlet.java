package org.ndt.obs.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ndt.obs.db.BookDAO;
import org.ndt.obs.entity.Book;
import org.ndt.obs.entity.Order;
import org.ndt.obs.entity.User;
import org.ndt.obs.service.BookService;
import org.ndt.obs.service.OrderService;
import org.ndt.obs.service.UserService;


public class LoginServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    
    public LoginServlet()
    {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String action = request.getParameter("ACTION");
		String message=null;
		
		RequestDispatcher rd = null;
		
		if("LOGIN".equals(action))
		{
			String usrName=request.getParameter("usrName");
			String usrPswd=request.getParameter("usrPswd");
			User usr=new User(usrName, usrPswd);
			if(UserService.login(usrName, usrPswd))
			{
				
				System.out.println("Sucess");
				 rd=request.getRequestDispatcher("searchtitle.jsp");
				rd.forward(request, response);
			}
			else
			{
			System.out.println("Unsuccessfull");	
			
			}
			
		}
		else if("LOGINUSER".equals(action))
		{
			String username=request.getParameter("usrName");
			String password=request.getParameter("usrPswd");
			String mess=null;
			
			
			User user=UserService.userAthentucate(username, password);
			
			if(user!=null)
			{
				
				HttpSession session=request.getSession(true);
				session.setAttribute("NAME",username );
				request.setAttribute("USER", user);
				mess="Login Successfuly";
				 rd=request.getRequestDispatcher("orderbooks.jsp");
				 rd.forward(request, response);
				
			}
			else
			{
				mess="user name or password is incorrect";
				rd=request.getRequestDispatcher("exit.jsp");
				
			}
			
	
			
		}
		else if("ORDER HISTORY".equals(action))
		{
			String usrName=request.getParameter("usrName");
			List<Order> odr=OrderService.usrOrder(usrName);
			if(odr!=null)
			{
				request.setAttribute("USERORDER", odr);
				rd=request.getRequestDispatcher("userorder.jsp");
				rd.forward(request, response);
			}
		}
		
		else if("REGISTER".equals(action))
		{
			String usrName=request.getParameter("username");
			String usrPswd=request.getParameter("password");
			String usrMailid=request.getParameter("email");
			String doornum=request.getParameter("doornum");
			String street=request.getParameter("street");
			String city=request.getParameter("city");
			String state=request.getParameter("state");
			String pincode=request.getParameter("pincode");
			String phonenum=request.getParameter("phNo");
			User usr=new User(usrName, usrPswd, usrMailid, doornum, street, city, state, pincode, phonenum);
			
			if(UserService.create(usr))
			{
				System.out.println("successfull");
				ArrayList<User> userList=(ArrayList<User>) UserService.listUserByName(usrName);		
				request.setAttribute("usrList", userList);
				System.out.println("llllll");
				rd=request.getRequestDispatcher("orderbook.jsp");
				rd.forward(request, response);
				
			}
			else
			{
				System.out.println("Not successfull");
			}
			
		}
		else if("SEARCH".equals(action))
		{		
		
			
			String title=request.getParameter("title");
			ArrayList<Book> bookList=(ArrayList<Book>) BookService.listbook(title);		
			request.setAttribute("BookList", bookList);
			 rd=request.getRequestDispatcher("searchBook.jsp");
			rd.forward(request, response);
		}
		
		/*rd.forward(request,response);*/
/*hello*/
		
	}
	
}
