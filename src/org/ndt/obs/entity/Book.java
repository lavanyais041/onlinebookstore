package org.ndt.obs.entity;

public class Book 
{
	 private String bookIsbn;
	 private String bookTitle;
	 private String bookprice;
	 private Author author;
	 
	 
	 
	public Book(String bookIsbn, String bookTitle) {
		super();
		this.bookIsbn = bookIsbn;
		this.bookTitle = bookTitle;
	}

	public Book(String bookIsbn, String bookTitle, String bookprice) {
		super();
		this.bookIsbn = bookIsbn;
		this.bookTitle = bookTitle;
		this.bookprice = bookprice;
	}

	public Book(String bookIsbn, String bookTitle, String bookprice,Author author) 
	{
		super();
		this.bookIsbn = bookIsbn;
		this.bookTitle = bookTitle;
		this.bookprice = bookprice;
		this.author = author;
	}
	
	public String getBookIsbn() 
	{
		return bookIsbn;
	}
	
	public void setBookIsbn(String bookIsbn)
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
	
	public String getBookprice() 
	{
		return bookprice;
	}
	
	public void setBookprice(String bookprice) 
	{
		this.bookprice = bookprice;
	}
	
	public Author getAuthor()
	{
		return author;
	}
	
	public void setAuthor(Author author)
	{
		this.author = author;
	}
	 
}
