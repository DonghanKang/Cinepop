package com.mp.cinepop.admin.controller;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class AdminLoginInterceptor implements HandlerInterceptor{
	private static final Logger logger
		=LoggerFactory.getLogger(AdminLoginInterceptor.class);
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) 
		throws Exception{
		String adminUserid
			= (String) request.getSession().getAttribute("adminUserid");
		
		logger.info("preHandle, adminUserid 호출  adminuser ={}",adminUserid);
		
		if(adminUserid==null || adminUserid.isEmpty()) {
			response.setContentType("text/html;"
					+ "	charset = utf-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alter('관리자가 아니거나 관리가 로그인이 되어있지 않습니다')");
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
