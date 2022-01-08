package com.mp.cinepop.account.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mp.cinepop.account.model.AccountService;
import com.mp.cinepop.account.model.AccountVO;
import com.mp.cinepop.qna.controller.QnaController;
import com.mp.cinepop.qna.model.QnaVO;

@Controller
@RequestMapping("/")
public class AccountController {
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);
	
	private final AccountService accountService;

	@Autowired
	public AccountController(AccountService accountService) {
		this.accountService = accountService;
		logger.info("AccountController생성자 주입!!");
	}
	
	/*
	 * @RequestMapping("qna/qna_detail") // 새 값 넣기 public String
	 * detail(@RequestParam(defaultValue = "0") int aNo, Model model) {
	 * logger.info("회원정보 상세보기 파라미터 no={}", aNo);
	 * 
	 * if(aNo==0) { model.addAttribute("msg", "잘못된 url입니다.");
	 * model.addAttribute("url", "/qna/qna_list"); // 새 값 넣기
	 * 
	 * return "/qna/qna_list"; // 새 값 넣기 }
	 * 
	 * AccountSEVO vo = accountService.selectByNo(aNo);
	 * logger.info("회원정보 상세보기 결과 vo={}", vo);
	 * 
	 * model.addAttribute("vo", vo);
	 * 
	 * return "qna/qna_detail"; // 새 값 넣기 }
	 */
	

	
	
}
