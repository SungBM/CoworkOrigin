package com.naver.cowork.mybatis.mapper;

import com.naver.cowork.domain.Calendar;
import com.naver.cowork.domain.EDMS;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface EDMSMapper {

    public List<EDMS> getMyDoc(String user_id);
    public List<EDMS> getMyDocApp(String user_id);

    public int getCountDoc(String user_id);

    public int getCountDocApp(String user_id);

}
