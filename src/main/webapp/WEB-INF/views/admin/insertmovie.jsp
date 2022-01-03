<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp" %>
<title>Insert title here</title>
<section class="module">
	<div class="container">
		<h2>영화 등록 페이지</h2>
		<div class = "row c_center">
			<div class="col-sm-5 frm_login">
				<hr class="divider-w mb-10">
				<form class="form" action="insertmovie" method="post" enctype="multipart/form-data">
					<div class="form-group ">
						<input class=" w100" id="M_NAME" type="text"
							name="M_NAME" placeholder="영화제목" />
					</div>
					<div class="form-group">
						<input class=" w100" id="DIRECTOR" type="text"
							name="DIRECTOR" placeholder="감독명" />
					</div>
					<div class="form-group">
						<input class=" w100" id="ACTOR" type="text"
							name="ACTOR" placeholder="출연진" />
					</div>
					<div class="form-group">
						<input class=" w100" id="STORY" type="text"
							name="STORY" placeholder="줄거리" />
					</div>
					<div class="form-group">
						<input class=" w100" id="S_DATE" type="text"
							name="S_DATE" placeholder="개봉일 ex)2021-12-29" />
					</div>
					<div class="form-group">
						<input class=" w100" id="E_DATE" type="text"
							name="E_DATE" placeholder="상영종료일 ex)2021-12-29" />
					</div>
					<div class="form-group">
						<div class="select">
							<select class=" w100" name="GE_NO">
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
					<div class="form-group">
						<input class=" w100" id="RUNTIME" type="text"
							name="RUNTIME" placeholder="러닝타임 (분)" />
					</div>
					<div class="form-group">
						<input class=" w100" id="IMAGE1" type="file"
							name="upfile1" placeholder="첨부이미지" />
					</div>
					<div class="form-group">
						<input class=" w100" id="IMAGE2" type="file"
							name="upfile2" placeholder="첨부이미지2" />
					</div>
					<div class="form-group">
						<input class=" w100" id="IMAGE3" type="file"
							name="upfile3" placeholder="첨부이미지3" />
					</div>
					<div class="form-group">
						<input class=" w100" id="VIDEOURL" type="text"
							name="VIDEOURL" placeholder="동영상URL" />
					</div>
					<div class="form-group">
                    <input type="submit" class="w100 black_btn" value="등록하기">
                  </div>
				</form>
			</div>
		</div>
	</div>
</section>
<%@ include file="../inc/bottom.jsp"%>
