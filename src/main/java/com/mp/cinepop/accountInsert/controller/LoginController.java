package com.mp.cinepop.accountInsert.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
	public void login_post(
			@RequestParam(required = false) String chkSave, String email, String password, 
			HttpServletRequest request,
			HttpServletResponse response) throws NoSuchAlgorithmException, IOException {
		logger.info("로그인 처리, 이메일 email={}, password={}", email, password);
		response.setContentType("text/html;"
				+ "	charset = utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		int result=accountService.loginCheck(email, password);	
		logger.info("result = {}", result);
		if(result==AccountInsertService.LOGIN_OK) {
			AccountInsertVO accountVo=accountService.selectByUserid(email);
				if(accountVo.getgNo() == 10) {
					logger.info("등급 번호 gno = {}",accountVo.getgNo());
					// 세션에 관리자 아이디 저장
					session.setAttribute("adminUserid", email);
					session.setAttribute("adminUserName", accountVo.getaName());
				}
			// 세션에 유저 아이디 저장
			session.setAttribute("userid", email);
			session.setAttribute("userName", accountVo.getaName());
			
			out.print("<script>");
			out.print("alert('"+accountVo.getaName()+"님 로그인되었습니다.');");
			out.print("location.href = '../home/home';");
			out.print("</script>");
		}else if(result==AccountInsertService.DISAGREE_PWD) {
			out.print("<script>");
			out.print("alert('비밀번호가 다릅니다.');");
			out.print("history.back(-1);");
			out.print("</script>");			
		}else if(result==AccountInsertService.USERID_NONE) {
			out.print("<script>");
			out.print("alert('해당 아이디가 존재하지 않습니다.');");
			out.print("history.back(-1);");
			out.print("</script>");
		}
		
		
		
	}
	
	@RequestMapping("inc/top")
	public String logout(HttpSession session) {
		logger.info("로그아웃 처리");
		
		//session.invalidate();
		session.removeAttribute("userid");
		session.removeAttribute("userName");
		
		return "redirect:/index";
	}
	
}