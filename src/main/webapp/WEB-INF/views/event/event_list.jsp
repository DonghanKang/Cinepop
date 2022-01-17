<%@page import="com.mp.cinepop.common.ConstUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="../inc/top.jsp" %>
<style>
.mr10{margin-right:10px;}
.post-thumbnail2{height:247px; overflow: hidden;}
.h345{height:345px;}
</style>
<section class="module">
	<div class="container">
		<!-- 페이징 처리를 위한 form -->
		<form id="frmPage" method="post" action="<c:url value='/event/event_list'/>">
			<input type="hidden" name="currentPage" >
			<input type="hidden" name="searchCondition" value="${param.searchCondition }">
			<input type="hidden" name="searchKeyword" value="${param.searchKeyword }">
		</form>
		<h2>이벤트</h2>
		<c:if test="${!empty param.searchKeyword }">
			<p>검색어 : ${param.searchKeyword },  
				${pagingInfo.totalRecord} 건 검색되었습니다. </p>
		</c:if>
	    <div class="searchbox">
	    	<form name="frmsearch" method="post" action='<c:url value='/event/event_list'/>'>
		    	<div class="select display_inflex">
			    	<select>
			    		<option value="title"
			    			<c:if test="${param.searchCondition=='title'}">
			    				selected="selected"
			    			</c:if>
			    		>제목</option>
			    		<%-- <option value="content"
			    			<c:if test="${param.searchCondition=='content'}">
			    				selected="selected"
			    			</c:if>
			    		>내용</option> --%>
			    	</select>
				</div>	    	
		    	<input type="text"  name="searchKeyword" class="mr10 t_input" title="검색어 입력"
		    	value="${param.searchKeyword}">
		    	<input type="submit" class="black_btn" value="검색">
	    	</form>
	    </div>
        <div class="row multi-columns-row post-columns">
	          <!-- 이벤트 게시판 리스트 반복 시작 -->
	          <c:forEach var="eventVo" items="${list}">
		          <div class="col-sm-6 col-md-4 col-lg-4 h345">
		            <div class="post mb-20">
		              <div class="post-thumbnail post-thumbnail2">
		              	  <input type="hidden" value="${eventVo.no}">
			              <a href="<c:url value='/event/event_Detail?no=${eventVo.no}'/>">
			              	<img alt="${eventVo.title }" src="<c:url value='/resources/images/event/${eventVo.fileName}'/>">
			              </a>
		              </div>
		              <div class="post-header font-alt">
		                <h2 class="post-title"><a href="<c:url value='/event/event_Detail?no=${eventVo.no}'/>">${eventVo.title}</a></h2>
		              </div>
		            </div>
		          </div>
	          </c:forEach>
	          <!--// 이벤트 게시판 리스트 반복 시작 -->
          </div>
          <div class="divPage t_center">
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
			<div class="t_center mt50">
				<c:if test="${!empty sessionScope.adminUserid }">
				<a class="a_black_btn" href="<c:url value='event/event_write'/>">글등록</a>
				</c:if>
			</div>
		</div>
</section>
<%@ include file="../inc/bottom.jsp"%>