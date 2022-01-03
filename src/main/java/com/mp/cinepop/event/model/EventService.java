package com.mp.cinepop.event.model;

import java.util.List;

import com.mp.cinepop.common.SearchVO;

public interface EventService {
	int insertEvent(EventVO vo);
	public List<EventVO>selectAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public EventVO selectByNo(int no);
	public int updateEvent(EventVO vo);
}
