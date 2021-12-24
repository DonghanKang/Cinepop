<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script>
/*각 페이지로 이동*/
function giftcard(){ //주문내역확인
	location.href="giftCard";
}

function editInfo(){//내정보 수정
	location.href="editInfo.jsp";
}
function coupon(){//쿠폰
	location.href="coupon.jsp";
}
function Withdrawal(){//회원탈퇴
	location.href="Withdrawal.jsp";
}
</script>
<section class="module">
  <div class="container">
    <div class="mt20 tb_area w1200">
            <div class="col-lg-6 sm-6 page_area mb20" onclick="giftcard()">
                <div class="page_cont">
	            <p><strong class="m_txt">GiftCard / </strong> 기프트 카드</p>
                    <div class="gift_card">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 sm-6 page_area mb20">
                <div class="page_cont">
                    <p><strong class="m_txt">Popcorn / </strong> 팝콘</p>
                	<div class="popcorn">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 sm-6 page_area">
                <div class="page_cont">
                    <p><strong class="m_txt">Drink / </strong> 음료</p>
                    <div class="drink"></div>
                </div>
            </div>
            <div class="col-lg-6 sm-6 page_area">
                <div class="page_cont">
                    <p><strong class="m_txt">Snack / </strong> 스낵</p>
					<div class="snak"></div>                    
                </div>
            </div>
    </div>
  </div>
</section>
  <script src="../titan-master/ticketing/js/popper.js"></script>
  <script src="../titan-master/ticketing/js/bootstrap.min.js"></script>
  <script src="../titan-master/ticketing/js/main.js"></script>


<%@ include file="../inc/bottom.jsp"%>