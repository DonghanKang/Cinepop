package com.mp.cinepop.account.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mp.cinepop.account.model.AccountService;
import com.mp.cinepop.account.model.AccountVO;
import com.mp.cinepop.qna.controller.QnaController;

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
	
	@GetMapping("mypage/accountDetail")
	public String accountDetail(HttpSession session, Model model) {
		String userid=(String) session.getAttribute("userid");
		logger.info("회원정보 조회 화면, 파라미터 userid={}", userid);
		
		AccountVO vo=accountService.selectByUserid(userid);
		logger.info("회원 조회 결과 vo={}", vo);
		
		model.addAttribute("vo", vo);
		return "mypage/accountDetail";
	}
	
	@GetMapping("mypage/editInfo")
	public String accountEdit_get(HttpSession session, Model model) {
		String userid=(String) session.getAttribute("userid");
		logger.info("회원정보 수정 화면, 파라미터 userid={}", userid);
		
		AccountVO vo=accountService.selectByUserid(userid);
		logger.info("회원수정 - 조회 결과 vo={}", vo);
		
		model.addAttribute("vo", vo);
		return "mypage/editInfo";
	}
	 
	

	
	
}
