package com.mp.cinepop.questionAnswer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import com.mp.cinepop.event.model.EventVO;
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
	public String question_list(@ModelAttribute SearchVO searchVO, Model model) {
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
		
		return "/questionAnser/questionUser_List";
	}
	
	
	@GetMapping("questionUser_detail")
	public String event_detail(@RequestParam(defaultValue = "0")int Qno, Model model) {
		logger.info("상세보기 파라미터 no={}",Qno);
		
		int cnt = service.updateReadCount(Qno);
		QuestionAnswerVO vo=service.selectByNo(Qno);
		
		model.addAttribute("vo",vo);
		
		return "questionAnser/questionUser_detail";
	}
	
	@PostMapping("questionUser_detail")
	public String event_detail_delete(@RequestParam int Qno, Model model) {
		logger.info("문의하기 삭제");
		int cnt=service.deletequestion(Qno);
		
		model.addAttribute("삭제 처리 cnt={}",cnt);
		
		return"questionAnser/questionUser_List";
	}
	
	@GetMapping("questionUser_edit")
	public String event_edit_get(@RequestParam (defaultValue = "0") int Qno, HttpServletRequest request,Model model) {
		logger.info("답변화면 no={}",Qno);
		
		QuestionAnswerVO vo=service.selectByNo(Qno);
		logger.info("답변화면, 조회 결과 vo={}",vo);
		
		
		model.addAttribute("vo",vo);
		
		return "questionAnser/questionUser_edit";
	}
	
	@PostMapping("questionUser_edit")
	public String event_reply(@ModelAttribute QuestionAnswerVO vo, Model model) {
		logger.info("답변하기");
		int cnt=service.updateReply(vo);
		
		model.addAttribute("등록 처리 cnt={}",cnt);
		
		return"questionAnser/questionUser_detail?Qno="+vo.getQno();
	}
}
