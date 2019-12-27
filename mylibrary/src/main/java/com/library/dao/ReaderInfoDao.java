package com.library.dao;

import com.library.bean.ReaderInfo;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface ReaderInfoDao {

    public ArrayList<ReaderInfo> getAllReaderInfo();

    public ReaderInfo findReaderInfoByReaderId(final long reader_id);

    public int deleteReaderInfo(final long reader_id);

    public int editReaderInfo(@Param("readerInfo")final ReaderInfo readerInfo);

    public int editReaderCard(@Param("readerInfo")final ReaderInfo readerInfo);

    public long addReaderInfo(@Param("readerInfo")final ReaderInfo readerInfo);
}
