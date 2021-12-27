<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp" %>

<section class="module">
	<div class="container">
		<h2>공지사항 글목록</h2>
	    <div class="searchbox">
	    	<div class="select">
		    	<select>
		    		<option value="1">제목</option>
		    		<option value="2">제목</option>
		    	</select>
			</div>	    	
	    	<input type="text" id="" name="" class="mr10">
	    	<input type="button" class="black_btn" id="" name="" value="검색">
	    </div>
          <div class="col-sm-12">
          	<table class="t_style1 mb50">
          		<colgroup>
          			<col width="20%">
          			<col width="*">
          			<col width="20%">
          		</colgroup>
          		<tr>
          			<th scope="row">번호</th>
          			<th scope="row">제목</th>
          			<th scope="row">등록일</th>
          		</tr>
          		<tr>
          			<td>1</td>
          			<td>제목제목제목제목제목제목제목</td>
          			<td>2021-11-21</td>
          		</tr>
          	</table>
          </div>
          <div class="divPage t_center mt50">
	<!-- 페이지 번호 추가 -->		
	<!-- 이전 블럭으로 이동 -->
	<c:if test="${pagingInfo.firstPage>1 }">
		<a href
="<c:url value='/board/list.do?currentPage=${pagingInfo.firstPage-1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
			<img src="<c:url value='/resources/images/first.JPG'/>" alt="이전블럭">
		</a>	
	</c:if>		
						
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<c:forEach var="i" begin="${pagingInfo.firstPage}" end="${pagingInfo.lastPage }">
		<c:if test="${i==pagingInfo.currentPage }">
			<span style="color:blue;font-weight: bold;font-size: 1em">
				${i}</span>			
		</c:if>	
		<c:if test="${i!=pagingInfo.currentPage }">	
				<a href
="<c:url value='/board/list.do?currentPage=${i}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
				[${i }]</a>			
		</c:if>
	</c:forEach>
	
	<!-- 다음 블럭으로 이동 -->					
	<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
			<a href
="<c:url value='/board/list.do?currentPage=${pagingInfo.lastPage+1}&&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
				<img src="<c:url value='/resources/images/last.JPG'/>" alt="다음블럭">
			</a>	
	</c:if>					
	<!--  페이지 번호 끝 -->	
</div>
		</div>
</section>
<%@ include file="../inc/bottom.jsp"%>