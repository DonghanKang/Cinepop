<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
<section class="module">
	<div class="container">
		<div class="row c_center">
			<div class="col-sm-8 frm_login">
				<h2 class="font-alt t_center">회원 탈퇴</h2>
				<hr class="divider-w mb-10">
				<form class="form" action="withdrawalfin.jsp">
					<div class="form-group ">
						<input class="t_input w100" id="email" type="text" name="email"
							placeholder="Email" />
					</div>
					<div class="form-group">
						<input class="t_input w100" id="password" type="password"
							name="password" placeholder="비밀번호 입력" />
					</div>
					<div class="form-group frm_registerpwd">
                    	<input class="t_input w100" id="re-password" type="password" name="re-password" placeholder="비밀번호 확인"/>
                  	</div>
					<hr class="divider-w mb-10">
					<div class="t_left">
						<h4 class="mg0">고객님의 개인정보 보호를 위한 절차이오니,<br />CinePop 로그인 시 사용하는</h5>
						<h4 class="mg0">아이디(이메일), 비밀번호를 입력해 주세요.</h5>
					</div>
					<div class="form-group mt20">
                    <input type="submit" class="black_btn w100" value="회원탈퇴하기">
                  </div>
				</form>
			</div>
		</div>
	</div>
</section>
<%@ include file="../inc/bottom.jsp"%>