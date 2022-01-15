<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../inc/top.jsp"%>
<style>
	.searchbox input[type=date]{
		margin : 0px 20px;
	}
	
	.search_btn{
		background: url(<c:url value='/resources/images/search.png'/>)no-repeat #111111 right 74px;
		padding:8px 24px; width:104px !important;
	}
</style>
<script type="text/javascript" language="javascript">
	/* function openDetail(){
	    var pop_title = "paymentDetail" ;
	     

	    window.open("", pop_title, 
	    		"scrollbars=no,toolbar=no,location=no,status=yes,menubar=no,resizable=no,width=1000px,height=500px")
	     
	    var frmData = document.paymentDetail ;
	    frmData.target = pop_title ;
	    frmData.action = "<c:url value='/mypage/paymentDetail'/>" ;
	    
	    frmData.submit() ;
	} */

	$(function(){
		var d= new Date();
		var todayStr=new Date(d.getTime() - (d.getTimezoneOffset() * 60000)).toISOString().slice(0, 10);
		<c:if test="${empty param.startDate}">
			$('#startDate').val(todayStr);
			$('#endDate').val(todayStr);
		</c:if>
		<c:if test="${!empty param.startDate}">
			$('#startDate').val('${param.startDate}');
			$('#endDate').val('${param.endDate}');
		</c:if>
		
	})
</script>
<section class="module">
	<div class="container">
		<h2>마이페이지 | 결제내역 조회</h2>
		<div class="searchbox">
			<form action="<c:url value='/mypage/paymentHistory'/>" method="POST" >
				<input type="date" name="startDate" id="startDate"> ~
				<input type="date" name="endDate" id="endDate" >
				<input type="submit" class="black_btn search_btn"  value="검색" >
			</form>
	    </div>
          <div class="col-sm-12">
          	<table class="t_style1 mb50">
          		<colgroup>
          			<col width="16.6%">
          			<col width="16.6%">
          			<col width="16.6%">
          			<col width="16.6%">
          			<col width="16.6%">
          			<col width="16.6%">
          		</colgroup>
          		<tr>
          			<th scope="row">주문번호</th>
          			<th scope="row">결제일</th>
          			<th scope="row">결제금액</th>
          			<th scope="row">할인금액</th>
          			<th scope="row">주문상태</th>
          			<th scope="row">주문상세보기</th>
          		</tr>
          		<c:if test="${!empty list }">	 
	          		<c:forEach var="orderVo" items="${list }">
		          		<tr>
		          			<td>${orderVo.orderNo }</td>
		          			<td>
			          			<fmt:formatDate value="${orderVo.orderDate }" 
									pattern="yyyy-MM-dd"/>
							</td>
		          			<td>
		          				<fmt:formatNumber value="${orderVo.totalPrice }" 
									pattern="#,###"/>원
		          			</td>
		          			<td>
								<fmt:formatNumber value="${orderVo.discPrice }" 
									pattern="#,###"/>원
							</td>
		          			<td>${orderVo.deliveryStatus }</td>
		          			<td>
		          					<input class="black_btn" type="button" value="상세보기" 
		          					onclick="window.open('<c:url value='/mypage/paymentDetail?orderNo=${orderVo.orderNo }&orderDate=${orderVo.orderDate }&totalPrice=${orderVo.totalPrice }'/>', '결제상세정보보기' 
		          					,'scrollbars=no,toolbar=no,location=no,status=yes,menubar=no,resizable=no,width=1000px,height=500px');">
		          			</td>
		          		</tr>
	          		</c:forEach>
	          	</c:if>
          	</table>
          </div>
          <div class="divPage t_center mt50">
				<!-- 페이지 번호 추가 -->		
				<!-- 이전 블럭으로 이동 -->
				<c:if test="${pagingInfo.firstPage>1 }">
					<a href="<c:url value='/mypage/paymentHistory?currentPage=${pagingInfo.firstPage-1}&startDate=${param.startDate}&endDate=${param.endDate}'/>">
						<img src="<c:url value='/resources/images/first.JPG'/>" alt="이전블럭">
					</a>	
				</c:if>		
									
				<!-- [1][2][3][4][5][6][7][8][9][10] -->
				<c:forEach var="i" begin="${pagingInfo.firstPage}" end="${pagingInfo.lastPage }">
					<c:if test="${i==pagingInfo.currentPage }">
						<span style="font-weight: bold;font-size: 1em">
							${i}</span>			
					</c:if>	
					<c:if test="${i!=pagingInfo.currentPage }">	
							<a href="<c:url value='/mypage/paymentHistory?currentPage=${i}&startDate=${param.startDate}&endDate=${param.endDate}'/>">
							[${i }]</a>			
					</c:if>
				</c:forEach>
				
				<!-- 다음 블럭으로 이동 -->					
				<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
						<a href="<c:url value='/board/list.do?currentPage=${pagingInfo.lastPage+1}&&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
							<img src="<c:url value='/resources/images/last.JPG'/>" alt="다음블럭">
						</a>	
				</c:if>					
				<!--  페이지 번호 끝 -->	
		</div>
	</div>
</section>
<%@include file="../inc/bottom.jsp"%>