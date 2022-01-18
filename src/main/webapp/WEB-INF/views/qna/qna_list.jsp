<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@include file="../inc/top.jsp"%>
<script type="text/javascript"
	src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>
<section class="module">
	<div class="container">
		<h2>공지사항 글목록</h2>
		<div class="searchbox">
			<form name="frmSearch" method="post" action='<c:url value="/qna/qna_list"/>'>
				<div class="select display_inflex">
					<select name="searchCondition">
						<option value="title"
							<c:if test="${param.searchCondition=='title' }"> selected="selected"
	            			</c:if>>제목
	            		</option>
						<option value="content"
							<c:if test="${param.searchCondition=='content' }"> selected="selected"
	            			</c:if>>내용
	            		</option>
						<option value="name"
							<c:if test="${param.searchCondition=='name' }"> selected="selected"
	            			</c:if>>작성자
	            		</option>
					</select>
					<input type="text" name="searchKeyword" class="mr10 t_input" title="검색어 입력"
						value="${param.searchKeyword}">
					<input type="submit" class="black_btn" value="검색">
				</div>
			</form>
		</div>
		<div class="col-sm-12">
			<table class="t_style1 mb50">
				<colgroup>
					<col width="20%">
					<col width="*">
					<col width="20%">
					<col width="10%">
				</colgroup>
				<tr>
					<th scope="row">번호</th>
					<th scope="row">제목</th>
					<th scope="row">등록일</th>
					<th scope="row">조회수</th>
				</tr>
				<c:if test="${empty list }">
					<tr>
						<td colspan="5">데이터가 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${!empty list }">
					<!--게시판 내용 반복문 시작  -->
					<c:forEach var="qnavo" items="${list }">
						<tr>
							<td>${qnavo.qNo}</td>
							<td><a
								href="<c:url value='/qna/countUpdate?qNo=${qnavo.qNo}'/>">
									${qnavo.title} </a></td>
							<td><fmt:formatDate value="${qnavo.regdate}"
									pattern="yyyy-MM-dd" /></td>
							<td>${qnavo.readcount}</td>
						</tr>
					</c:forEach>
					<!--반복처리 끝  -->
				</c:if>
			</table>
		</div>
		<div class="divPage t_center mt50">
			<!-- 페이지 번호 추가 -->
			<!-- 이전 블럭으로 이동 -->
			<c:if test="${pagingInfo.firstPage>1 }">
				<a
					href="<c:url value='/qna/qna_list?currentPage=${pagingInfo.firstPage-1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
					<img src="<c:url value='/resources/images/first.JPG'/>" alt="이전블럭">
				</a>
			</c:if>

			<!-- [1][2][3][4][5][6][7][8][9][10] -->
			<c:forEach var="i" begin="${pagingInfo.firstPage}"
				end="${pagingInfo.lastPage }">
				<c:if test="${i==pagingInfo.currentPage }">
					<span style="color: blue; font-weight: bold; font-size: 1em">
						${i}</span>
				</c:if>
				<c:if test="${i!=pagingInfo.currentPage }">
					<a
						href="<c:url value='/qna/qna_list?currentPage=${i}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
						[${i }]</a>
				</c:if>
			</c:forEach>

			<!-- 다음 블럭으로 이동 -->
			<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
				<a
					href="<c:url value='/qna/qna_list?currentPage=${pagingInfo.lastPage+1}&&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
					<img src="<c:url value='/resources/images/last.JPG'/>" alt="다음블럭">
				</a>
			</c:if>
			<!--  페이지 번호 끝 -->
		</div>
	</div>
</section>
<%@ include file="../inc/bottom.jsp"%>