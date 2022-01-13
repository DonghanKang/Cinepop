<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@include file="../inc/top.jsp"%>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	
<style>
.product_info_img img {
	object-fit: scale-down;
	height: 75px;
}
</style>
<script>
$(function(){
	 		var pdNoArr = [];
			var quantityArr = [];
			var totalPrice = 0;
			<c:forEach var="map" items="${list }">
				pdNoArr.push(${map['PD_NO']});
				quantityArr.push(${map['QUANTITY']});
				totalPrice+=${map['PD_PRICE']}*${map['QUANTITY']};
			</c:forEach> 
			 	
        	 
		  	function requestPay() {
			      // IMP.request_pay(param, callback) 결제창 호출
			      IMP.init("imp99875522"); // 예: imp00000000
			      IMP.request_pay({ // param
			          pg: "html5_inicis",
			          pay_method: "card",
			          merchant_uid: "merchant_"+new Date().getTime(),
			          name: "[시네팝]"+" ${list[0].PD_NAME}"
				          <c:if test="${fn:length(list)>1}">
				          	+" 외 " +"${fn:length(list)-1}건"
				          </c:if>
				      ,
			          amount: 
			        	  <c:forEach var="map" items="${list }">
			        	  	<c:set var="totalVal" value="${totalVal+map['PD_PRICE']*map['QUANTITY']}" />
			        	  </c:forEach>
			        	  
			        	 	${totalVal } ,
			          buyer_email: "gildong@gmail.com",
			          buyer_name: "홍길동",
			          buyer_tel: "010-4242-4242",
			          buyer_addr: "서울특별시 강남구 신사동",
			          buyer_postcode: "01181"
			      }, function (rsp) { // callback
			           if (rsp.success) {
			        	   $.ajax({
								url: "<c:url value='/store/paymentDataInput'/>"
							, type : "POST"
							, traditional : true
							, data   : {
								totalPrice : totalPrice,
							 	pdNoList : pdNoArr,
								quantityList : quantityArr 
							}
							, success : function(res){
								location.href="<c:url value='/store/paymentSuccess' />";
							}
							, error : function(){alert('결제가 완료되지 않았습니다.');}
						}); 
			          } else {
			        	  alert('결제가 완료되지 않았습니다.');
			          }
			      });
			}
		
    		/* $('#card').hide();
    		$('#pay1').click(function(){
    			$('#card').show();
    		}); */
    		
    		$('#allchk').click(function(){
    			if($(this).is(":checked")){
    				$('#chk1').prop("checked", true);
    				$('#chk2').prop("checked", true);
    			}else{
    				$('#chk1').prop("checked", false);
    				$('#chk2').prop("checked", false);
    			}
    		});
    		
    		$('.gray_agree input[type=checkbox]').click(function(){
    			if(!$(this).is(":checked")){
    				$('#allchk').prop("checked", false);
    			}
    		});
    		
    		$('#payBtn').click(function(){
    			if(!$('#chk1').is(":checked") || !$('#chk2').is(":checked")){
    				alert('약관에 모두 동의하셔야 결제가 진행됩니다.');
    			}else{
    				requestPay();
    			}
    		});
    		
    		$('.btn_prv').click(function(){
    			history.back();
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
				<c:forEach var="map" items="${list }">
					<tr>
						<td>
							<div class="product_info_img">
								<img
									src="<c:url value="/resources/images/store/${map['PD_IMAGENAME']} "/>">
								<div>
									<strong class="product_info_name">${map['PD_NAME'] }</strong>
								</div>
							</div>
						</td>
						<td><p>
								<fmt:formatNumber value="${map['PD_PRICE'] }" pattern="#,###" />
								원
							</p></td>
						<td><p>${map['QUANTITY'] }개</p></td>
						<td><p>
								<fmt:formatNumber value="${map['PD_PRICE']*map['QUANTITY']}"
									pattern="#,###" />
								원
							</p></td>
					</tr>
				</c:forEach>
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
					<td><strong><h2>
								<fmt:formatNumber value="${totalVal }" pattern="#,###" />
							</h2> 원</strong></td>
					<td class="pay_back_img"><strong><h2>0</h2>원</strong></td>
					<td><strong class="red_text"><h2>
								<fmt:formatNumber value="${totalVal-0 }" pattern="#,###" />
							</h2> 원</strong></td>
				</tr>
			</table>
		</div>
		<!-- <div>
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
    </div> -->
		<div class="chk_wrap">
			<label for="allchk"> <input type="checkbox" name="allchk"
				id="allchk" class="option-input checkbox"> 주문정보/결제 대행 서비스 약관
				모두 동의
			</label>
			<dl class="gray_agree">
				<dt>
					<label for="chk1"><input type="checkbox" name="chk1"
						id="chk1" class="option-input checkbox"> 기프티콘 구매 동의</label>
				</dt>
				<dd>기프트콘 발송 및 CS처리 등을 이해 수신자로부터 CINEPOP에 수신자의 휴대전화번호를 제공하는 것에
					대한 적합한 동의를 받습니다.</dd>
				<dt>
					<label for="chk2"><input type="checkbox" name="chk2"
						id="chk2" class="option-input checkbox"> 결제대행 서비스 약관 모두 동의</label>
				</dt>

			</dl>
			<div class="t_center btn_wrap">
				<a class="btn_prv"> <img alt="이전화면으로 이동"
					src="http://www.cgv.co.kr/CDN/R2014/images/giftstore/common/btn_prev.png">
					이전화면
				</a>
				<button type="button" id="payBtn" class="d_btn">결제하기</button>
			</div>

			<form method="post" action="<c:url value='/store/paymentSuccess' />">
				<input type="hidden" name="totalPrice" value="${totalVal }">
				<input type="hidden" name="pdNo" value="${totalVal }"> 
				<input type="hidden" name="quantity" value="${totalVal }">
			</form>
		</div>
	</div>
</section>


<%@ include file="../inc/bottom.jsp"%>