<%@ page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	response.addCookie(Cookies.createCookie("name", "정지훈"));
	response.addCookie(Cookies.createCookie("id", "jihun","chap07",-1));
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookies 사용 예</title>
</head>
<body>
Cookies를 사용하여 쿠키 생성
<%= request.getServletPath() %>
</body>
</html>