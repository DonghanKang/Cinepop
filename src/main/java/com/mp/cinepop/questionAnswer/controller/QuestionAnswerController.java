package com.mp.cinepop.questionAnswer.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mp.cinepop.common.PaginationInfo;
import com.mp.cinepop.common.SearchVO;
import com.mp.cinepop.movie.controller.MovieController;
import com.mp.cinepop.questionAnswer.model.QuestionAnswerService;
import com.mp.cinepop.questionAnswer.model.QuestionAnswerVO;

@Controller
@RequestMapping("/questionAnser")
public class QuestionAnswerController {
	private static final Logger logger
	=LoggerFactory.getLogger(MovieController.class);
	
	private final QuestionAnswerService service;

	public QuestionAnswerController(QuestionAnswerService service) {
		super();
		this.service = service;
	}
	
	@GetMapping("questionUser_write")
	public String question_get() {
		return "questionAnser/questionUser_write";
	}
	
	@PostMapping("questionUser_write")
	public String question_post() {
		int cnt = service.userinsertQuestion();
		logger.info("글쓰기 결과 = {}", cnt);
		
		return "questionAnser/questionUser_List";
	}
	
	@GetMapping("questionUser_List")
	public void question_list(@ModelAttribute SearchVO searchVO, Model model) {
		PaginationInfo info = new PaginationInfo();
		info.setBlockSize(10);
		info.setRecordCountPerPage(10);
		info.setCurrentPage(searchVO.getCurrentPage());

		searchVO.setRecordCountPerPage(10);
		searchVO.setFirstRecordIndex(info.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVO);

		List<QuestionAnswerVO> list = service.selectAll(searchVO);
		logger.info("전체조회 결과 list.size={}", list.size());

		int totalRecord = service.selectTotalRecord(searchVO);
		info.setTotalRecord(totalRecord);

		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", info);

	}
}
