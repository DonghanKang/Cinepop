<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../inc/top.jsp" %>

<section class="module">
   <div class="container">
    	<h2 class="mb50">공지사항</h2>
   		<div class="col-sm-12">
	   		<div class="detail_area mb50">
	   			<div class="detail_head">
	   				<div>제목 | ${vo.title}</div>
	   				<div>등록일 | <fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/></div>
	   				<div>조회수 | ${vo.readcount}</div>
	   			</div>
	   			<% pageContext.setAttribute("newLine", "\n"); %>
	   			<div class="detail_cont">
	   				<p>${fn:replace(vo.content, newLine, "<br/>")}</p>
	   			</div>
	   			<div class="btn_area t_center">
	   				<a href='<c:url value="/qna/qna_list"/>' class="a_black_btn">목록</a>
	   			</div>
	   		</div>
   		</div>
   </div>
</section>
<%@ include file="../inc/bottom.jsp"%>