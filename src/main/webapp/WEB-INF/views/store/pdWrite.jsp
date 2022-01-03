<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!-- 파일 등록, 수정 -->
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="<c:url value='/store/pdWrite'/>" enctype="multipart/form-data">
	<label for="pctNo">카테고리</label>
	<select id="pctNo" name="pctNo">
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
	</select><br>

	
	<label for="pdName">상품명</label>
	<input type="text" id="pdName" name="pdName" value="${storeVo.pdName }"/><br>
	
	<label for="pdPrice">가격</label>
	<input type="text" id="pdPrice" name="pdPrice" value="${storeVo.pdPrice }" /><br><br>
	
	<label for="pdDescription">상세설명</label>
	<textarea id="pdDescription" name="pdDescription" 
		style="width:150px; height:70px;">${storeVo.pdDescription }</textarea><br>

	<label for="pdImage">상품이미지</label>
	<input type="file" id="pdImage" name="pdImage" /><br>
	<c:if test="${!empty storeVo.pdImagename }">
		<span style="font-size: small; color:gray;">기존파일 : ${storeVo.pdImagename }</span><br>
	</c:if>
	
	<c:if test="${!empty storeVo.pdNo }">
		<input type="hidden" name="pdNo" value="${storeVo.pdNo }">
	</c:if>
	<input type="submit">
</form>

</body>
</html>