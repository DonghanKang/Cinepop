<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../inc/top.jsp"%>
<script type="text/javascript">
	$(function (){
		$('#delete_btn').click(function (){
			if(!confirm("게시물을 삭제하시겠습니까?")){
				event.preventDefault();
			}
		});
	});
</script>
<section class="module">
	<div class="container">
		<h2 class="mb50">공지사항</h2>
		<form id="detailform" name="detail" action="<c:url value='/qna/qna_detail?qNo=${vo.qNo }'/>" method="post">
			<div class="col-sm-12">
				<div class="detail_area mb50">
					<div class="detail_head">
						<div>제목 | ${vo.title}</div>
						<div>등록일 |	<fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd" /></div>
						<div>조회수 | ${vo.readcount}</div>
					</div>
					<% pageContext.setAttribute("newLine", "\n"); %>
					<div class="detail_cont">
						<p>${fn:replace(vo.content, newLine, "<br/>")}</p>
					</div>
					<div class="btn_area t_center">
						<a href='<c:url value="/qna/qna_list"/>' class="a_black_btn">목록</a>
						<c:if test="${!empty sessionScope.adminUserid }">
							<a href='<c:url value="/qna/qna_edit?qNo=${vo.qNo }"/>' class="a_black_btn">수정</a>
						</c:if>
						<c:if test="${!empty sessionScope.adminUserid }">
							<button id="delete_btn" type="submit" class="black_btn">삭제</button>
						</c:if>
					</div>
				</div>
			</div>
		</form>
	</div>
</section>
<%@ include file="../inc/bottom.jsp"%>