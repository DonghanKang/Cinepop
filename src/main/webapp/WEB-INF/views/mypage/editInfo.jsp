<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="<c:url value='/resources/js/daumPostCode.js'/>"></script>
<script type="text/javascript">
	function back(){
		history.back(-1);
	}
	$(function() {
		
		$('#editform').click(function (){
			$('#sample6_postcode').attr('disabled', false);
			$('#sample6_address').attr('disabled', false);
			console.log($('#sample6_postcode').attr('disabled'));
			console.log($('#sample6_address').attr('disabled'));
		});
		
	});
</script>
<section class="module">
	<div class="container">
		<h2>내정보 수정</h2>
		<div>
            <form id="editform" name="update" action="<c:url value='/mypage/editInfo'/>" method="post">
		        <div class="input_area">
		            <div class="p_title">
		                <label>이름</label>
		            </div>
		            <div class="p_input">
		                <input id="name" type="text" name="name" placeholder="" class="t_input" required="required" disabled="disabled" value="${vo.aName}">
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>회원등급</label>
		            </div>
		            <div class="p_input">
		                <input id="name" type="text" name="name" placeholder="" class="t_input" required="required" disabled="disabled" value="${vo.gName}">
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>이메일</label>
		            </div>
		            <div class="p_input">
		                <input id="email" type="email" name="email" class="t_input" placeholder="" required="required" disabled="disabled" value="${vo.id}"><span class="invalidText"></span>
		            </div>
		        </div>
		        
		        <div class="input_area">
		            <div class="p_title">
		                <label>비밀번호</label>
		            </div>
		            <div class="p_input">
		                <input id="pw1" type="password" name="pw1" class="t_input" value="${vo.pwd }"/><span class="invalidText"></span>
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>비밀번호 확인</label>
		            </div>
		            <div class="p_input">
		                <input id="pw2" type="password" name="pw2" class="t_input" value="${vo.pwd }"/><span class="invalidText"></span>
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>주소</label>
		            </div>
		            <div class="p_input">
		                <input id="sample6_postcode" type="text" name="postcode1" class="t_input" disabled="disabled" readonly="readonly" style="background-color : #f5f6fa;" value="${vo.postcode1 }"/>
						<button type="button"  class="black_btn" onclick="sample6_execDaumPostcode()">우편번호찾기</button><br>
						<input id="sample6_address" type="text" name="address" required="required" disabled="disabled" class="t_input mt20" readonly="readonly" style="background-color : #f5f6fa;" value="${vo.address }"/>
						<input id="sample6_detailAddress" type="text" name="detailAddress1" value="${vo.detailAddress1 }" class="t_input mt20"/>
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>전화번호</label>
		            </div>
		            <div class="p_input">
		                <input type="text" name="tel" value="${vo.tel }" class="t_input" />
		            </div>
		        </div>
		        
		    
            <div class="btn_all t_center">
                <button type="submit" class="black_btn" id="infoedit_btn">수정</button>
                <button type="button" class="black_btn" onclick="back()">취소</button>
            </div>
            </form>
        </div>
	</div>
</section>
<%@include file="../inc/bottom.jsp"%>