<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="<c:url value='/resources/js/daumPostCode.js'/>"></script>
<style>
	.black{background:#000;}
	.tit_text{font-size: 24px;font-weight: 600;}
</style>
<script type="text/javascript">
	$(function() {
		make_select();
		
		$('#email2').change(function(){
			if($(this).val()=="etc"){
				$('#email3').val('');
				$('#email3').css('visibility',"visible");
				$('#email3').focus();
			}else{
				$('#email3').css('visibility',"hidden");
			}
		});
		
		$('#joinform').click(function (){
			$('#sample6_postcode').attr('disabled', false);
			$('#sample6_address').attr('disabled', false);
			console.log($('#sample6_postcode').attr('disabled'));
			console.log($('#sample6_address').attr('disabled'));
		});
		function make_select() {
			var now = new Date(); 
	 		var year = now.getFullYear(); 
	 		var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
	 		var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate()); //년도 selectbox만들기
	 		
	 		for(var i = 1900 ; i <= year ; i++) { 
	 			$('#year').append('<option value="' + i + '">' + i + '년</option>'); 
	 		} // 월별 selectbox 만들기 
	 		for(var i=1; i <= 12; i++) { 
	 			var mm = i > 9 ? i : "0"+i; 
	 			$('#month').append('<option value="' + mm + '">' + mm + '월</option>'); 
	 		} // 일별 selectbox 만들기 
	 		for(var i=1; i <= 31; i++) { 
	 			var dd = i > 9 ? i : "0"+i; 
	 			$('#day').append('<option value="' + dd + '">' + dd+ '일</option>'); 
	 		}
	 		
	 		$("#year > option[value="+year+"]").attr("selected", "true"); 
	 		$("#month > option[value="+mon+"]").attr("selected", "true"); 
	 		$("#day > option[value="+day+"]").attr("selected", "true");
		}
	});
	
	
	
</script>
<section class="module">
	<div class="container">
		<h2 class="tit_text">회원가입</h2>
		<hr class="mb20 black">
		<div>
			<form id="joinform" name="update" action="<c:url value='/register/register'/>" method="post">
		        <div class="input_area">
		            <div class="p_title">
		                <label for="aName">이름</label>
		            </div>
		            <div class="p_input">
		                <input id="aName" type="text" name="aName" placeholder="" class="t_input">
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>아이디(이메일)</label>
		            </div>
		            <div class="p_input">
		                <input id="id" type="email" name="id" class="t_input" placeholder=""><span class="invalidText"></span>
		                <div class="select display_inflex">
			                <select name="email2" id="email2"  title="이메일주소 뒷자리">
					            <option value="naver.com">naver.com</option>
					            <option value="hanmail.net">hanmail.net</option>
					            <option value="nate.com">nate.com</option>
					            <option value="gmail.com">gmail.com</option>
					            <option value="etc">직접입력</option>
				        	</select>
			        	</div>
				        <input type="text" name="email3" id="email3" title="직접입력인 경우 이메일주소 뒷자리"
				        	style="visibility:hidden" class="t_input">
		            </div>
		        </div>
		        
		        <div class="input_area">
		            <div class="p_title">
		                <label>비밀번호</label>
		            </div>
		            <div class="p_input">
		                <input id="pwd" type="password" name="pwd" class="t_input" /><span class="invalidText"></span>
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>비밀번호 확인</label>
		            </div>
		            <div class="p_input">
		                <input id="pwd2" type="password" name="pwd2" class="t_input" /><span class="invalidText"></span>
		            </div>
		        </div>
		        
		        <div class="input_area">
		            <div class="p_title">
		                <label>생년월일</label>
		            </div>
		            <div class="p_input">
		            	<div class="select display_inflex">
		                	<select id="year" name="yy"></select>&nbsp; 년 &nbsp;
		                </div>
		                <div class="select display_inflex">
							<select id="month" name="mm"></select>&nbsp; 월 &nbsp;
						</div>
						<div class="select display_inflex">
							<select id="day" name="dd"></select>&nbsp; 일 &nbsp;
						</div>
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>주소</label>
		            </div>
		            <div class="p_input">
		                <input id="sample6_postcode" type="text" name="postcode1" class="t_input"  value=""  disabled="disabled" />
						<button type="button"  class="black_btn" onclick="sample6_execDaumPostcode()">우편번호찾기</button><br>
						<input id="sample6_address" type="text" name="address" value="" required="required" disabled="disabled" class="t_input mt20"/>
						<input id="sample6_detailAddress" type="text" name="detailAddress1" placeholder="" class="t_input mt20"/>
		            </div>
		        </div>
		        <div class="input_area">
		            <div class="p_title">
		                <label>전화번호</label>
		            </div>
		            <div class="p_input">
		                <input type="text" name="tel" value="" class="t_input" />
		            </div>
		        </div>
		        
		    
            <div class="btn_all t_center">
                <button type="submit" class="black_btn" id="infoedit_btn">확인</button>
                <button type="button" class="black_btn" onclick="back()">취소</button>
            </div>
            </form>
		</div>
	</div>
</section>
<%@ include file="../inc/bottom.jsp"%>