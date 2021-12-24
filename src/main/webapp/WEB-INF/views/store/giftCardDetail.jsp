<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<section class="module">
  <div class="container">
    <h2>뭘 좋아할지 몰라서 / <span> 온라인 전용</span></h2>
    <script>
    	function pay(){
    		location.href='payment.jsp';
    	}
    </script>
    <div class="row detail_wrap">
    	<div class="mb-sm-20 wow fadeInUp" onclick="wow fadeInUp">
           <div class="store_detail">
             <div class="col-lg-6 sm-6 dtail_img">
             	<img src="https://www.cjone.com/cjmweb/cashimg/2018/12/20181217167ba99886528" alt="뭘좋아할지몰라서"/>
             </div>
             <div class="col-lg-6 sm-6 detail_info_area">
             	<div class="detail_info">
	             	<h3><strong>금액충전형</strong></h3>
	             	<ul class="store_product">
	             		<li><strong>상품구성</strong><span>충전형 선불 카드</span></li>
	             		<li><strong>유효기간</strong><span>구매 또는 최종 충전일로부터 5년</span></li>
	             	</ul>
					<div class="com_custom_selectbox select">
						<select>
							<option>10,000원</option>
							<option>20,000원</option>
							<option>30,000원</option>
						</select>
						<span><strong>10,000원</strong></span>
					</div>
					<h4 class="mb20">총 구매금액 <span>10,000원</span></h4>
					<div class="btn_area t_right">
						<button type="button" class="d_btn" onclick="pay()">구매하기</button>
					</div>
				</div>
             </div>
           </div>
         </div>
    </div>
    <div class="info_use">
    	<dl class="info_use_list">
    		<dt>이용안내</dt>
    		<dd>
    		• CinePop 기프트카드는 일정 금액만큼 구매·충전 후 CinePop 온·오프라인에서 사용 가능한 충전형 선불 카드입니다.
			<br />
			• 스토어를 통해 원하는 금액(최대 10만원)만큼 충전해서 선물하실 수 있습니다.
			<br />
			• 구매 후 전송받으신 기프트카드는,
			<br />
			- CinePop 극장(일부 극장 제외)의 매점,매표,키오스크에서 사용할 수 있으며, 최소 100원 이상 사용 가능합니다.
			<br />
			- CinePop 홈페이지, 모바일웹, CinePop 앱에서 결제수단으로 사용 가능하며, 포토티켓 앱에서는 최소 100원 이상 사용 가능합니다.
			<br />
			- CinePop 온라인에 등록되어 있는 카드의 경우, CinePop 모바일웹 또는 CinePop 앱의 MY > 관람권/카드 > 기프트카드 메뉴의 카드 바코드를 통해서 사용할 수 있습니다.
			<br />
			• 기프트카드를 온라인에 등록하시는 경우,
			<br />
			- 모바일 : CinePop > 관람권/카드 > 기프트카드에서 [카드 추가하기] 버튼 또는 [+] 아이콘 선택
			<br />
			- 홈페이지(PC) : ‘MyCinePop > 관람권/할인쿠폰 관리 > CinePop기프트카드’에서 [CinePop 기프트카드 등록] 버튼 선택
			<br />
			• 카드번호 1개당 1명의 계정에만 온라인에 등록할 수 있습니다.
			<br />
			• 온라인 등록된 카드를 ‘해지하기’를 통해 해지한 경우 기프트카드 MMS를 통해 전송된 ‘카드번호’ 및 ‘비밀번호(또는 PIN번호)’를 입력하여 재등록할 수 있으며, 카드번호 및 비밀번호를 분실한 경우 재등록이 불가능합니다.
			<br />
			• 기프트카드의 유효기간은 구매 또는 최종 충전일로부터 5년입니다
    		</dd>
    	</dl>
    </div>
    <div class="info_use">
    	<dl class="info_use_list">
    		<dt>취소/환불</dt>
    		<dd>
    		• CinePop 온라인 스토어에서 구매한 기프트카드는 구매 후 14일 내 전액 구매(결제) 취소 가능합니다.
			<br />
			• 단, 구매 후 기프트카드를 사용한 이력이 있을 경우 구매 결제 취소가 불가합니다
			<br />
			• CinePop 온라인 스토어에서 연결된 링크를 통해 구매한 ‘CJ 기프트카드’의 경우, CJ ONE 홈페이지(www.cjone.com) 또는 모바일(m.cjone.com)를 통해 확인해 주시기 바랍니다.
			<br />
			• 결제취소/환불 방법
			<br />
			- 결제취소는 모바일App,웹 > MY > 결제내역조회 > 스토어 or 홈페이지 > My CinePop > 스토어 > 결제내역의 해당 주문 상세내역에서 가능합니다.
			<br />
			- CinePop 온라인에서 ‘충전’한 충전 금액은기프트카드 충전 후 14일 내 전액 충전(결제) 취소 가능합니다.
			<br />
			- 단, 충전 취소 요청 시 해당 기프트카드의 잔액이 충전한 금액보다 적을 경우 충전 결제 취소가 불가합니다.
			<br />
			- 잔액 환불은 최종 구매(충전) 후 합계 잔액 기준 60% 이상 사용 시 신청 가능합니다.
			<br />
			- 단, 환불 금액은 구매액을 기준으로 ‘구매한 금액’을 기준으로 사용한 비율에 따라 계산하여 남은 비율의 금액을 환불합니다.
			<br />
			• 수신자는 선물받은 기프트카드의 수신거절을 수신일로부터 14일 이내에 요청할 수 있으며, 이 경우 구매자에게 취소 및 환불에 대한 안내가 이루어집니다.
			<br />
			• 이용/환불 문의 : 나이스정보통신 고객센터(1644-9760), CJ ONE 고객센터(1577-8888)
			<br />
			• 상담 가능 시간 : 평일 09:00~18:00, 토/일/공휴일 휴무
    		</dd>
    	</dl>
    </div>
  </div>
</section>
  <script src="../titan-master/ticketing/js/popper.js"></script>
  <script src="../titan-master/ticketing/js/bootstrap.min.js"></script>
  <script src="../titan-master/ticketing/js/main.js"></script>


<%@ include file="../inc/bottom.jsp"%>