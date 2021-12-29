<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
<style>
.withdrawalf{text-align: center;margin-left: 115px;}
</style>
<section class="module">
	<div class="container">
		<div class="row c_center">
			<div class="col-sm-10 withdrawalf">
				<img alt="회원탈퇴이미지" src="../titan-master/assets/images/withdrawal/withdrawalimg.JPG">
				<h1>회원탈퇴가 완료 되었습니다.</h1>
				<br>
				<h4>지금까지 CinePop을 사랑해주신 고객님께 감사의 말씀 전해드립니다.</h4>
				<h4>더욱 더 노력하고 발전하는 CinePop이 되겠습니다.</h4>
				<form action="../home/home.jsp">
                    <input type="submit" class="btn btn-round btn-b" value="메인화면으로">
				</form>
			</div>
		</div>
	</div>
</section>
<%@ include file="../inc/bottom.jsp"%>