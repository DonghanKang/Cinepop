package com.mp.cinepop.event.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mp.cinepop.common.SearchVO;

@Mapper
public interface EventDAO {
	public int insertEvent(EventVO vo);
	public List<EventVO>selectAll(SearchVO searchVo);
	public List<EventVO>selectAll2(EventVO eventvo);
	int selectTotalRecord(SearchVO searchVo);
	public EventVO selectByNo(int no);
	public int updateEvent(EventVO vo);
	public int deleteEvent(int no);
}
