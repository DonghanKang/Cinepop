package com.mp.cinepop.ticketing.screen_info.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ScreenInfoViewDAO {
	String[] cityList();
	String[] theaterList(String city);
	String[] dateList(String theater);
	List<Map<String, Object>> movieList(String date,String theater);
	ScreenInfoViewVO selectScreenInfo(int sNo);
}
