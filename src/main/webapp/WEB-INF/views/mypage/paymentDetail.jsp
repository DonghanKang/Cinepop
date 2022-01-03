<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<section class="module">
	<div class="container">
		<h2>마이페이지 | 결제내역 조회</h2>
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
          			<col width="20%">
          			<col width="20%">
          			<col width="20%">
          			<col width="20%">
          		</colgroup>
          		<tr>
          			<th scope="row">상품명</th>
          			<th scope="row">결제일</th>
          			<th scope="row">결제금액</th>
          			<th scope="row">할인금액</th>
          			<th scope="row">결제방법</th>
          		</tr>
          		<tr>
          			<td>뭘좋아할지 몰라서<br>기프트카드</td>
          			<td>2021-12-27</td>
          			<td>10,000원</td>
          			<td>0원</td>
          			<td>신용카드</td>
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
<%@include file="../inc/bottom.jsp"%>