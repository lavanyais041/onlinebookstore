package org.ndt.obs.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ndt.obs.entity.Cart;
import org.ndt.obs.entity.CartItem;


public class NewCartServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    
    public NewCartServlet() 
    {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		String action=request.getParameter("ACTION");
		
	      HttpSession session = request.getSession(true);
	      Cart cart;
	    
	      synchronized (session) 
	      {  
	         cart = (Cart) session.getAttribute("cart");
	         if (cart == null)
	         {  
	            cart = new Cart();
	            session.setAttribute("cart", cart);  
	         }
	      }
	      

	      	    if (action.equals("add")|| action.equals("remove") )
	      	    {
	    	  
	      	
	            
	      	    String hid=request.getParameter("isbn");
	      	    String hprice=request.getParameter("price");
	            String title=request.getParameter("title");
	            
	            
	            int id=0;
	            float price=0;
	            if(hprice!=null)
	      		{
	            	
	      			price=Float.parseFloat(hprice);
	      		}
	      		if(hid!=null)
	      		{
	      			
	      			id=Integer.parseInt(hid);
	      		}
	      		
	            CartItem item=new CartItem(id, title, price);
	            
			      if (action.equals("add"))
			      {
			    	  cart.add(item);
			      }
			      else if(action.equals("remove"))
			      {
			    	  int hisbn=Integer.parseInt(request.getParameter("hdnid"));
			    	 
			    	  cart.remove(hisbn);
			      }
			    
	            
	            RequestDispatcher rd=request.getRequestDispatcher("cart.jsp");
				rd.forward(request, response);
	      }
	}
}
