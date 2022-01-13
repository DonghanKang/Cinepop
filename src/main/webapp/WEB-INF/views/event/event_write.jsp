<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp" %>

<style>
.write_display{display:flex;margin-bottom:10px; padding:30px 0; border-bottom:1px solid #ccc; }
.write_display:last-child{border-bottom:none;}
.write_display .p_title{width:12%;}
.write_display input{width:88%;}
.write_display textarea{width:88%; padding:20px;}
</style>
<section class="module">
   <div class="container">
   <h2 class="mb50">이벤트 게시판 글쓰기</h2>
         <form name="frmWrite" action="<c:url value='/event/event_write'/>" method="post" enctype="multipart/form-data">
      		<fieldset>
            <input type="hidden" id="email" name="email" value=""> 
               <div class="write_area">
                   <div class="write_display">
						<div class="p_title">
							<label for="title">제목</label>
						</div>
                      	<input type="text" name="title" id="title" class="t_input mr0 infobox">
                   </div>
                   <div class="write_display">
						<div class="p_title">
							<label for="upfile">파일업로드</label>
						</div>
                      	<input type="file" id="upfile" name="upfile"  class="infobox">
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
               </div>
		      <div class="btn_all t_center mt50">
		           <input type="submit" class="black_btn" id="btList" value="글등록" />
		           <input type = "Button" value="글목록" class="black_btn" onclick="location.href='<c:url value='/event/event_list'/>'" value="취소"/>
		       </div>
      			</fieldset>
           </form>
   </div>
</section>
<%@ include file="../inc/bottom.jsp"%>