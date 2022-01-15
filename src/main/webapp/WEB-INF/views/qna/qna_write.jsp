<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp" %>
<section class="module">
<script type="text/javascript">
$(function(){
    $('form[name=admin_notice]').submit(function(){
       $('.infobox').each(function(idx, item){
          if($(this).val().length<1){
             alert($(this).prev().html() + "을(를) 입력하세요");
             $(this).focus();
             event.preventDefault();
             return false;  //each 탈출
          }
       });
    });
    
    $('#qnaWrite').click(function(){
        
      //1. editor의 값을 잡아온다
      var content = $('#content').val(); // 1. 데이터잡는 값인지는 제쪽에서 확인이 안되요 ㅠㅠ
      //2. input name="content에 넣는다"
      $("#content").val(content);
      
      //3.form 태그의 action값을 list.jsp로 넣는다
      $('form[type=admin_notice]').attr('action','qna_list.jsp');
       
       //4. 서브밋
       $('form[name=admin_notice]').submit();


       //location.href='list.jsp';   
    });
    
 });
</script>
   <div class="container">
   <h2 class="mb50">공지사항 글작성</h2>
      <fieldset>
         <form name="admin_notice" action="<c:url value='/qna/qna_write'/>" method="post" enctype="multipart/form-data">
            <input type="hidden" id="email" name="email" value=""> 
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
           <input type="submit" id="qnaWrite" class="black_btn" value="글등록" />
           <input type="Button" value="글목록" class="black_btn" onclick="location.href='<c:url value='qna_list' />'" />
       </div>
   </div>
</section>
<%@ include file="../inc/bottom.jsp"%>