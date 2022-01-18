<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@include file="../inc/top.jsp" %>
<style>
	.form-group label{
		float : left;
		margin-left: 10px;
	}
	
	.form-group{
		margin-bottom: 20px;
	}
	
</style>
<!-- 파일 등록, 수정 -->
   
	<section class="module">
		<div class="container">
			<h2>상품 등록 페이지</h2>
			<div class = "row c_center">
				<div class="col-sm-12 frm_login">
					<hr class="divider-w mb-10">
					<form class="form" method="post" action="<c:url value='/admin/pdWrite'/>" enctype="multipart/form-data">
						<div class="input_area">
							<div class="p_title">
		                		<label for="pctNo">카테고리</label>
		            		</div>
							<div class="p_input">
								<div class="select">
									<select class="" id="pctNo" name="pctNo">
										<option value="A01"
										<c:if test="${storeVo.pctNo=='A01' }">
											selected
										</c:if>
										 >영화관람권</option>
										<option value="B01"
										<c:if test="${storeVo.pctNo=='B01' }">
											selected
										</c:if>
										>팝콘</option>
										<option value="B02"
										<c:if test="${storeVo.pctNo=='B02' }">
											selected
										</c:if>
										>음료</option>
										<option value="B03"
										<c:if test="${storeVo.pctNo=='B03' }">
											selected
										</c:if>
										>스낵</option>
									</select>
								</div>
							</div>
						</div>
					
						<div class="input_area">
							<div class="p_title">
								<label for="pdName">상품명</label>
							</div>
							<div class="p_input t_left">
								<input class="t_input" type="text" id="pdName" name="pdName" value="${storeVo.pdName }" placeholder="상품명"/>
							</div>
						</div>
						<div class="input_area">
							<div class="p_title">
								<label for="pdPrice">가격</label>
							</div>
							<div class="p_input t_left">
								<input class="t_input" type="text" id="pdPrice" name="pdPrice" value="${storeVo.pdPrice }" placeholder="가격" />
							</div>
						</div>
						
						<div class="input_area">
							<div class="p_title">
								<label for="pdDescription">상세설명</label>
							</div>
							<div class="p_input">
								<textarea class="w100" id="pdDescription" name="pdDescription" cols="100" rows="10" placeholder="상품상세설명">${storeVo.pdDescription }</textarea>
							</div>
						</div>
						
						<div class="input_area">
							<div class="p_title">
								<label for="pdImage">상품이미지</label>
							</div>
							<div class="p_input">
								<input class="w100"  type="file" id="pdImage" name="pdImage" />
							</div>
							<c:if test="${!empty storeVo.pdImagename }">
								<span style="font-size: small; color:gray;">기존파일 : ${storeVo.pdImagename }</span><br>
							</c:if>
						</div>
						
						<c:if test="${!empty storeVo.pdNo }">
							<input type="hidden" name="pdNo" value="${storeVo.pdNo }">
						</c:if>
						<input type="submit" class="black_btn">
					</form>
				</div>
			</div>
		</div>
	</section>
<%@ include file="../inc/bottom.jsp"%>