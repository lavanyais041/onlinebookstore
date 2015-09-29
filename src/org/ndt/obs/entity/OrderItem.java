package org.ndt.obs.entity;

public class OrderItem
{

	private int ordersId;
    private int bookIsbn;
    private String bookTitle;
    private float bookPrice;
    
	public OrderItem(int bookIsbn, String bookTitle, float bookPrice)
	{
		super();
		this.bookIsbn = bookIsbn;
		this.bookTitle = bookTitle;
		this.bookPrice = bookPrice;
	}
	
	public OrderItem(int ordersId, int bookIsbn, String bookTitle,float bookPrice) 
	{
		super();
		this.ordersId = ordersId;
		this.bookIsbn = bookIsbn;
		this.bookTitle = bookTitle;
		this.bookPrice = bookPrice;
	}
	public int getOrdersId() 
	{
		return ordersId;
	}
	public void setOrdersId(int ordersId) 
	{
		this.ordersId = ordersId;
	}
	public int getBookIsbn()
	{
		return bookIsbn;
	}
	public void setBookIsbn(int bookIsbn) 
	{
		this.bookIsbn = bookIsbn;
	}
	public String getBookTitle() 
	{
		return bookTitle;
	}
	public void setBookTitle(String bookTitle) 
	{
		this.bookTitle = bookTitle;
	}
	public float getBookPrice() 
	{
		return bookPrice;
	}
	public void setBookPrice(float bookPrice)
	{
		this.bookPrice = bookPrice;
	}
    
}
