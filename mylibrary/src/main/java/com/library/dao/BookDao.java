package com.library.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.library.bean.Book;

public interface BookDao {

    public int matchBook(final String searchWord);

    public ArrayList<Book> queryBook(final String searchWord);

    public ArrayList<Book> getAllBooks();

    public int addBook(@Param("book")final Book book);

    public Book getBook(final long bookId);

    public int editBook(@Param("book")final Book book);

    public int deleteBook(final long bookId);
}
