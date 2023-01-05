package com.DAO;

import java.util.ArrayList;
import java.util.List;

import com.entity.BookDtls;

public interface BookDAO {
    public boolean addBooks(BookDtls b);
     
    public List<BookDtls> getAllBooks();
    
    public BookDtls getBookById(int id);
    
    public boolean updateEditBooks(BookDtls b);
    
    public boolean deleteBooks(int id);
    
    public List<BookDtls> getTyp1Book();
		
    public List<BookDtls> getRecentBooks();
    
    public List<BookDtls> getTyp2Books();
    
    public List<BookDtls> getVipBooks();
    
    public List<BookDtls> getAllRecentBook();
    
    public List<BookDtls> getAllNewBook();
    
    public List<BookDtls> getAllOldBook();
    
    public List<BookDtls> getBookByOld(String email,String cate);
    
    public boolean oldBookDelete(String email,String cat,int id);
  
    public List<BookDtls> getBookBySearch(String ch);
   
	}
    
    

