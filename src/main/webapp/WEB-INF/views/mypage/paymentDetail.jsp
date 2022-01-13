<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/style_hl.css" rel="stylesheet">

<style>
	.t_style1{
		margin : 20px;
		width : 95%;
	}
</style>
</head>
<body>
	<div class="col-sm-12">
          	<table class="t_style1 mb50">
          		<colgroup>
          			<col width="10%">
          			<col width="40%">
          			<col width="20%">
          			<col width="15%">
          			<col width="15%">
          		</colgroup>
          		<tr>
          			<th scope="row">주문번호</th>
          			<th scope="row">상품명</th>
          			<th scope="row">상품가격</th>
          			<th scope="row">수량</th>
          			<th scope="row">QR코드보기</th>
          		</tr>
          		<c:if test="${!empty list }">	 
	          		<c:forEach var="map" items="${list }">
		          		<tr>
		          			<td colspan="${fn:length(list) }" >${orderVo.orderNo }</td>
		          			<td>
		          				${map['PD_NAME'] }
							</td>
		          			<td>
		          				<fmt:formatNumber value="${map['PD_PRICE'] }" 
									pattern="#,###"/>원
		          			</td>
		          			<td>
								${map['QUANTITY'] }개
							</td>
							<c:set var="qrName" value="${map['ORDER_NO']}_${map['PD_ORDER']}"/>

		          			<td><input class="black_btn" type="button" value="QR코드보기" onclick="window.open('<c:url value='/mypage/showQr?qrName=${qrName }'/>', 'QR코드보기' 
	          					,'scrollbars=no,toolbar=no,location=no,status=yes,menubar=no,resizable=no,width=550px,height=550px');"></td>
		          		</tr>
	          		</c:forEach>
	          	</c:if>
          	</table>
          </div>
</body>
</html>