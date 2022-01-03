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
<form method="post" action="<c:url value='/store/pdDelete'/>">

	
	<label for="pdNo">상품번호</label>
	<input type="text" id="pdNo" name="pdNo" value="${storeVo.pdName }"/><br>
	
	<input type="submit">
</form>

</body>
</html>