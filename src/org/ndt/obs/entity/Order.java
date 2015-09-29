package org.ndt.obs.entity;

public class Order 
{

	private int orderId;
    private String username;
    private float totalprice;
    private OrderItem oritm;
    
    
	public Order(int orderId, String username, float totalprice, OrderItem oritm)
	{
		super();
		this.orderId = orderId;
		this.username = username;
		this.totalprice = totalprice;
		this.oritm = oritm;
	}


	public Order(int orderId, String username, float totalprice) 
	{
		super();
		this.orderId = orderId;
		this.username = username;
		this.totalprice = totalprice;
	}
	
	
	public Order(String username, float totalAmt) {
		super();
		this.username = username;
		this.totalprice = totalAmt;
	}


	public int getOrderId() 
	{
		return orderId;
	}
	public void setOrderId(int orderId)
	{
		this.orderId = orderId;
	}
	public String getUsername() 
	{
		return username;
	}
	public void setUsername(String username) 
	{
		this.username = username;
	}
	public float getTotalprice()
	{
		return totalprice;
	}
	public void setTotalprice(float totalprice) 
	{
		this.totalprice = totalprice;
	}


	public OrderItem getOritm() 
	{
		return oritm;
	}


	public void setOritm(OrderItem oritm) 
	{
		this.oritm = oritm;
	}
	
		
}
