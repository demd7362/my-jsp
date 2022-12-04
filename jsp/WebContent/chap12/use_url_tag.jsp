<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>url 태그</title>
</head>
<body>
	<c:url value="http://search.daum.net/search" var="searchURI">
		<c:param name="w" value="blog"></c:param>
		<c:param name="q" value="공원"></c:param>
	</c:url>
	<ul>
		<li>${searchURI}
		<li><c:url value="/use_if_tag.jsp"></c:url>
		<li><c:url value="./use_if_tag.jsp"></c:url>
	</ul>

</body>
</html>