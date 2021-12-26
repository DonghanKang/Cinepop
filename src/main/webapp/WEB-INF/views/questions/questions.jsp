<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp" %>
<style>
/* Accordion Container */


.accordionTitle {
   padding: 20px; 
   position: relative;
   margin: 0;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 0.8px;
   color: #52616b;
   transition: ease-in-out 0.2s all;
   cursor: pointer;
}

.accordionTitle:hover {
   padding-left: 25px;
} 

/* Accordion Item line */
.accordionTitle:before,
.accordionTitle:after {
   content:'';
   position: absolute;
   height: 2px;
   border-radius: 50px;
   transition: ease-in-out 0.6s all;
   bottom: 0;
   left: 0;
   display: flex;
   justify-content: center;
   align-items: center;
}

.accordionTitle:before {
   width: 100%;
   background-color: #c9d6df;
}
.accordionTitle:after {
   background-image: linear-gradient(90deg, #52616b, #c9d6df);
   width: 0%;
}

.accordionTitle:hover::after {
   width: 100%;
}

/* Accordion Item line - Active */
.accordionTitleActive:after {
   content:'';
   position: absolute;
   height: 2px;
   border-radius: 50px;
   transition: ease-in-out 0.6s all;
   bottom: 0;
   left: 0;
   display: flex;
   justify-content: center;
   align-items: center;
   
}

.accordionTitleActive:after {
   background-image: linear-gradient(90deg, #52616b, #c9d6df);
   width: 100%;
}


/* Accordion Item Icon  */
.accIcon {
   float: right;
   width: 30px;
   height: 30px;
   display: flex;
   margin-top: -3px;
   align-items: center;
   justify-content: center;
}

.accIcon:before,
.accIcon:after {
   content:'';
   position: absolute;
   border-radius: 50px;
   background-color: #c9d6df;
   transition: ease 0.3s all;
}

.accIcon:before {
   width: 2px;
   height: 20px;
}

.accIcon:after {
   width: 20px;
   height: 2px;
}

.accordionTitle:hover .accIcon:before,
.accordionTitle:hover .accIcon:after {
   background-color: #52616b;
}

.accIcon.anime.accIcon:before {
   transform: rotate(90deg);
}

/* Text Content */
.accordion .item .text {
   opacity: 0;
   height: 0;
   padding: 0px 20px;
   position: relative;
   line-height: 24px;
   font-size: 16px;
   font-weight: 200;
   transition: all 0.6s cubic-bezier(.42,.2,.08,1);
   overflow: hidden;
   background-color: #f0f5f9;
   letter-spacing: 0.5px;
}

/* Text Content - Class for JS to hide and show */
.accordion .item .text.show {
   opacity: 1;
   height: auto;
   padding: 25px 20px;
   position: relative;
   z-index: 0;
   border-radius: 0px 0px 3px 3px;
}
.acc_bold_500{font-weight: 550;}
.acc_clr_red{color: red;}
</style>
<script type="text/javascript">
       /*accordion*/
       $(function(){
            // variables
            var accordionBtn = document.querySelectorAll('.accordionTitle');
            var allTexts = document.querySelectorAll('.text');
            var accIcon = document.querySelectorAll('.accIcon');

            // event listener
            accordionBtn.forEach(function (el) {
                el.addEventListener('click', toggleAccordion)
            });

            // function
            function toggleAccordion(el) {
            var targetText = el.currentTarget.nextElementSibling.classList;
            var targetAccIcon = el.currentTarget.children[0];
            var target = el.currentTarget;
            
            if (targetText.contains('show')) {
                targetText.remove('show');
                targetAccIcon.classList.remove('anime');
                target.classList.remove('accordionTitleActive');
            } 
            else {
                accordionBtn.forEach(function (el) {
                    el.classList.remove('accordionTitleActive');
                    
                    allTexts.forEach(function (el) {
                        el.classList.remove('show');
                    })
                    
                    accIcon.forEach(function (el) {
                    el.classList.remove('anime');
                    }) 
                    
                })
                
                    targetText.add('show');
                    target.classList.add('accordionTitleActive');
                    targetAccIcon.classList.add('anime');
            }  
            }
                });
    </script>

<section class="module">
   <div class="container">
         <h2><strong>자주묻는 질문</strong></h2><br>
        <!-- accordion -->
          <ul class="accordion">
      <li class="item">
         <h2 class="accordionTitle">
          <img src="${pageContext.request.contextPath}/resources/images/QNA/Q.png" style="width: 3%">
         <strong>[코로나19] 방역패스 의무 적용에 따른 영화관 이용 변동 안내</strong> <span class="accIcon"></span></h2>
         <div class="text">
          <img src="${pageContext.request.contextPath}/resources/images/QNA/A.png" style="width: 4%">
          	<span class="acc_bold_500">
         	정부의 특별방역대책 및 사회적 거리두기 강화에 따른방역지침이 적용됩니다.<br><br>
			■ '21.12.18(토)부터 일행 당 최대 이용가능 인원수 변경<br>
			ㆍ기존 : 수도권 6인, 비수도권 8인<br>
			ㆍ변경 : 전국 4인<br><br>
			■ '22.01.03(월)부터 접종 완료자(음성 확인자) 기준 추가<br>
			ㆍ백신 3차(부스터) 접종 (접종 당일부터 적용)<br>
			ㆍ백신 2차(얀센 1차) 접종 완료 후 180일 초과 시 이용 제한<br><br>
			■ 방역패스 의무 적용<br>
			ㆍ접종 완료자 및 음성 확인자에 한해서만 영화관 이용 가능<br>
			ㆍ증빙 지참 시 이용 가능(아래 중 1)<br>
			- 백신 3차(부스터) 접종 (접종 당일부터 적용)<br>
			- 백신 2차(얀센 1차) 접종 완료 후 14일 경과 180일 이내<br><br>
			① 14일 경과 : 접종일+15일 부터<br>
			② 180일 이내 : 접종일+180일 자정까지<br>
			③ 2차(얀센 1차) 접종 후 180일 초과 시 이용 제한<br><br>
			- PCR(코로나) 검사 결과 '음성' 확인서 (48시간 이내 발급)<br>
			- 확진 후 완치자 격리 해제 확인서 (격리 해제일로부터 180일 이내)<br>
			- 접종증명ㆍ음성 확인제 예외 확인서(보건소 발급)<br>
			- 만 18세 이하 증빙(학생증, 등본 등) 지참 시<br><br>
			ㆍ상영관 내 취식 금지 (물, 무알콜 음료에 한하여 취식 가능)<br>
			ㆍ영화관 내 모든 상영관 좌석 띄어앉기 적용<br>
			ㆍ일행 당 최대 이용가능 인원<br><br>
			- 수도권 : 6인, 비수도권 : 8인 → 전국 4인<br><br>
			※ 안전한 영화관람을 위해 관람 중 상시 마스크 착용을 부탁드립니다.  
			</span>
		</div>
      </li>
      <li class="item">
         <h2 class="accordionTitle">
         <img src="${pageContext.request.contextPath}/resources/images/QNA/Q.png" style="width: 3%">
         <strong>[코로나19] 영화관 내부에서 취식 가능한가요?</strong> <span class="accIcon"></span></h2>
         <div class="text">
         	<img src="${pageContext.request.contextPath}/resources/images/QNA/A.png" style="width: 4%">
         	<span class="acc_bold_500">
			정부의 코로나19 '특별방역대책 시행'으로 인해
			12월 1일부터 <span class="acc_clr_red">백신패스관을 포함한 전 상영관</span>에서<br>&nbsp;&nbsp;&nbsp;
			<span class="acc_clr_red">[물, 무알콜 음료]에 한해 취식이 가능</span>합니다.
			팝콘, 스낵류등의 음식물 섭취는 불가합니다.
			</span>
		</div>
      </li>
      <li class="item">
         <h2 class="accordionTitle">
         <img src="${pageContext.request.contextPath}/resources/images/QNA/Q.png" style="width: 3%">
         <strong>개인정보는 어디에서 수정할 수 있나요?</strong> <span class="accIcon"></span></h2>
         <div class="text">
         	<img src="${pageContext.request.contextPath}/resources/images/QNA/A.png" style="width: 4%">
         	<span class="acc_bold_500">
			로그인 후, 가능합니다.<br><br>
			홈페이지 상단 오른쪽에 마이페이지 -> 내 정보 수정 클릭 후 이용 가능합니다.
			</span>
		</div>
      </li>
      <li class="item">
         <h2 class="accordionTitle">
         <img src="${pageContext.request.contextPath}/resources/images/QNA/Q.png" style="width: 3%">
         <strong>탈퇴하면 내 개인정보는 모두 삭제 되나요?</strong> <span class="accIcon"></span></h2>
         <div class="text">
         	<img src="${pageContext.request.contextPath}/resources/images/QNA/A.png" style="width: 4%">
         	<span class="acc_bold_500">
         	탈퇴 즉시 고객님의 개인정보는 모두 삭제됩니다.<br>
			단, 전자상거래 및 소비자 권리 보호를 위해 개인정보 외의 거래정보 등은 법률에서 정한 기간 동안 보관될 수 있습니다.
			</span>
		</div>
      </li>
       <li class="item">
         <h2 class="accordionTitle">
         <img src="${pageContext.request.contextPath}/resources/images/QNA/Q.png" style="width: 3%">
         <strong>비회원으로 예매가 가능한가요?</strong> <span class="accIcon"></span></h2>
         <div class="text">
         	<img src="${pageContext.request.contextPath}/resources/images/QNA/A.png" style="width: 4%">
         	<span class="acc_bold_500">
			CinePop 에서는 비회원 예매를 지원하고 있지 않습니다.
			</span>
		</div>
      </li>
      <li class="item">
         <h2 class="accordionTitle">
         <img src="${pageContext.request.contextPath}/resources/images/QNA/Q.png" style="width: 3%">
         <strong>카드로 결제할 경우 환불은 언제 되나요?</strong> <span class="accIcon"></span></h2>
         <div class="text">
         <img src="${pageContext.request.contextPath}/resources/images/QNA/A.png" style="width: 4%">
         <span class="acc_bold_500">
         ■ 환불안내<br><br>
 		ㆍ 신용카드<br>
 		- 결제 후 3일 이내 취소시 승인취소 가능합니다.<br>
 		<span class="acc_clr_red">- 3일 이후 예매 취소 시 영업일 기준 3일 ~7일 이내 카드사에서 환불됩니다.</span><br>
 		<br><br>
		ㆍ 체크카드<br>
 		- 결제 후 3일 이내 취소 시 당일 카드사에서 환불 처리됩니다.<br>
 		<span class="acc_clr_red">- 3일 이후 예매 취소 시 카드사에 따라 3일 ~ 10일 이내 카드사에서 환불됩니다.</span><br>
 		<br><br>
		ㆍ 휴대폰 결제<br>
		<span class="acc_clr_red">- 결제 일자 기준 당월(1일~말일까지) 취소만 가능합니다.</span><br>
		- 익월 취소의 경우 롯데시네마 고객센터(0000-0000)로 문의 주시기 바랍니다.<br>
		<br><br>
		ㆍ카카오페이 간편결제<br>
 		- 카카오페이머니를 사용하신 경우 카카오페이머니 잔액으로 원복됩니다.<br>
		- 카드 결제를 한 경우 카드사 정책에 따라 승인취소가 진행되며,<br>
		&nbsp;&nbsp;&nbsp;3일 이후 매입 취소 시 영업일 기준 3~10일 소요됩니다.<br>
         </span>
         </div>
      </li>
      <li class="item">
         <h2 class="accordionTitle">
         <img src="${pageContext.request.contextPath}/resources/images/QNA/Q.png" style="width: 3%">
         <strong>영화티켓 예매 및 취소는 어떻게 하나요?</strong> <span class="accIcon"></span></h2>
         <div class="text">
         <img src="${pageContext.request.contextPath}/resources/images/QNA/A.png" style="width: 4%">
         <span class="acc_bold_500">
         ■ 티켓예매 (결제 방법)<br>
		ㆍ 홈페이지 예매는 영화 시작시간 20분 전까지 예매 가능합니다.<br>
		ㆍ 모바일 앱/웹 예매는  영화 시작시간까지 예매 가능합니다.<br>
		ㆍ 영화관 현장 예매는   영화 시작시간까지 예매 가능합니다.<br><br><br>
		■ 티켓취소<br>
		ㆍ 홈페이지 취소는 영화 시작시간 20분 전까지 취소 가능합니다.<br>
		ㆍ 모바일 앱/웹 취소는 영화 시작시간 20분 전까지 취소 가능합니다.<br>
		ㆍ 영화관 현장 취소는 영화 시작시간 직전까지 취소 가능합니다.<br><br><br>
		※ 현장에서 티켓으로 출력을 진행한 경우 온라인 취소가 불가능하며,<br><br>
		영화관 매표소 / 스위트샵을 통해 상영시간 전까지 취소 가능합니다.<br><br>
		※ 무대인사가 포함된 영화의 경우 행사의 원활한 진행을 위해 상영시간 24시간 이전부터는 취소가 불가합니다.
         </span>
         </div>
      </li>
      <li class="item">
         <h2 class="accordionTitle">
         <img src="${pageContext.request.contextPath}/resources/images/QNA/Q.png" style="width: 3%">
         <strong>관람등급 안내</strong> <span class="accIcon"></span></h2>
         <div class="text">
         <img src="${pageContext.request.contextPath}/resources/images/QNA/A.png" style="width: 4%">
         <span class="acc_bold_500">
         롯데시네마는 영화 및 비디오 진흥에 관한 법률(이하 영비법)을 준수합니다.<br><br>
		■ 등급 기준<br>
		ㆍ 전체 관람가 : 모든 연령의 관람객이 관람할 수 있는 영화<br>
		ㆍ 12세 관람가 : 만 12세 미만의 관람객은 관람할 수 없는 영화(보호자 동반 시 12세 미만 관람가)<br>
		ㆍ 15세 관람가 : 만 15세 미만의 관람객은 관람할 수 없는 영화(보호자 동반 시 15세 미만 관람가)<br>
		ㆍ 청소년 관람불가 : 만 18세 미만의 관람객은 관람할 수 없는 영화<br><br>
		영비법 29조에 따르면 [만 12세 이상 관람가/ 만 15세 이상 관람가]의 등급이라도<br>
		부모 등 보호자를 동반하는 경우 어린이(유아) 동반이 가능합니다.<br>
		반드시 보호자의 동반이 필요함을 양지하여 주시기 바랍니다.<br><br>
		단, 청소년 관람불가 영화는 보호자 동반과 관계없이<br>
		만 18세 미만이거나 연령 조건을 만족하여도 초중고 재학 중인 청소년 및 영유아 관람이 절대 불가합니다.<br><br>
		영화관 현장에서 연령확인 불가 시 입장이 제한될 수 있습니다.
         </span>
         </div>
      </li>
   </ul>
       <!--// accordion -->
   </div>
</section>
<%@ include file="../inc/bottom.jsp"%>