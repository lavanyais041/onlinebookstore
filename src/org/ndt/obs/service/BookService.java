package org.ndt.obs.service;

import java.util.List;

import org.ndt.obs.db.BookDAO;
import org.ndt.obs.entity.Book;

public class BookService
{

	public static List<Book>  listbook(String bktitle)
	{
		BookDAO dao=new BookDAO();
		return dao.getAllBook(bktitle);
		
		
	}
	
	
}
