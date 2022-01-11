<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
<script>
	$(function(){
		$('#toHome').click(function(){
			location.href="<c:url value='/home/home'/>";
		});
		
		$('#toPayHistory').click(function(){
			location.href="<c:url value='/mypage/paymentDetail'/>";
		});
	});
</script>
<section class="module">
<div style="text-align: center;">
	<div>
		<h1>결제가 완료되었습니다.</h1>
		<span>결제 및 선물 전송 내역은 [마이페이지] > [결제내역]에서 확인하실 수 있습니다.</span><br>
		<span>결제완료 된 선물은 보내신 분의 문자메시지로 전송됩니다.</span>
	</div>
	<br>
	<div>
		<button type="button" id="toHome" class="d_btn" >홈</button>
		<button type="button" id="toPayHistory" class="d_btn" >결제내역</button>
	</div>
</div>
</section>

<%@ include file="../inc/bottom.jsp"%>