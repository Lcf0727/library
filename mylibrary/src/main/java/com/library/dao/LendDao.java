package com.library.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.library.bean.Lend;

public interface LendDao {

    public int returnBookOne(@Param("book_id")final long book_id, @Param("reader_id")long reader_id);

    public int returnBookTwo(final long book_id);
    
    public int lendBookOne(@Param("book_id")final long book_id, @Param("reader_id")final long reader_id);
    
    public int lendBookTwo(final long book_id);

    public ArrayList<Lend> lendList();

    public ArrayList<Lend> myLendList(final long reader_id);

    public int deleteLend(final long ser_num);
}
