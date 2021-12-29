<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script type="text/javascript">
	$(function() {
		$('#compleprove').hide();
		$('#failedprove').hide();
		
	});
</script>
<section class="module">
	<div class="container">
		<div class = "row c_center2">
			<div class="col-sm-8">
                <h4 class="font-alt">회원가입</h4>
                <hr class="divider-w mb-10">
                <form class="form">
				  <div class="form-group frm_registername">
                    <input class="t_input" id="username" type="text" name="username" placeholder="이름"/>
                  </div>
                  <div class="form-group frm_register">
                    <input class="t_input w100 mr0" id="email" type="text" name="email" placeholder="Email(아이디)"/>
                    <input class="t_input w100" id="proveemail" type="button" name="proveemail" value="이메일 인증"/>
                  </div>
                  <div class="form-group frm_registercode">
                    <input class="t_input w100 mr0" id="provenum" type="text" name="provenum" placeholder="인증번호"/>
                    <input class="t_input w100" id="examinecode" type="button" name="examinecode" value="인증하기"/>
                  	<span id = "compleprove">인증에 성공하였습니다!</span><br>
                  	<span id = "failedprove">인증 실패! 인증코드를 확인해주세요!</span>
                  </div>
                  <div class="form-group frm_registerpwd">
                    <input class="t_input w100" id="password" type="password" name="password" placeholder="비밀번호"/>
                  </div>
                  <div class="form-group frm_registerpwd">
                    <input class="t_input w100" id="re-password" type="password" name="re-password" placeholder="비밀번호 확인"/>
                  </div>
                  <div class="form-group frm_address1">
                    <input class="t_input w100 mr0" id="zipcode" type="text" name="zipcode"/>
                    &nbsp;
                    <input class="t_input w100" id="selectzipcode" type="button" name="selectzipcode" value="우편번호 찾기"/>
                  </div>
                  <div class="form-group frm_address2">
                    <input class="t_input w100 " id="adrs" type="text" name="adrs"/>
                    <input class="t_input w100 " id="adrs2" type="text" name="adrs2" placeholder="상세주소 입력"/>
                  </div>
                  <div class="form-group">
                    <input type="submit" class="black_btn w100" value="회원가입하기">
                  </div>
                </form>
              </div>
		</div>
	</div>
</section>
<%@ include file="../inc/bottom.jsp"%>