<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script type="text/javascript">
$(function(){
	history.replaceState({}, null, location.pathname);
	$('input[type=checkbox]').each(function(){
		$(this).click(function(){
			var cnt=$('#result').html();
			var c_cnt=$('input[type=checkbox]:checked').length;
			if(c_cnt>cnt){
				alert('최대인원수를 초과하였습니다');
				return false;
			}
			var price=c_cnt*7000;
			$('.total strong').html(price);
		});
	});
	
	$('.red_btn').click(function(){
		var c_cnt=$('input[type=checkbox]:checked').length;
		var cnt=$('#result').html();
		if(cnt!=c_cnt){
			alert('인원수를 맞춰주세요');
			return false;
		}
		var rand=Math.ceil(Math.random()*100000000000);
		IMP.init("imp05264117");
		IMP.request_pay({
		    pg : 'html5_inicis',
		    pay_method : 'card',
		    merchant_uid: rand, // 상점에서 관리하는 주문 번호
		    name : '${vo.mName}',
		    amount : $('.total strong').html(),
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울특별시 강남구 삼성동',
		    buyer_postcode : '123-456'
		}, function(rsp) {
			var arr=$('input[type=checkbox]:checked').each(function(){
			    $(this).attr('name') });
			var seat="";
			for(var i=0;i<arr.length;i++){
				seat+=arr[i].name+",";
			}
		    if ( rsp.success ) {
		    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
		    	$.ajax({
		    		url: "<c:url value='/ticketing/payments/complete'/>", //cross-domain error가 발생하지 않도록 주의해주세요
		    		type: 'POST',
		    		dataType: 'json',
		    		data: {
			    		imp_uid : rsp.imp_uid,
			    		sNo:${vo.sNo},
			    		seatNo:seat,
			    		tPrice:$('.total strong').html(),
			    		theNum:$('#result').html()
			    		//기타 필요한 데이터가 있으면 추가 전달
		    		}
		    	}).done(function(data) {
		    		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
		    		if ( everythings_fine ) {
		    			var msg = '결제가 완료되었습니다.';
		    			msg += '\n고유ID : ' + rsp.imp_uid;
		    			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
		    			msg += '\결제 금액 : ' + rsp.paid_amount;
		    			msg += '카드 승인번호 : ' + rsp.apply_num;
		    			
		    			alert(msg);
		    		} else {
		    			//[3] 아직 제대로 결제가 되지 않았습니다.
		    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
		    		}
		    	});
		    	location.href="<c:url value='/store/paymentSuccess'/>";
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		        alert(msg);
		    }
		});
	});
});

function count(type)  {
	  // 결과를 표시할 element
	  const resultElement = document.getElementById('result');
	  
	  // 현재 화면에 표시된 값
	  let number = resultElement.innerText;
	  
	  // 더하기/빼기
	  if(type === 'plus') {
	    number = parseInt(number) + 1;
	  }else if(type === 'minus')  {
		$('input[type=checkbox]:checked').prop('checked',false);
		$('.total strong').html(0);
	    number = parseInt(number) - 1;
	    if(number<1){
	    	number=1;
	    }
	  }
	  
	  // 결과 출력
	  resultElement.innerText = number;
}

</script>
<div class="module" id="popup02">
		<div class="seat">
			<div class="seat_head">
				<h3>인원/좌석선택</h3><span class="dot_point">인원은 최대 8명까지 선택 가능합니다.</span>
			</div>
			<div class="m_pnum">
				<div class="movie_infor">
					<h6 class="hidden">예매 정보</h6>
					<span class="thm">
					<img src="<c:url value='/resources/images/movie/${vo.image1 }'/>">
					</span>
					<div class="group_infor">
						<div class="bx_tit">
							<span class='grade_${vo.rating }'>
								<c:if test="${vo.rating!=0 }">${vo.rating }</c:if>
								<c:if test="${vo.rating==0 }">전체</c:if>
							 </span>
							<strong>${vo.mName }</strong>
						</div>
						<dl>
							<dt>일시</dt>
							<dd class="sub_info1"><fmt:formatDate value="${vo.sDate }" pattern="MM월 dd일 (E)"/><br>
							<span class="time">${param.time }</span></dd>
							<dt>영화관</dt>
							<dd class="sub_info1">시네팝 ${vo.tName }점 ${vo.auditorium }</dd>
						</dl>
					</div>
					<div class="">
						<strong>인원</strong>
						<div class="pm_area">
							<input type='button' onclick='count("minus")' value='-' class="btn_mins"/>
							<div id='result'>1</div>
							<input type='button'onclick='count("plus")' value='+' class="btn_plus"/>
						</div>
					</div>
				</div>
			</div>
			<style>
				.seat_area{text-align:center; padding:50px 0;}
				.s_uppercase{color:#fff; font-weight:600; margin-right:20px;}
			</style>
			<div class="select_seat">
				<p class="colorW">좌석 선택 후 결제하기 버튼을 클릭하세요</p>
				<div class="gray_box"><h3>SCREEN</h3></div>
				<div class="seat_area">
					<c:forEach var="i" begin="1" end="5">
						<c:set var="row" value=""></c:set>
						<c:choose>
							<c:when test="${i == 1}">
								<c:set var="row" value="A"></c:set>
							</c:when>							
							<c:when test="${i == 2}">
								<c:set var="row" value="B"></c:set>
							</c:when>							
							<c:when test="${i == 3}">
								<c:set var="row" value="C"></c:set>
							</c:when>							
							<c:when test="${i == 4}">
								<c:set var="row" value="D"></c:set>
							</c:when>							
							<c:when test="${i == 5}">
								<c:set var="row" value="E"></c:set>
							</c:when>							
						</c:choose>
						<div class="">
							<span class="s_uppercase">${row}</span>
							<c:forEach var="j" begin="1" end="13">
								<c:set var="cnu" value="false"/>
								<c:set var="seatno" value="${row }${j }"/>
								<c:forEach var="seat" items="${seatList }">
									<c:if test="${seatno eq seat}">
										<input type="checkbox" name="${seatno}" disabled>
										<c:set var="cnu" value="true"/>
									</c:if>
								</c:forEach> 
								<c:if test="${not cnu }">
									<input type="checkbox" name="${seatno}">
								</c:if>
							</c:forEach>
						</div>
					</c:forEach>
					
				</div>
			</div>
			<div class="seat_footer">
				<div class="total">총 합계 <strong>0</strong> 원</div>
				<div class="btn_area"><input type="button" value="결제하기" class="red_btn"></div>
			</div>
		</div>
	  </div>   
<%@ include file="../inc/bottom.jsp"%>