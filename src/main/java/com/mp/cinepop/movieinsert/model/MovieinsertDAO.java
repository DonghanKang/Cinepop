package com.mp.cinepop.movieinsert.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MovieinsertDAO {
	int insertMovie(MovieinsertVO vo);
}
