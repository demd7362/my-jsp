<%@ page contentType="text/html; charset=utf8" %>
<%! 
    public int multiply(int a,int b){
        int c = a*b;
        return c;
    }
    %>
<html>
    <head><title>선언부를 사용한 두 정수의 곱</title></head>
    <body>
        10 X 25 = <%= multiply(10,25) %>
    </body>
</html>