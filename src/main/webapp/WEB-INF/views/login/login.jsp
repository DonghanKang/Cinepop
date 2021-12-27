<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
<style>
.c_center{
	text-align: center;
    display: flex;
    flex-direction: column;
    align-content: space-around;
    flex-wrap: wrap;
}
.frm_login{margin-top: 60px;}
</style>
<section class="module">
	<div class="container">
		<div class = "row c_center">
			<div class="col-sm-5 frm_login">
				<h4 class="font-alt">로그인</h4>
				<hr class="divider-w mb-10">
				<form class="form">
					<div class="form-group ">
						<input class="form-control" id="email" type="text"
							name="email" placeholder="Email" />
					</div>
					<div class="form-group">
						<input class="form-control" id="password" type="password"
							name="password" placeholder="비밀번호 입력" />
					</div>
					<div class="form-group">
                    <input type="submit" class="btn btn-block btn-round btn-b" value="로그인">
                  </div>
					<div class="form-group">
						<a href="">비밀번호 찾기</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<%@ include file="../inc/bottom.jsp"%>