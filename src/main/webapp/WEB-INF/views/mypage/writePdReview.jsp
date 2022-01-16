<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/style_hl.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	window.onload = function() {
		${afterSubmit}
	};
</script>

<style>
	#title-div{
		height:40px;
		background-color:#111111;
	}

	#title{
		text-align:center;
		color:#fff;
		line-height:40px;
	}
	label{
		width:20%;
		float:left;		
		text-align:right;
		padding:5px 15px 0 0;
		margin-left: 20px;	
		font-size: 16px;
		font-weight: bold;
		position: relative;
		bottom:4px;
	}
	.divForm{
		clear: both;
		margin: 20px 0;
		vertical-align: middle;
	}
	
	.divButton{
		text-align: center;
	}
	.divForm input{
		font-size:16px;
		border:none;
	}
	.divForm input:focus{
		outline:none;
	}
</style>
</head>
<body>

<section class="module">
	<div id="title-div"><h3 id="title">상품리뷰쓰기</h2></div>
	
	<form id="reviewForm" action="<c:url value='/mypage/writePdReview'/>" method="post" >
		<input type="hidden" name="pdOrder" value="${param.pdOrder }">
		<input type="hidden" name="pdNo" value="${param.pdNo }">
	
		<div class="divForm">
			<div><label class="text-label form-control">주문번호</label></div>
			<input type="text" name="orderNo" value="${param.orderNo }" readonly>
		</div>
		<div class="divForm">
			<label class="text-label form-control">상품종류</label>
			<input type="text" name="pctNo" value="${storeVo.pctName }" readonly>
		</div>
		<div class="divForm">
			<label class="text-label form-control">상품명</label>
			<input type="text" name="pdName" value="${storeVo.pdName }" readonly>
		</div>
		<div class="divForm">
			<label class="textarea-label form-control">상품평</label>
			<textarea class="form-control" rows="7" name="review" placeholder="상품평을 입력하세요"
				style="width:50%;"></textarea>
		</div>
		<div class="divButton">
			<input type="submit" id="submitReview" class="black_btn" value="등록">
			<input type="button" class="black_btn" id="cancel_btn" value="취소" onClick='self.close()'>
		</div >
	</form>
</section>
</body>
</html>