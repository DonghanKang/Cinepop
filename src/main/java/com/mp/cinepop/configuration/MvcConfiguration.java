package com.mp.cinepop.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.mp.cinepop.admin.controller.AdminLoginInterceptor;
import com.mp.cinepop.admin.controller.UserLoginInterceptor;

@Configuration
public class MvcConfiguration implements WebMvcConfigurer{

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		registry.addInterceptor(new UserLoginInterceptor())
		.addPathPatterns("/store/payment", "/mypage/*", "/ticketing/seat","/questionAnser/questionUser_write");
	
		registry.addInterceptor(new AdminLoginInterceptor())
		.addPathPatterns("/admin/*/*", "/admin/*" , "/store/pdWrite", "/store/pdDelete"
				+ "/qna/qna_write", "/qna/qna_edit","/qna/qna_edit");
		
		
	}

	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver 
			= new CommonsMultipartResolver();
		multipartResolver.setDefaultEncoding("UTF-8"); // 파일 인코딩 설정
		multipartResolver.setMaxUploadSizePerFile(10 * 1024 * 1024); // 파일당 업로드 크기 제한 (10MB)
		return multipartResolver;
	}
	
}
