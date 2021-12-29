<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp" %>

<section class="module">
   <div class="container">
    	<h2 class="mb50">공지사항</h2>
   		<div class="col-sm-12">
	   		<div class="detail_area mb50">
	   			<div class="detail_head">
	   				<div>제목 | 제목제목제목</div>
	   				<div>등록일 | 2021-11-21</div>
	   				<div>조회수 | 20</div>
	   			</div>
	   			<div class="detail_cont">
	   				안녕하십니까. 롯데시네마 입니다.<br />
					2D 일반 관람권 운영 정책이 아래와 같이 변경 되어<br />
					안내 드리오니 이용에 참고 부탁드립니다.<br />
					■ 기존<br />
					ㆍ2D 일반 관람권은 2D 일반 영화에 한하여 적용 가능<br />
					■변경<br />
					ㆍ샤롯데, 씨네패밀리를 제외한 스페셜관, 스페셜좌석 (씨네커플석, 씨네컴포트석), 3D 상영 영화 예매 시 차액 결제 후 2D 일반 관람권 적용 가능<br />
					ㆍ차액 : 동일 회차 기준 2D 일반 요금과의 차이 금액<br />
					※ 유의 사항<br />
					ㆍ롯데시네마 채널(영화관/본사, 홈페이지, 모바일앱/웹 ※혈액원 등 기업 판매 포함)을 통해<br />
  					유료 구매한 2D 일반 관람권에 한하여 적용<br />
  					(외부 채널에서 구매한 모바일 관람권, 이벤트 등을 통해 무료 수령한 관람권 제외)<br />
					감사합니다.<br />
	   			</div>
	   			<div class="btn_area t_center mt50">
	   				<a href="<c:url value='/qna/qna_list'/>" class="a_black_btn">목록</a>
	   			</div>
	   		</div>
   		</div>
   </div>
</section>
<%@ include file="../inc/bottom.jsp"%>