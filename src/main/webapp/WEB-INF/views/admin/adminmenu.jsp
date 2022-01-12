<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp"%>
<script>
	/*각 페이지로 이동*/
	function insertmovie(){ //영화 등록
		location.href="insertmovie";
	}
	
	function pdWrite(){//상품 등록
		location.href="../store/pdWrite";
	}
	function qna(){//공지사항 등록
		location.href="../qna/qna_write";
	}
	function Event(){//이벤트 글 등록
		location.href="../event/event_write";
	}
</script>

<section class="module">
	<div class="container">
		<!--마이페이지-->
		<div class="mt20 tb_area row">
			<div class="col-lg-6 sm-6 page_area2" onclick="insertmovie()">
				<div class="page_cont2">
					<div class="line"></div>
					<p>
						<strong class="m_txt">Insert Movie / </strong> 영화 등록하기
					</p>
					<p>
						영화를 등록 할 수 있습니다.
					</p>
				</div>
			</div>
			<div class="col-lg-6 sm-6 page_area2" onclick="pdWrite()">
				<div class="page_cont2">
					<div class="line"></div>
					<p>
						<strong class="m_txt"> Add Products/ </strong> 상품 등록하기
					</p>
					<p>
						상품을 등록 할 수 있습니다.
					</p>
				</div>
			</div>
			<div class="col-lg-6 sm-6 page_area2" onclick="qna()">
				<div class="page_cont2">
					<div class="line"></div>
					<p>
						<strong class="m_txt">Confirm Notice / </strong> 공지사항 등록하기
					</p>
					<p>
						공지사항을 등록합니다.
					</p>
				</div>
			</div>
			<div class="col-lg-6 sm-6 page_area2" onclick="Event()">
				<div class="page_cont2">
					<div class="line"></div>
					<p>
						<strong class="m_txt">Confirm Event / </strong> 이벤트 글 등록하기
					</p>
					<p>
						이벤트 글을 작성합니다.
					</p>
				</div>
			</div>
			
			</div>
		</div>
		<!--//마이페이지-->
</section>

<%@include file="../inc/bottom.jsp"%>