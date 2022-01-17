<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script src="<%=request.getContextPath() %>/js/jquery-3.6.0.js"></script>
<script>
	function back(){
		history.back(-1);
	}
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
		            <div class="p_title">
		                <label>주소</label>
		            </div>
		            <div class="p_input">
		            	<div><strong>${vo.postcode1 }</strong> ${vo.address } ${vo.detailAddress1 }</div>
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
		        <div class="input_area">
		            <div class="p_title">
		                <label>포인트</label>
		            </div>
		            <div class="p_input">
		                ${vo.point}
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