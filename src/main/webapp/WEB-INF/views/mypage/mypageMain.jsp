<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script src="<%=request.getContextPath() %>/js/jquery-3.6.0.js"></script>
<script>
	/*각 페이지로 이동*/
	function order(){ //결제내역확인
		location.href="paymentDetail";
	}
	
	function editInfo(){//내정보 수정
		location.href="editInfo";
	}
	function coupon(){//쿠폰
		location.href="coupon";
	}
	function Withdrawal(){//회원탈퇴
		location.href="withdrawal";
	}
</script>
<style>
.page_area2{cursor: pointer;}
.page_area2:last-of-type{margin-top:30px;}
.page_area2:nth-of-type(3){margin-top:30px;}
.page_area2 .page_cont2{}
.line{width:10%; height:4px; background: #000;}
.page_area2 .page_cont2 p{line-height:19px; margin:10px 0;}
.page_area2 .page_cont2 p .m_txt{font-size:24px; font-weight: 600; color:#000;}
.page_cont2{ padding:50px; border:1px solid #ccc;}
.page_cont2:hover{border: 2px solid #000; /*transition: all 0.4s ease-out;*/}  
</style>
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
			<div class="col-lg-6 sm-6 page_area2" onclick="editInfo()">
				<div class="page_cont2">
					<div class="line"></div>
					<p>
						<strong class="m_txt"> info/ </strong> 내정보수정
					</p>
					<p>
						고객님의 정보를 수정하실 수 있습니다.
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