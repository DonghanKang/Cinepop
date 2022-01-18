<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="../inc/top.jsp" %>
<script type="text/javascript">
    $(function (){
        $('#delete_btn').click(function (){
            if(!confirm("게시물을 삭제하시겠습니까?")){
                event.preventDefault();
            }
        });
    });
</script>
<section class="module">
   <div class="container">
    	<h2 class="mb50">1:1 문의하기</h2>
    	<input type="hidden" value = "${vo.qno }" name="Qno">
   		<div class="col-sm-12">
	   		<div class="detail_area mb50">
	   			<div class="detail_head">
	   				<div>등록일 | ${vo.qregdate}</div>
	   				<div>조회수 | ${vo.qreadcount}</div>
	   			</div>
	   			<div class="detail_cont">
	   				${vo.qcontent}
	   			</div>
	   			
	   			<c:if test="${!empty vo.qdelflag }">
	   			<div class="detail_cont">
	   				<div>답변</div>
	   				<div>${vo.qdelflag }</div>
	   			</div>
	   				</c:if>
	   			<div class="btn_area t_center">
	   			<form action="<c:url value="/questionAnser/questionUser_detail?Qno=${vo.qno}"/>" method="post">
	   				<c:if test="${!empty sessionScope.adminUserid }">
	   				<a class="a_black_btn" href="<c:url value='/questionAnser/questionUser_edit?Qno=${vo.qno}'/>">답변</a>
	   				</c:if>
	   				<a href='<c:url value="/questionAnser/questionUser_List"/>' class="a_black_btn">목록</a>
	   				<button type="submit" id="delete_btn" class="black_btn">삭제</button>
	   			</form>
	   			</div>
	   			
	   		</div>
   		</div>
   </div>
</section>
<%@ include file="../inc/bottom.jsp"%>