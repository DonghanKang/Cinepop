<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../inc/top.jsp"%>
<section class="module">
	<div class="container">
		<h2>이벤트 게시판 상세페이지</h2>
		<div class="detail_area mb50">
   			<div class="detail_head2 justi_cont">
   				<div>${vo.title }</div>
   				<div><fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/></div>
   			</div>
   			<div class="detail_cont t_center">
   				<img alt="${vo.title}" src="<c:url value='/resources/images/event/${vo.fileName}'/>">
   			</div>
   			<div class="btn_area t_center">
   				<a class="a_black_btn" href="<c:url value='/event/event_list'/>">목록</a>
   				<a class="a_black_btn" href="<c:url value='/admin/event/event_edit?no=${vo.no}'/>">수정</a>
   				<a class="a_black_btn" href="<c:url value='/event/event_list'/>">삭제</a>
   			</div>
	   	</div>
	</div>
</section>
<%@include file="../inc/bottom.jsp"%>