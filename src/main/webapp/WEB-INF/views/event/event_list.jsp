<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp" %>
<style>
.mr10{margin-right:10px;}
</style>
<section class="module">
	<div class="container">
		<h2>이벤트 리스트</h2>
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
        <div class="row multi-columns-row post-columns">
          <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="post mb-20">
              <div class="post-thumbnail"><a href="#"><img src="https://img.cgv.co.kr/WebApp/contents/eventV4/33701/16399713475320.jpg" alt="[스파이더맨: 노 웨이 홈] 스페셜 리미티드 포스터"/></a></div>
              <div class="post-header font-alt">
                <h2 class="post-title"><a href="#">[스파이더맨: 노 웨이 홈] 스페셜 리미티드 포스터</a></h2>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="post mb-20">
              <div class="post-thumbnail">
              <a href="#">
              <img src="https://img.cgv.co.kr/WebApp/contents/eventV4/33686/16396375587150.jpg" alt="[매트릭스: 리저렉션] 4DX 리미티드 포스터"/>
              </a>
              </div>
              <div class="post-header font-alt">
              	<h2 class="post-title"><a href="#">[매트릭스: 리저렉션] 4DX 리미티드 포스터</a></h2>
              </div>
              </div>
            </div>
          <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="post mb-20">
              <div class="post-thumbnail"><a href="#"><img src="https://img.cgv.co.kr/WebApp/contents/eventV4/33377/16358348681300.png" alt="[백신패스관] 운영 가이드"/></a></div>
              <div class="post-header font-alt">
                <h2 class="post-title"><a href="#">[백신패스관] 운영 가이드</a></h2>
                </div>
              </div>
            </div>
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
		</div>
</section>
<%@ include file="../inc/bottom.jsp"%>