<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script src="<%=request.getContextPath() %>/js/jquery-3.6.0.js"></script>
<script>
	function editInfo(){//내정보 수정
		location.href="editInfo";
	}
</script>
<section class="module">
	<div class="container">
		<h2>내정보 조회</h2>
		<div>
            <form id="detailform" name="detail" action="<c:url value='/mypage/accountDetail'/>" method="post">
		        <div class="input_area">
		            <div class="p_title">
		                <label>이름</label>
		            </div>
		            <div class="p_input">
		                ${vo.aName}
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>회원등급</label>
		            </div>
		            <div class="p_input">
		                ${vo.gName}
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>이메일</label>
		            </div>
		            <div class="p_input">
		                ${vo.id}
		            </div>
		        </div>
		        <div class="input_area">
		        <!-- 생년월일 컬럼이 없다!! -->
		            <div class="p_title">
		                <label>생년월일</label>
		            </div>
		            <div class="p_input">
		                1997년 &nbsp;
						6월 &nbsp;
						16일
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>주소</label>
		            </div>
		            <div class="p_input">
		                <input id="sample6_postcode" type="text" name="postcode1" class="t_input"  value="${vo.postcode1 }"  disabled="disabled" />
						<button type="button"  class="black_btn" onclick="sample6_execDaumPostcode()" style="visibility: hidden;">우편번호찾기</button><br>
						<input id="sample6_address" type="text" name="address_1" value="${vo.address }" required="required" disabled="disabled" class="t_input mt20"/>
						<input id="sample6_detailAddress" type="text" name="detailAddress1" placeholder="${vo.detailAddress1 }" disabled="disabled" class="t_input mt20"/>
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>전화번호</label>
		            </div>
		            <div class="p_input">
		                ${vo.tel}
		            </div>
		        </div>
            <div class="btn_all t_center">
                <button type="button" class="black_btn" id="infoedit_btn" onclick="editInfo()">회원정보 수정</button>
                <button type="button" class="black_btn" onclick="back()">취소</button>
            </div>
            </form>
        </div>
	</div>
</section>
<%@include file="../inc/bottom.jsp"%>