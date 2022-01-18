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
import org.springframework.web.bind.annotation.RequestParam;

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
	public String question_post(@ModelAttribute QuestionAnswerVO vo) {
		int cnt = service.userinsertQuestion(vo);
		logger.info("글쓰기 결과 = {}", cnt);
		
		return "/questionAnser/questionUser_List";
	}
	
	@RequestMapping("questionUser_List")
	public void question_list(@ModelAttribute SearchVO searchVO, Model model) {
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(10);
		pagingInfo.setRecordCountPerPage(10);
		pagingInfo.setCurrentPage(searchVO.getCurrentPage());

		searchVO.setRecordCountPerPage(10);
		searchVO.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVO);

		List<QuestionAnswerVO> list = service.selectAll(searchVO);
		logger.info("전체조회 결과 list.size={}", list.size());
		logger.info("전체조회 결과 list={}", list);

		int totalRecord = service.selectTotalRecord(searchVO);
		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);

	}
	
	@RequestMapping("questionAnser/countUpdate")
	public String countUpdate(@RequestParam(defaultValue = "0") int Qno, Model model) {
		logger.info("조회수 증가 파라미터 no={}", Qno);

		int cnt = service.updateReadCount(Qno);
		logger.info("조회수 증가 결과 cnt={}", cnt);

		return "redirect:/questionAnser/questionUser_detail?Qno=" + Qno;
	}
}
