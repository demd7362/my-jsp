<%@ page contentType="text/html; charset=utf-8" %>
<%
    // 세션의 유효시간을 지정하는 두번째 방법
    session.setMaxInactiveInterval(60*60); // 단위는 초
    session.setAttribute("name","정지훈");
    
    %>

<html>
<head>
<title>
세션의 유효시간 지정
</title>
</head>
<body>
session ID : <%= session.getId() %><br>

<br>60초 후 사라집니다.
</body>
</html>