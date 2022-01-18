<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp" %>
<section class="module">
   <div class="container">
   <h2 class="mb50">1:1 문의하기</h2>
      <fieldset>
         <form name="admin_notice" action="<c:url value='/questionAnser/questionUser_write'/>" method="post" >
            <input type="hidden" id="email" name="email" value="${sessionScope.userid} }">
               <div class="input_area">
                   <div class="p_input2">
                       <input type="text" name="Qtitle"  class=" w100">
                   </div>
               </div>
               <script src="../ckeditor5/ckeditor.js"></script>
	            <textarea name="Qcontent" id="content"></textarea>
	            <script>
	            	ClassicEditor
	            		.create(document.querySelector('#content'))
	            		.catch(error => {
	            			console.error(error)
	            		});
	            </script>
	            <div class="btn_all t_center mt50">
		           <input type="submit" class="black_btn" id="btList" value="글등록" />
		           <input type="Button" value="글목록" class="black_btn" onclick="location.href='questionUser_List'" value="취소"/>
       			</div>
           </form>
      </fieldset>
      
   </div>
</section>
<%@ include file="../inc/bottom.jsp"%>