<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
		<option value="A01">기프트카드</option>
		<option value="B01">팝콘</option>
		<option value="B02">음료</option>
		<option value="B03">스낵</option>
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
		기존파일 : ${storeVo.pdImagename }<br>
	</c:if>
	
	<c:if test="${!empty storeVo.pdNo }">
		<input type="hidden" name="pdNo" value="${storeVo.pdNo }">
	</c:if>
	<input type="submit">
</form>

</body>
</html>