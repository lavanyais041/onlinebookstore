package org.ndt.obs.servlet;

import org.ndt.obs.entity.Book;

public class BookOrder 
{

	private Book item;
	private int numItems;
	
	
	public BookOrder(Book item) 
	{
		setItem(item);
		setNumItems(numItems);
	}


	public Book getItem()
	{
		return item;
	}


	public void setItem(Book item) 
	{
		this.item = item;
	}


	public int getNumItems() 
	{
		return numItems;
	}


	public void setNumItems(int numItems) {
		this.numItems = numItems;
	}
	
	
	public String getBookIsbn()
	{
		return(getItem().getBookIsbn());
		
	}
	
	public String getBookTitle()
	{
		return(getItem().getBookTitle());
		
	}
	
	public String getBookPrice()
	{
		return(getItem().getBookprice());
		
	}
	
	public String getAuthorName()
	{
		return(getItem().getAuthor().getAuthorName());
		
	}
	
	public String getAuthorMailid()
	{
		return(getItem().getAuthor().getAuthorMailId());
		
	}
	
	public void incrementNumItems()
	{
		setNumItems(getNumItems()+1);
	}
	
	public void cancelorder()
	{
		setNumItems(0);
	}
	
	public double getTotalCost()
	{
		int bookPrc=Integer.parseInt(getBookPrice());
		return(getNumItems()*bookPrc);
		
	}
	
	public static Book getItem(String bkIsbn)
	{
		Book item;
		if(bkIsbn==null)
		{
			return null;
		}
		return null;
		
	}
	
	
}
