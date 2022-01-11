<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="<c:url value='/resources/js/daumPostCode.js'/>"></script>
<script type="text/javascript">
	$(function() {
		make_select();
		
		function make_select() {
			var now = new Date(); 
	 		var year = now.getFullYear(); 
	 		var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
	 		var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate()); //년도 selectbox만들기
	 		
	 		for(var i = 1900 ; i <= year ; i++) { 
	 			$('#year').append('<option value="' + i + '">' + i + '년</option>'); 
	 		} // 월별 selectbox 만들기 
	 		for(var i=1; i <= 12; i++) { 
	 			var mm = i > 9 ? i : "0"+i; 
	 			$('#month').append('<option value="' + mm + '">' + mm + '월</option>'); 
	 		} // 일별 selectbox 만들기 
	 		for(var i=1; i <= 31; i++) { 
	 			var dd = i > 9 ? i : "0"+i; 
	 			$('#day').append('<option value="' + dd + '">' + dd+ '일</option>'); 
	 		}
	 		
	 		$("#year > option[value="+year+"]").attr("selected", "true"); 
	 		$("#month > option[value="+mon+"]").attr("selected", "true"); 
	 		$("#day > option[value="+day+"]").attr("selected", "true");
		}
	});
</script>
<section class="module">
	<div class="container">
		<h2>내정보 수정</h2>
		<div>
            <form id="editform" name="update" action="editInfo_ok.jsp" method="post">
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
		                <input id="pw1" type="password" name="pw1" class="t_input" /><span class="invalidText"></span>
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>비밀번호 확인</label>
		            </div>
		            <div class="p_input">
		                <input id="pw2" type="password" name="pw2" class="t_input" /><span class="invalidText"></span>
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>생년월일</label>
		            </div>
		            <div class="p_input">
		                <select id="year" name="yy" class="select"></select>&nbsp; 년 &nbsp;
						<select id="month" name="mm" class="select"></select>&nbsp; 월 &nbsp;
						<select id="day" name="dd" class="select"></select>&nbsp; 일 &nbsp;
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>주소</label>
		            </div>
		            <div class="p_input">
		                <input id="sample6_postcode" type="text" name="postcode1" class="t_input"  value=""  disabled="disabled" />
						<button type="button"  class="black_btn" onclick="sample6_execDaumPostcode()">우편번호찾기</button><br>
						<input id="sample6_address" type="text" name="address_1" value="" required="required" disabled="disabled" class="t_input mt20"/>
						<input id="sample6_detailAddress" type="text" name="detailAddress1" placeholder="" class="t_input mt20"/>
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>전화번호</label>
		            </div>
		            <div class="p_input">
		                <input type="text" name="tel" value="" class="t_input" />
		            </div>
		        </div>
		        
		    
            <div class="btn_all t_center">
                <button type="submit" class="black_btn" id="infoedit_btn">회원정보 수정</button>
                <button type="button" class="black_btn" onclick="back()">취소</button>
            </div>
            </form>
        </div>
	</div>
</section>
<%@include file="../inc/bottom.jsp"%>