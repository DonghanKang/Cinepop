<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
<section class="module">
	<div class="container">
		<div class = "row c_center">
			<div class="col-sm-5 frm_login">
				<h2 class="font-alt">로그인</h2>
				<hr class="divider-w mb-10">
				<form class="form">
					<div class="form-group ">
						<input class="t_input w100" id="email" type="text"
							name="email" placeholder="Email" />
					</div>
					<div class="form-group">
						<input class="t_input w100" id="password" type="password"
							name="password" placeholder="비밀번호 입력" />
					</div>
					<div class="form-group">
                    <input type="submit" class="black_btn w100" value="로그인">
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