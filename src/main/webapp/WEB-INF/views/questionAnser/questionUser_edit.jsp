<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script type="text/javascript">
	function back(){
		history.back(-1);
	}
</script>
<style>
.w70 {width: 70%;}
</style>
<section class="module">
	<div class="container">
		<h2>1:1 글수정</h2>
		<form id="editform" name="update" action="<c:url value="/questionAnser/questionUser_List"/>" method="post">
	        <div class="detail_area mb50">
	   			<div class="detail_head">
	   				<div>등록일 | ${vo.qregdate}</div>
	   				<div>조회수 | ${vo.qreadcount}</div>
	   			</div>
	   			<div class="detail_cont">
	   				${vo.qcontent}
	   			</div>
	   			<div class="detail_cont">
	   				<div>답변</div>
	   				<input type="text" class="t_input w70" name="serialno" maxlength='30' placeholder="최대 30글자">
	   			</div>
	        </div>
	        
            <div class="btn_all t_center">
                <button type="submit" class="black_btn" id="infoedit_btn">글등록</button>
                <button type="button" class="black_btn" onclick="back()">취소</button>
            </div>
       	</form>
	</div>
</section>
<%@include file="../inc/bottom.jsp"%>

	