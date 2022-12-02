<%@ page contentType="text/html; charset=utf-8" %>
<%@ page session="false" %>
<% HttpSession hs = request.getSession();
    List list = (List)hs.getAttribute("list");
    list.add(productId);
    // 세션이 존재하지 않는다면 새로 만든다. 
    // getSession() 파라미터로 false를 주면 만들지않고 null 반환
%>
