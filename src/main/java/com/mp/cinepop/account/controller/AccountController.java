package com.mp.cinepop.account.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mp.cinepop.account.model.AccountService;
import com.mp.cinepop.account.model.AccountVO;

@Controller
@RequestMapping("/")
public class AccountController {
	private static final Logger logger
	=LoggerFactory.getLogger(AccountController.class);
	
	private final AccountService accountService;
	
	@Autowired
	public AccountController(AccountService accountService) {
		super();
		this.accountService = accountService;
	}
	
	@GetMapping("register/register")
	public void register() {
		logger.info("회원가입화면");
	}
	
	@PostMapping("register/register")
	public String register_post(@ModelAttribute AccountVO vo, @RequestParam String email2,String email3,String pw1,String pw2, Model model) {
		logger.info("회원가입 처리 , 파라미터 vo={},email2={},email3={}",vo,email2,email3);
		
		if(vo.getId()==null || vo.getId().isEmpty()) {
			email2="";
			email3="";			
		}else if(email3!=null && !email3.isEmpty()) {
				email2=email3;
		}
		
		int cnt=accountService.insertAccount(vo);
		logger.info("파라미터 vo.getId() = {}",vo.getId());
		logger.info(" 파라미터 email2 = {}",email2);
		vo.setId(vo.getId()+"@"+ email2);
		logger.info("이메일 합산 결과 파라미터 vo = {}",vo);
		logger.info("회원가입 결과,cnt={}",cnt);
		
		return "login/login";
	} 
}
