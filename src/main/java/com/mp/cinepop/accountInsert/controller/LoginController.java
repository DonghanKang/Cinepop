package com.mp.cinepop.accountInsert.controller;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mp.cinepop.accountInsert.model.AccountInsertService;
import com.mp.cinepop.accountInsert.model.AccountInsertVO;

@Controller
@RequestMapping("/")
public class LoginController {
	private static final Logger logger
		=LoggerFactory.getLogger(LoginController.class);
	
	private final AccountInsertService accountService;
		
	@Autowired
	public LoginController(AccountInsertService accountService) {		
		this.accountService = accountService;
	}

	@GetMapping("login/login")
	public void login_get() {
		logger.info("로그인 화면 get");		
	}
	
	@PostMapping("login/login")
	public String login_post(
			@RequestParam(required = false) String chkSave, String email, String password, 
			HttpServletRequest request,
			HttpServletResponse response, ModelMap model) throws NoSuchAlgorithmException {
		logger.info("로그인 처리, 이메일 email={}, password={}, chkSave={}", email, password, chkSave);
		
		
		String msg="로그인 처리 실패!", url="/login/login";
		int result=accountService.loginCheck(email, password);		
		if(result==AccountInsertService.LOGIN_OK) {
			AccountInsertVO accountVo=accountService.selectByUserid(email);
				if(accountVo.getgNo() == 10) {
					logger.info("등급 번호 gno = {}",accountVo.getgNo());
					HttpSession session=request.getSession();
					session.setAttribute("adminUserid", email);
					session.setAttribute("adminUserName", accountVo.getaName());
					
				}
			//[1] 세션에 아이디 저장
			HttpSession session=request.getSession();
			session.setAttribute("userid", email);
			session.setAttribute("userName", accountVo.getaName());
			
			//[2] 쿠키에 저장 - 아이디저장하기 체크된 경우만
			Cookie ck = new Cookie("ck_userid", email);
			ck.setPath("/");
			if(chkSave != null) {  //체크된 경우
				ck.setMaxAge(1000*24*60*60);
				response.addCookie(ck);
			}else {
				ck.setMaxAge(0);  //쿠키 제거
				response.addCookie(ck);				
			}
			
			msg=accountVo.getaName() + "님 로그인되었습니다.";
			url="/index";
		}else if(result==AccountInsertService.DISAGREE_PWD) {
			msg="비밀번호가 일치하지 않습니다.";			
		}else if(result==AccountInsertService.USERID_NONE) {
			msg="해당 아이디가 존재하지 않습니다.";			
		}
		
		
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "home/home";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		logger.info("로그아웃 처리");
		
		//session.invalidate();
		session.removeAttribute("userid");
		session.removeAttribute("userName");
		
		return "redirect:/index";
	}
	
}