<%@ page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="member" scope="request" class="member.MemberInfo" />
<html>
<head>
<title>
useObject.jsp
</title>
</head>
<body>
<%= member.getName() %> (<%= member.getId() %>) 회원님 안녕하세요.
</body>
</html>