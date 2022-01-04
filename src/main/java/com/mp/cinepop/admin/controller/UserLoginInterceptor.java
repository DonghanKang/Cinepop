package com.mp.cinepop.admin.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class UserLoginInterceptor extends HandlerInterceptorAdapter{
	private static final Logger logger
	=LoggerFactory.getLogger(UserLoginInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		
		logger.info("preHandle , email 호출 email ={}",email);
		
		if(email == null || email.isEmpty()) {
			response.setContentType("text/html;"
					+ "	charset = utf-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alter('로그인을 먼저 진행해 주세요')");
			out.print("location.href = '"+request.getContextPath()+"/login/login';");
			out.print("</script>");
			
			return false;
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("postHandle 호출");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		logger.info("afterCompletion 호출");
	}
	
	
}
