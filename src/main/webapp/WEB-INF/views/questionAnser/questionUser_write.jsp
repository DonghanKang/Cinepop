<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp" %>
<section class="module">
   <div class="container">
   <h2 class="mb50">공지사항</h2>
      <fieldset>
         <form name="admin_notice" action="<c:url value='/qna/qna_write.do'/>" method="post" enctype="multipart/form-data">
            <input type="hidden" id="email" name="email" value=""> 
               <!-- <div class="input_area">
               	   <div class="p_title">비밀번호</div>
                   <div class="p_input">
                       <input type="text" name="title"  class="t_input w100 infobox">
                   </div>
               </div>  -->   
               <div class="input_area">
                   <div class="p_input2">
                       <input type="text" name="title"  class=" w100">
                   </div>
               </div>
               <script src="../ckeditor5/ckeditor.js"></script>
	            <textarea name="content" id="content"></textarea>
	            <script>
	            	ClassicEditor
	            		.create(document.querySelector('#content'))
	            		.catch(error => {
	            			console.error(error)
	            		});
	            </script>
           </form>
      </fieldset>
      <div class="btn_all t_center mt50">
           <input type="submit" class="black_btn" id="btList" value="글등록" />
           <input type="Button" value="글목록" class="black_btn" onclick="location.href='qna_list'" value="취소"/>
       </div>
   </div>
</section>
<%@ include file="../inc/bottom.jsp"%>