<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../inc/top.jsp"%>
<section class="module">
<script type="text/javascript">
	function back(){
		history.back(-1);
	}
	
	$('form[name=update]').submit(function(){
	       $('.infobox').each(function(idx, item){
	          if($(this).val().length<1){
	             alert($(this).prev().html() + "을(를) 입력하세요");
	             $(this).focus();
	             event.preventDefault();
	             return false;  //each 탈출
	          }
	       });
	    });
	    
	    $('#qnaEdit').click(function(){
	        
	      //1. editor의 값을 잡아온다
	      var content = $('#content').val(); // 1. 데이터잡는 값인지는 제쪽에서 확인이 안되요 ㅠㅠ
	      //2. input name="content에 넣는다"
	      $("#content").val(content);
	      
	      //3.form 태그의 action값을 list.jsp로 넣는다
	      $('form[type=update]').attr('action','qna_list.jsp');
	       
	       //4. 서브밋
	       $('form[name=update]').submit();

	    });
</script>
	<div class="container">
		<h2>공지사항 글수정</h2>
		<form name="update" action="<c:url value='/qna/qna_edit'/>" method="post" enctype="multipart/form-data">
			<input type="hidden" id="email" name="email" value="">
			<input type="hidden" name="qNo" value="${vo.qNo }">
			<div class="input_area">
				<div class="p_input2">
					<input type="text" name="title" class=" w100" value="${vo.title }">
				</div>
			</div>
			<script src="../ckeditor5/ckeditor.js"></script>
			<textarea name="content" id="content">${vo.content }</textarea>
			<script>
	            	ClassicEditor
	            		.create(document.querySelector('#content'))
	            		.catch(error => {
	            			console.error(error)
	            		});
	            </script>
		<div class="btn_all t_center mt50">
			<button type="submit" id="qnaEdit" class="black_btn" >글수정</button>
			<button type="button" class="black_btn" onclick="back()">취소</button>
		</div>
		</form>
	</div>
</section>
<%@include file="../inc/bottom.jsp"%>

