<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
<section class="module">
	<div class="container">
		<div class="row c_center">
			<div class="col-sm-5 frm_login">
				<h3 class="font-alt">회원 탈퇴</h3>
				<h4>아이디, 비밀번호 확인</h4>
				<h6>고객님의 개인정보 보호를 위한 절차이오니, CinePop 로그인 시 사용하는</h6>
				<h6>아이디(이메일), 비밀번호를 입력해 주세요.</h6>
				<hr class="divider-w mb-10">
				<form class="form" action="withdrawalfin.jsp">
					<div class="form-group ">
						<input class="form-control" id="email" type="text" name="email"
							placeholder="Email" />
					</div>
					<div class="form-group">
						<input class="form-control" id="password" type="password"
							name="password" placeholder="비밀번호 입력" />
					</div>
					<div class="form-group frm_registerpwd">
                    	<input class="form-control" id="re-password" type="password" name="re-password" placeholder="비밀번호 확인"/>
                  	</div>
					<div class="form-group">
                    <input type="submit" class="btn btn-block btn-round btn-b" value="회원탈퇴하기">
                  </div>
				</form>
			</div>
		</div>
	</div>
</section>
<%@ include file="../inc/bottom.jsp"%>