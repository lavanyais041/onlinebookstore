package org.ndt.obs.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ndt.obs.entity.Cart;
import org.ndt.obs.entity.CartItem;
import org.ndt.obs.entity.Order;
import org.ndt.obs.entity.OrderItem;
import org.ndt.obs.service.OrderService;

/**
 * Servlet implementation class OrderServlet
 */
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public OrderServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session=request.getSession(true);
		Cart cart=(Cart) session.getAttribute("cart");
		List<CartItem> itemList=cart.getItems();
		RequestDispatcher rd = null;
	    System.out.println(itemList);
		String username=request.getParameter("username");
		
		String mess=null;
		int isbn=0;
		float price=0;
		String title=null;
		
		float totalAmt=Float.parseFloat(request.getParameter("totalAmt"));
		
		Order order=new Order(username, totalAmt);
		int ordervar=OrderService.createOrder(order);
		
		System.out.println("hello");
		if(ordervar!=0)
		{
			System.out.println("order confirmed");
			for(CartItem item:itemList)
			{
				title=item.getTitle();
				System.out.println(title);
				isbn=item.getIsbn();
				price=item.getPrice();
				OrderItem orderitem=new OrderItem(isbn, title, price);
				
				if(OrderService.createOrderItem(orderitem, ordervar))
				{
					System.out.println("Itemorder confirmed");
					mess="Your Order Confirmed and your oder ID is: "+ordervar;
					System.out.println(ordervar);
					
					request.setAttribute("MESSAGE", mess);
					rd=request.getRequestDispatcher("exit.jsp");
					/*rd.forward(request,response);*/
				}
				else
				{
					System.out.println("Itemorder failed");
				}
			}
			cart.clear();
		}
		else
		{
			System.out.println("order failed");
		}
		
		rd.forward(request,response);
		
	}
	}


