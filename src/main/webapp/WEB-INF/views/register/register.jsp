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
   var chkId = false;
   var chkpw1 = false;
   var chkpw2 = false;
   var dadres= false;
   $('#joinform').submit(function(e) {
      if(chkId) {
         alert('이메일을 확인해주세요');
         $('#id').focus();
         e.preventDefault();
         e.stopPropagation()
         return;
      }
      
      if(!chkpw1) {
         alert('비밀번호를 확인해주세요');
         $('#pwd').focus();
         e.preventDefault();
         e.stopPropagation();
         return;
      }
      
      if(!chkpw2) {
         alert('비밀번호를 확인해주세요');
         $('#pwd2').focus();
         e.preventDefault();
         e.stopPropagation();
         return;
      }
      
      if(dadres) {
         alert('주소를 확인해주세요');
         $('#detailAddress1').focus();
         e.preventDefault();
         e.stopPropagation();
         return;
      }
      
      $('#sample6_postcode').attr('disabled', false);
      $('#sample6_address').attr('disabled', false);
      console.log($('#sample6_postcode').attr('disabled'));
      console.log($('#sample6_address').attr('disabled'));
   });

   
   
   $('#pwd').on('blur', function() {
      if(!is_validate_pw($('#pwd').val())) {
         changeInvalid($('#pwd'));
         $('#pwd').next().html('비밀번호는 최소 1개의 영문자, 숫자, 특수문자가 포함되어야 합니다.');
         chkpw1 = false;
      } else {
         changeValid($('#pwd'));
         chkpw1 = true;
      }
      
   });
   
   $('#pwd2').on('blur', function() {
      if($('#pwd').val() !== $('#pwd2').val()) {
         changeInvalid($('#pwd2'));
         $('#pwd2').next().html('비밀번호 확인이 일치하지 않습니다');
         chkpw2 = false;
      } else {
         changeValid($('#pwd2'));
         chkpw2 = true;
      }
      
   });
   
   function changeValid(target) {
      target.removeClass('invalid');
      target.addClass('valid');
      target.next().html('');
   }
   
   function changeInvalid(target) {
      target.removeClass('valid');
      target.addClass('invalid');
   }
   
   function is_validate_email(id) {
      const pattern = new RegExp(/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i);
      return pattern.test(id);
   }
   
   function is_validate_pw(pwd) {
      const pattern = new RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[\da-zA-Z$@$!%*#?&]{8,}/g);
      return pattern.test(pwd);
   }
   
 
   });
</script>
<section class="module">
   <div class="container">
      <h2 class="tit_text">회원가입</h2>
      <hr class="mb20 black">
      <div>
         <form id="joinform"  action="<c:url value='/register/register'/>" method="post">
              <div class="input_area">
                  <div class="p_title">
                      <label for="aName">이름</label>
                  </div>
                  <div class="p_input">
                      <input id="aName" type="text" name="aName" placeholder="" class="t_input" required="required">
                  </div>
              </div>
              <div class="input_area">
                  <div class="p_title">
                      <label>아이디(이메일)</label>
                  </div>
                  <div class="p_input">
                      <input id="id" type="email" name="id" class="t_input" placeholder="email@naver.com" required="required"><span class="invalidText"></span>
                      <!-- <div class="select display_inflex">
                         <select name="email2" id="email2"  title="이메일주소 뒷자리">
                           <option value="naver.com">naver.com</option>
                           <option value="hanmail.net">hanmail.net</option>
                           <option value="nate.com">nate.com</option>
                           <option value="gmail.com">gmail.com</option>
                           <option value="etc">직접입력</option>
                       </select>
                    </div>
                    <input type="text" name="email3" id="email3" title="직접입력인 경우 이메일주소 뒷자리"
                       style="visibility:hidden" class="t_input"> -->
                  </div>
              </div>
              
              <div class="input_area">
                  <div class="p_title">
                      <label>비밀번호</label>
                  </div>
                  <div class="p_input">
                      <input id="pwd" type="password" name="pwd" class="t_input" required="required" /><span class="invalidText"></span>
                  </div>
              </div>
              <div class="input_area">
                  <div class="p_title">
                      <label>비밀번호 확인</label>
                  </div>
                  <div class="p_input">
                      <input id="pwd2" type="password" name="pwd2" class="t_input" required="required" /><span class="invalidText"></span>
                  </div>
              </div>
              
             
              <div class="input_area">
                  <div class="p_title">
                      <label>주소</label>
                  </div>
                  <div class="p_input">
                      <input id="sample6_postcode" type="text" name="postcode1" class="t_input"  value=""  disabled="disabled" />
                  <button type="button"  class="black_btn" onclick="sample6_execDaumPostcode()">우편번호찾기</button><br>
                  <input id="sample6_address" type="text" name="address" value=""  disabled="disabled" class="t_input mt20"/>
                  <input id="sample6_detailAddress" type="text" name="detailAddress1" placeholder="" class="t_input mt20" required="required"/>
                  </div>
              </div>
              <div class="input_area">
                  <div class="p_title">
                      <label>전화번호</label>
                  </div>
                  <div class="p_input">
                      <input type="text" name="tel" value="" class="t_input" required="required"/>
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