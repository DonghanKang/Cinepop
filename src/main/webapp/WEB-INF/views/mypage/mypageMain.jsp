<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script src="<%=request.getContextPath() %>/js/jquery-3.6.0.js"></script>
<script>
	/*각 페이지로 이동*/
	function order(){ //결제내역확인
		location.href="paymentDetail";
	}
	function accountDetail(){//내정보 조회
		location.href="accountDetail";
	}
	function coupon(){//쿠폰
		location.href="coupon";
	}
	function Withdrawal(){//회원탈퇴
		location.href="withdrawal";
	}
</script>

<section class="module">
	<div class="container">
		<!--마이페이지-->
		<div class="mt20 tb_area row">
			<div class="col-lg-6 sm-6 page_area2" onclick="order()">
				<div class="page_cont2">
					<div class="line"></div>
					<p>
						<strong class="m_txt">Payment details / </strong> 결제내역
					</p>
					<p>
						고객님의 결제내역을 확인하실 수 있습니다.
					</p>
				</div>
			</div>
			<div class="col-lg-6 sm-6 page_area2" onclick="accountDetail()">
				<div class="page_cont2">
					<div class="line"></div>
					<p>
						<strong class="m_txt"> info/ </strong> 내정보조회
					</p>
					<p>
						고객님의 정보를 조회하실 수 있습니다.
					</p>
				</div>
			</div>
			<div class="col-lg-6 sm-6 page_area2" onclick="coupon()">
				<div class="page_cont2">
					<div class="line"></div>
					<p>
						<strong class="m_txt">coupon / </strong> 쿠폰
					</p>
					<p>
						고객님의 쿠폰을 등록 또는 조회하실 수 있습니다.
					</p>
				</div>
			</div>
			<div class="col-lg-6 sm-6 page_area2" onclick="Withdrawal()">
				<div class="page_cont2">
					<div class="line"></div>
					<p>
						<strong class="m_txt">Withdrawal / </strong> 회원탈퇴
					</p>
					<p>
						회원탈퇴 페이지 입니다.
					</p>
				</div>
			</div>
		</div>
		<!--//마이페이지-->
	</div>
</section>

<%@include file="../inc/bottom.jsp"%>