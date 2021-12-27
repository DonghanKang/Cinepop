<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
  <style>
  	
  </style>
  <script>
    	$(function(){
    		$('#card').hide();
    		$('#pay1').click(function(){
    			$('#card').show();
    		});
    	});
    </script>
<section class="module">
  <div class="container">
    <h2>결제하기</h2>
    
    <div>
    	<h3>구매상품 정보</h3>
    	<table class="pay_detail">
    		<colgroup>
    			<col width="35%">
    			<col width="21%">
    			<col width="21%">
    			<col width="21%">
    		</colgroup>
    		<tr>
    			<th scope="row">상품명</th>
    			<th scope="row">판매금액</th>
    			<th scope="row">수량</th>
    			<th scope="row">구매금액</th>
    		</tr>
    		<tr>
    			<td>
    				<div class="product_info_img">
    					<img alt="" src="https://www.cjone.com/cjmweb/cashimg/2018/12/20181217167ba99886528">
    					<div>
	    					<strong class="product_info_name">뭘 좋아할지 몰라서</strong>
	    					<span class="product_info_origin">일반 기프트카드</span>
    					</div>
    				</div>
    			</td>
    			<td><p>11,000 원</p></td>
    			<td><p>1개</p></td>
    			<td><p>11,000 원</p></td>
    		</tr>
    	</table>
    </div>
    <div class="t_center">
	    <table class="total_price_wrap">
	    	<colgroup>
	    		<col width="33.3333%">
	    		<col width="33.3333%">
	    		<col width="33.3333%">
	    	</colgroup>
	    	<tr>
	    		<th scope="row">총 상품 금액</th>
	    		<th scope="row">할인금액</th>
	    		<th scope="row">총 결제 예정금액</th>
	    	</tr>
	    	<tr>
	    		<td><strong><h2>11,000</h2>원</strong></td>
	    		<td class="pay_back_img"><strong><h2>0</h2>원</strong></td>
	    		<td><strong class="red_text"><h2>11,000</h2>원</strong></td>
	    	</tr>
	    </table>
    </div>
    <div>
    	<h3>결제수단</h3>
    	<div class="m_o_payment">
    		<form action="">
	    		<label for="pay1"><input type="radio" name="pay1" id="pay1" class="option-input radio"> 신용카드</label>
	    		<div class="select">
		    		<select id="card">
		    			<option vaule="card1">신한카드</option>
		    			<option vaule="card1">신한카드</option>
		    			<option vaule="card1">신한카드</option>
		    		</select>
	    		</div>
	    		<label for="pay2"><input type="radio" name="pay2" id="pay2" class="option-input radio"> KaKaoPay</label>
    		</form>
    	</div>
    </div>
    <div class="chk_wrap">
    	<form action="<c:url value='/store/payment'/>">
    		<label for="allchk"><input type="checkbox" name="allchk" id="allchk" class="option-input checkbox"> 주문정보/결제 대행 섯비스 약관 모두 동의</label>
			<dl class="gray_agree">
    			<dt>
    				<label for="chk1"><input type="checkbox" name="chk1" id="chk1" class="option-input checkbox"> 기프티콘 구매 동의</label>
				</dt>
				<dd>
					기프트콘 발송 및 CS처리 등을 이해 수신자로부터 CJCGV에 수신자의 휴대전화번호를 제공하는 것에 대한 적합한 동의를 받습니다.
				</dd>
				<dt>
    				<label for="chk2"><input type="checkbox" name="chk2" id="chk2" class="option-input checkbox"> 결제대행 서비스 약관 모두 동의</label>
				</dt>
				
			</dl>
			<div class="t_center btn_wrap">
				<a class="btn_prv" href="<c:url value='giftCardDetail.jsp'/>">
				<img alt="이전화면으로 이동" src="http://www.cgv.co.kr/CDN/R2014/images/giftstore/common/btn_prev.png">
				이전화면</a>
				<button type="" class="d_btn">결제하기</button>
			</div>    		
    	</form>
    </div>
  </div>
</section>
  <script src="../titan-master/ticketing/js/popper.js"></script>
  <script src="../titan-master/ticketing/js/bootstrap.min.js"></script>
  <script src="../titan-master/ticketing/js/main.js"></script>


<%@ include file="../inc/bottom.jsp"%>