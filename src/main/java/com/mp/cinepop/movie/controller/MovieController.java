package com.mp.cinepop.movie.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mp.cinepop.common.PaginationInfo;
import com.mp.cinepop.common.SearchVO;
import com.mp.cinepop.movie.model.MovieService;
import com.mp.cinepop.movie.model.MovieVO;

@Controller
@RequestMapping("/movie")
public class MovieController {
	private static final Logger logger
	=LoggerFactory.getLogger(MovieController.class);
	
	private final MovieService movieService;

	public MovieController(MovieService movieService) {
		this.movieService = movieService;
		logger.info("MovieService DI - Setter 생성자 주입");
	}
	
	@RequestMapping("/movieChart")
	public String list(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("영화목록 파라미터 searchVo={}", searchVo);
				
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(10);
		pagingInfo.setRecordCountPerPage(12);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setRecordCountPerPage(12);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);
		
		List<MovieVO> list=movieService.movieSelectAll(searchVo);
		logger.info("전체조회 결과 list.size={}", list.size());
		
		int totalRecord=movieService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "movie/movieChart";
	}
	
	@RequestMapping("/movieDetail")
	public String movieDetail(@RequestParam (defaultValue = "0") int MNO,
			@ModelAttribute MovieVO vo,Model model) {

		logger.info("영화상세 페이지 파라미터 MNO={}",MNO);
		logger.info("getReview={}",vo.getID());
		
		vo=movieService.selectByNo2(MNO);
		/*if(movieVo.getID() == null) {
			movieVo=movieService.selectByNo(MNO);
			logger.info("movieVO={}",movieVo);
			model.addAttribute("movieVo",movieVo);
		}else {
		*/	
			model.addAttribute("movieVo",vo);
		//}
		return "movie/movieDetail";
	}
}
