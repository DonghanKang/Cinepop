package com.mp.cinepop.ticketing.screen_info.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScreenInfoViewServiceImpl implements ScreenInfoViewService {
	private ScreenInfoViewDAO siv;
	
	@Autowired
	public ScreenInfoViewServiceImpl(ScreenInfoViewDAO siv){
		this.siv=siv;
	}
	
	@Override
	public String[] cityList() {
		return siv.cityList();
	}

	@Override
	public String[] theaterList(String city) {
		return siv.theaterList(city);
	}

	@Override
	public String[] dateList(String theater){
		return siv.dateList(theater);
	}

	@Override
	public List<Map<String, Object>> movieList(String date, String theater) {
		return siv.movieList(date, theater);
	}

	@Override
	public ScreenInfoViewVO selectScreenInfo(int sNo) {
		return siv.selectScreenInfo(sNo);
	}
	
}
