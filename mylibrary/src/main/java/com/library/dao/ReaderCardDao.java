package com.library.dao;

import org.apache.ibatis.annotations.Param;

import com.library.bean.ReaderCard;
import com.library.bean.ReaderInfo;

public interface ReaderCardDao {

    public int getIdMatchCount(@Param("reader_id")final long reader_id, @Param("password")final String password);

    public ReaderCard findReaderByReaderId(final long reader_id);

    public int resetPassword(@Param("reader_id")final long reader_id, @Param("password")final String newPassword);

    public int addReaderCard(@Param("readerInfo")final ReaderInfo readerInfo, @Param("password")final String password);

    public String getPassword(final long reader_id);

    public int deleteReaderCard(final long reader_id);
}
