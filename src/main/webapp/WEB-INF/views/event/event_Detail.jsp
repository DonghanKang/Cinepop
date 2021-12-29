<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@include file="../inc/top.jsp"%>
<section class="module">
	<div class="container">
		<h2>이벤트 게시판 상세페이지</h2>
		<div class="detail_area mb50">
   			<div class="detail_head2 justi_cont">
   				<div>${vo.title }</div>
   				<div>${vo.regdate}</div>
   			</div>
   			<div class="detail_cont t_center">
   				<img alt="${vo.title}" src="<c:url value='/upload/event/${vo.fileName}'/>">
   			</div>
   			<div class="btn_area t_center">
   				<a href="<c:url value='/event/event_list'/>" class="a_black_btn">목록</a>
   			</div>
	   	</div>
	</div>
</section>
<%@include file="../inc/bottom.jsp"%>