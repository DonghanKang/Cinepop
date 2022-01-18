package com.mp.cinepop.qna.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mp.cinepop.common.PaginationInfo;
import com.mp.cinepop.common.SearchVO;
import com.mp.cinepop.qna.model.QnaService;
import com.mp.cinepop.qna.model.QnaVO;

@Controller
@RequestMapping("/")
public class QnaController {
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);

	private final QnaService qnaService;

	@Autowired
	public QnaController(QnaService qnaService) {
		this.qnaService = qnaService;
		logger.info("qna생성자 주입!!");
	}

	@RequestMapping(value = "qna/qna_write", method = RequestMethod.GET)
	public String qna_get() {
		logger.info("공지사항 쓰기 화면");

		return "qna/qna_write";
	}

	@RequestMapping(value = "qna/qna_write", method = RequestMethod.POST)
	public String qna_post(@ModelAttribute QnaVO qnaVO) {
		logger.info("공지사항 쓰기 처리, 파라미터 vo={}", qnaVO);

		int cnt = qnaService.insertQna(qnaVO);
		logger.info("공지사항 쓰기 결과, cnt={}", cnt);

		return "redirect:/qna/qna_list";
	}

	@RequestMapping("qna/qna_list")
	public String list(@ModelAttribute SearchVO searchVo, Model model) {
		// 1
		logger.info("글목록, 파라미터 searchVo={}", searchVo);

		// 2
		// searchVo에 firstRecordIndex, recordCountPerPage 값을 넣어줘야 함
		// => PaginationInfo를 이용하여 firstRecordIndex값을 미리 구한다

		// [1] PaginationInfo 객체 생성 - 계산해줌
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(5);
		pagingInfo.setRecordCountPerPage(5);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		// [2] searchVo에 값 셋팅
		searchVo.setBlockSize(5);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		int totalRecord = qnaService.selectTotalRecord(searchVo);
		searchVo.setRecordCountPerPage(5);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);

		List<QnaVO> list = qnaService.selectAll(searchVo);
		logger.info("전체조회 결과 list.size={}", list.size());

		// [3] totalRecord 구하기
		pagingInfo.setTotalRecord(totalRecord);

		// 3. model에 결과 저장
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);

		// 4. 뷰페이지 리턴
		return "qna/qna_list";
	}

	@RequestMapping("qna/qna_detail")
	public String detail(@RequestParam(defaultValue = "0") int qNo, Model model) {
		logger.info("공지사항 상세보기 파라미터 no={}", qNo);

		if (qNo == 0) {
			return "/qna/qna_list";
		}

		QnaVO vo = qnaService.selectByNo(qNo);
		logger.info("상세보기 결과 vo={}", vo);

		model.addAttribute("vo", vo);

		return "qna/qna_detail";
	}

	@RequestMapping("qna/countUpdate")
	public String countUpdate(@RequestParam(defaultValue = "0") int qNo, Model model) {
		logger.info("조회수 증가 파라미터 no={}", qNo);

		if (qNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/qna/qna_list");

			return "qna/qna_list";
		}

		int cnt = qnaService.updateReadCount(qNo);
		logger.info("조회수 증가 결과 cnt={}", cnt);

		return "redirect:/qna/qna_detail?qNo=" + qNo;
	}

	@RequestMapping(value = "qna/qna_edit", method = RequestMethod.GET)
	public String edit_get(@RequestParam(defaultValue = "0") int qNo, Model model) {
		logger.info("공지사항 수정 화면, 파라미터 no={}", qNo);
		if (qNo == 0) {
			return "redirect:/qna/qna_list";
		}

		QnaVO vo = qnaService.selectByNo(qNo);
		logger.info("공지사항 수정 - 상세조회 결과 vo={}", vo);

		model.addAttribute("vo", vo);

		return "qna/qna_edit";
	}

	@PostMapping("qna/qna_edit")
	public String edit(@ModelAttribute QnaVO vo, @RequestParam(defaultValue = "0") int qNo, Model model) {
		logger.info("공지사항 수정 처리, 파라미터 qNo={}", qNo);
		logger.info("공지사항 수정 처리, 파라미터 vo={}", vo);

		qnaService.updateQna(vo);
		
		model.addAttribute("vo", vo);

		return "redirect:/qna/qna_list";
	}
	
	@PostMapping("qna/qna_detail")
	public String delete(@ModelAttribute QnaVO vo, Model model) {
		logger.info("공지사항 삭제 처리, 파라미터 vo={}", vo);
		int cnt = qnaService.deleteQna(vo.getqNo());
		
		model.addAttribute("삭제 처리 cnt={}",cnt);
		
		return"redirect:/qna/qna_list";
	}
}
