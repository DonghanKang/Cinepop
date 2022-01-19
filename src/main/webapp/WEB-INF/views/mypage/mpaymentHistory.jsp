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
	
	input{
		font-family: "Roboto Condensed", sans-serif;
		text-align: center;
	}
	
	#selectType{
		margin-bottom:20px;
	}
	
	div#selectType a {
		padding:10px;
	    background: black;
	    color: white;
	    border-radius: 5px;
	}
</style>
<script type="text/javascript" >

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
		<h2>마이페이지 | 영화결제내역 조회</h2>
		<div class="searchbox">
			<form action="<c:url value='/ticketing/mypage/mpaymentHistory'/>" method="POST" >
				<input type="date" name="startDate" id="startDate"> ~
				<input type="date" name="endDate" id="endDate" >
				<input type="submit" class="black_btn search_btn"  value="검색" >
			</form>
	    </div>
	    <div id='selectType'>
		    <a href="<c:url value='/mypage/paymentHistory'/>">상품결제내역</a>
		    <a href="<c:url value='/ticketing/mypage/mpaymentHistory'/>">영화결제내역</a>
	    </div>
          <div class="col-sm-12">
          	<table class="t_style1 mb50">
          		<colgroup>
          			<col width="15%">
          			<col width="15%">
          			<col width="40%">
          			<col width="15%">
          			<col width="15%">
          		</colgroup>
          		<tr>
          			<th scope="row">주문번호</th>
          			<th scope="row">결제일</th>
          			<th scope="row">영화제목</th>
          			<th scope="row">결제금액</th>
          			<th scope="row">인원수</th>
          		</tr>
          		<c:if test="${!empty list }">	 
	          		<c:forEach var="map" items="${list }">
		          		<tr>
		          			<td>${map['ORDER_NO'] }</td>
		          			<td>
			          			<fmt:formatDate value="${map['ORDER_DATE'] }" 
									pattern="yyyy-MM-dd"/>
							</td>
		          			<td>
		          				${map['M_NAME'] }
		          			</td>
		          			<td>
		          				<fmt:formatNumber value="${map['TOTAL_PRICE'] }" 
									pattern="#,###"/>원
		          			</td>
		          			<td>
		          				${map['THE_NUM'] }
							</td>
		          		</tr>
	          		</c:forEach>
	          	</c:if>
          	</table>
          </div>
			<div class="pagination font-alt" style="clear:both;">
				<div style="margin:0 auto;">
					<c:if test="${pagingInfo.currentPage>1 }">
						<a href="<c:url value='/ticketing/mypage/mpaymentHistory?currentPage=${pagingInfo.currentPage-1}&startDate=${param.startDate}&endDate=${param.endDate}'/>">
					</c:if>
					<c:if test="${pagingInfo.currentPage==1 }">
						<a href="<c:url value='/ticketing/mypage/mpaymentHistory?currentPage=${pagingInfo.currentPage}&startDate=${param.startDate}&endDate=${param.endDate}'/>">
					</c:if>
					<i class="fa fa-angle-left"></i> </a>
					
					<c:forEach var="i" begin="${pagingInfo.firstPage}"
						end="${pagingInfo.lastPage }">
						<c:if test="${i==pagingInfo.currentPage }">
							<a class="active" href="#">${i }</a>
						</c:if>
						<c:if test="${i!=pagingInfo.currentPage }">
							<a href="<c:url value='/ticketing/mypage/mpaymentHistory?currentPage=${i}&startDate=${param.startDate}&endDate=${param.endDate}'/>">${i }</a>
						</c:if>
					</c:forEach>
	
					<c:if test="${pagingInfo.currentPage < pagingInfo.totalPage }">
						<a href="<c:url value='/ticketing/mypage/mpaymentHistory?currentPage=${pagingInfo.currentPage+1}&startDate=${param.startDate}&endDate=${param.endDate}'/>">
					</c:if>
					<c:if test="${pagingInfo.currentPage == pagingInfo.totalPage }">
						<a
							href="<c:url value='/ticketing/mypage/mpaymentHistory?currentPage=${pagingInfo.currentPage}&startDate=${param.startDate}&endDate=${param.endDate}'/>">
					</c:if>
					<i class="fa fa-angle-right"> </i> </a>
				</div>
			</div>
		</div>
</section>
<%@include file="../inc/bottom.jsp"%>