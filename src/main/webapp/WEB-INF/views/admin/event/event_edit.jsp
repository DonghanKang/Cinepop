<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@include file="../../inc/top.jsp"%>
<script type="text/javascript">

</script>
<section class="module">
	<div class="container">
		<h2>이벤트 게시판 수정</h2>
		<form id="editform" name="update" action="<c:url value='/admin/event/event_edit'/>" method="post" enctype="multipart/form-data">
        <input type="hidden" name="no" value="${param.no}">
		<input type="hidden" name="oldFileName" value="${vo.fileName}">
        <div class="input_area">
            <div class="p_title">
                <label for="title">제 목</label>
            </div>
            <div class="p_input">
                <input id="title" type="text" name="title" placeholder="${vo.title}" class="t_input w100">
            </div>
        </div>
        
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
                <label>파일수정</label>
            </div>
            <div class="p_input">
                <input id="upfile" type="file" name="upfile" />
                <span></span>
                <c:if test="${!empty vo.fileName}">
                	<span>첨부파일을 새로 지정할 경우 기존파일${fileInfo }는 삭제됩니다.</span>
                </c:if>
            </div>
        </div>
        <div class="input_area">
            <div class="p_title">
                <label for="content">내 용</label>
            </div>
            <div class="p_input">
            	<textarea rows="10" cols="105" class="w100" name="content"></textarea>
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
<%@include file="../../inc/bottom.jsp"%>