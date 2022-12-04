<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>redirect 태그</title>
</head>
<body>
<c:redirect url="/chap07/view/autoInclude.jsp" > <!-- context 값은 /jsp 이다. -->
<c:param name="name" value="value"></c:param>
</c:redirect>
</body>
</html>