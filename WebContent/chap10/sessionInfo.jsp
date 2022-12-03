<%@ page contentType="text/html; charset=utf-8" %>
<%@ page session="true" %> 
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    %>
<html>
<head>
<title>
세션 정보
</title>
</head>
<body>
세션 ID : <%= session.getId() %> <br>
<% 
    date.setTime(session.getCreationTime());
    %>
세션 생성 시간 : <%= sdf.format(date) %> <br>
<%
    date.setTime(session.getLastAccessedTime());
    %>
최근 접근 시간 : <%= sdf.format(date) %>
</body>
</html>