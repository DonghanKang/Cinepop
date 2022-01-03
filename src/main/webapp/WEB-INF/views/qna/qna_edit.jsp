<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script type="text/javascript">
	function back(){
		history.back(-1);
	}
</script>
<section class="module">
	<div class="container">
		<h2>1:1 글수정</h2>
		<form id="editform" name="update" action="" method="post">
	        <div class="input_area">
	            <div class="p_title">
	                <label>제 목</label>
	            </div>
	            <div class="p_input">
	                <input id="title" type="text" name="title" placeholder="제목제목제목" class="t_input w100">
	            </div>
	        </div>
	        <!-- <div class="input_area">
	            <div class="p_title">
	                <label>이메일</label>
	            </div>
	            <div class="p_input">
	                <input id="email" type="email" name="email" class="t_input" placeholder="o3o122@naver.com" required="required" disabled="disabled"><span class="invalidText"></span>
	            </div>
	        </div> -->
	        
	        <!-- <div class="input_area">
	            <div class="p_title">
	                <label>비밀번호</label>
	            </div>
	            <div class="p_input">
	                <input id="pw1" type="password" name="pw1" class="t_input" /><span class="invalidText"></span>
	            </div>
	        </div> -->
	        
	        <div class="input_area">
	            <div class="p_title">
	                <label>작성자</label>
	            </div>
	            <div class="p_input">
	                <input id="write" type="text" name="write" placeholder="CinePop" class="t_input" disabled="disabled"/>
	            </div>
	        </div>
	        <div class="input_area">
	            <div class="p_title">
	                <label>내 용</label>
	            </div>
	            <div class="p_input">
	            	<textarea rows="10" cols="105" class="w100"></textarea>
	            </div>
	        </div>
	        <!-- <div class="input_area">
	            <div class="p_title">
	                <label>전화번호</label>
	            </div>
	            <div class="p_input">
	                <input type="text" name="tel" value="" class="t_input" />
	            </div>
	        </div> -->
            <div class="btn_all t_center">
                <button type="submit" class="black_btn" id="infoedit_btn">글수정</button>
                <button type="button" class="black_btn" onclick="back()">취소</button>
            </div>
       	</form>
	</div>
</section>
<%@include file="../inc/bottom.jsp"%>

	