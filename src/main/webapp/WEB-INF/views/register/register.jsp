<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
<style>
.c_center{text-align: center; display: flex; flex-direction: column;align-content: space-around;flex-wrap: wrap;}
.form-group input{width: 220px;}
.frm_register{display: flex;}
.frm_register input:nth-child(2){width: 150px;margin-left: 20px;}
.frm_registercode{display: flex;}
.frm_registercode input:nth-child(2){width: 150px;margin-left: 20px;}
.frm_registerpwd input{width: 100%;}
.frm_address1{display: flex;}
.frm_address1 input{width: 150px;}
.frm_address2{display: flex;}
.frm_address2 input{width: 50%;}
#compleprove{color: green;}
#failedprove{color: red;}
</style>
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
		<div class = "row c_center">
			<div class="col-sm-8">
                <h4 class="font-alt">회원가입</h4>
                <hr class="divider-w mb-10">
                <form class="form">
				  <div class="form-group frm_registername">
                    <input class="form-control" id="username" type="text" name="username" placeholder="이름"/>
                  </div>
                  <div class="form-group frm_register">
                    <input class="form-control" id="email" type="text" name="email" placeholder="Email(아이디)"/>
                    <input class="form-control" id="proveemail" type="button" name="proveemail" value="이메일 인증"/>
                  </div>
                  <div class="form-group frm_registercode">
                    <input class="form-control" id="provenum" type="text" name="provenum" placeholder="인증번호"/>
                    <input class="form-control" id="examinecode" type="button" name="examinecode" value="인증하기"/>
                  	<span id = "compleprove">인증에 성공하였습니다!</span><br>
                  	<span id = "failedprove">인증 실패! 인증코드를 확인해주세요!</span>
                  </div>
                  <div class="form-group frm_registerpwd">
                    <input class="form-control" id="password" type="password" name="password" placeholder="비밀번호"/>
                  </div>
                  <div class="form-group frm_registerpwd">
                    <input class="form-control" id="re-password" type="password" name="re-password" placeholder="비밀번호 확인"/>
                  </div>
                  <div class="form-group frm_address1">
                    <input class="form-control" id="zipcode" type="text" name="zipcode"/>
                    &nbsp;
                    <input class="form-control" id="selectzipcode" type="button" name="selectzipcode" value="우편번호 찾기"/>
                  </div>
                  <div class="form-group frm_address2">
                    <input class="form-control" id="adrs" type="text" name="adrs"/>
                    &nbsp;
                    <input class="form-control" id="adrs2" type="text" name="adrs2" placeholder="상세주소 입력"/>
                  </div>
                  <div class="form-group">
                    <input type="submit" class="btn btn-block btn-round btn-b" value="회원가입하기">
                  </div>
                </form>
              </div>
		</div>
	</div>
</section>
<%@ include file="../inc/bottom.jsp"%>