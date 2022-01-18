<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp" %>
<style>
.t_left{text-align:left !important;}
.w40{width:40% !important;}
</style>
<title>Insert title here</title>
<section class="module">
	<div class="container">
		<h2>영화 등록 페이지</h2>
		<div class = "row c_center">
			<div class="col-sm-12 frm_login">
				<hr class="divider-w mb-10">
				<form class="form" action="insertmovie" method="post" enctype="multipart/form-data">
					<div class="input_area ">
						<div class="p_title">
		                	<label>영화제목</label>
		            	</div>
		            	<div class="p_input t_left">
							<input class="t_input w40" id="M_NAME" type="text"
							name="M_NAME" placeholder="영화제목" />
						</div>
					</div>
					<div class="input_area">
						<div class="p_title">
		                	<label>감독명</label>
		            	</div>
						<div class="p_input t_left">
							<input class="t_input w40" id="DIRECTOR" type="text"
							name="DIRECTOR" placeholder="감독명" />
						</div>
					</div>
					<div class="input_area">
						<div class="p_title">
		                	<label>출연진</label>
		            	</div>
						<div class="p_input t_left">
							<input class="t_input w40" id="ACTOR" type="text"
							name="ACTOR" placeholder="출연진" />
						</div>
					</div>
					<div class="input_area">
						<div class="p_title">
		                	<label>줄거리</label>
		            	</div>
		            	<div class="p_input t_left">
							<input class="t_input w40" id="STORY" type="text"
							name="STORY" placeholder="줄거리" />
						</div>
					</div>
					<div class="input_area">
						<div class="p_title">
		                	<label>개봉일</label>
		            	</div>
						<div class="p_input t_left">
							<input class="t_input w40" id="S_DATE" type="text"
							name="S_DATE" placeholder="개봉일 ex)2021-12-29" />
						</div>
					</div>
					<div class="input_area">
						<div class="p_title">
		                	<label>상영종료일</label>
		            	</div>
		            	<div class="p_input t_left">
						<input class="t_input w40" id="E_DATE" type="text"
							name="E_DATE" placeholder="상영종료일 ex)2021-12-29" />
						</div>
					</div>
					<div class="input_area">
						<div class="p_title">
		                	<label>영화장르</label>
		            	</div>
		            	<div class="p_input">
							<div class="select">
								<select class="" name="GE_NO">
									 <option value="" selected disabled hidden>장르선택</option>
									<option value="1">멜로</option>
									<option value="2">코미디</option>
									<option value="3">로맨틱 코미디</option>
									<option value="4">액션</option>
									<option value="5">스릴러</option>
									<option value="6">미스터리</option>
									<option value="7">공포</option>
									<option value="8">범죄</option>
									<option value="9">SF</option>
								</select>
							</div>
						</div>
					</div>
					<div class="input_area">
						<div class="p_title">
		                	<label>러닝타임</label>
		            	</div>
		            	<div class="p_input t_left">
							<input class="t_input w40" id="RUNTIME" type="text"
							name="RUNTIME" placeholder="러닝타임 (분)" />
						</div>
					</div>
					<div class="input_area">
						<div class="p_title">
		                	<label>첨부이미지</label>
		            	</div>
		            	<div class="p_input">
							<input class="" id="IMAGE1" type="file"
							name="upfile1" placeholder="첨부이미지" />
						</div>
					</div>
					<div class="input_area">
						<div class="p_title">
		                	<label>첨부이미지2</label>
		            	</div>
		            	<div class="p_input">
							<input class=" " id="IMAGE2" type="file"
							name="upfile2" placeholder="첨부이미지2" />
						</div>
					</div>
					<div class="input_area">
						<div class="p_title">
		                	<label>첨부이미지3</label>
		            	</div>
		            	<div class="p_input">
							<input class="" id="IMAGE3" type="file"
							name="upfile3" placeholder="첨부이미지3" />
						</div>
					</div>
					<div class="input_area">
						<div class="p_title">
		                	<label>동영상URL</label>
		            	</div>
		            	<div class="p_input t_left">
							<input class="t_input w40" id="VIDEOURL" type="text"
							name="VIDEOURL" placeholder="동영상URL" />
						</div>
					</div>
					<div class="t_center mt50">
                    <input type="submit" class=" black_btn " value="등록하기">
                  </div>
				</form>
			</div>
		</div>
	</div>
</section>
<%@ include file="../inc/bottom.jsp"%>
