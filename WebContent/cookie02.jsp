<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String user_id=request.getParameter("id");
	String user_pw=request.getParameter("passwd");
	
	if(user_id.equals("admin") && user_pw.equals("1234")){
		Cookie[] cookies=request.getCookies();
		out.println("현재 설정된 쿠키의 갯수:"+cookies.length+"<br>");
		
		for(int i=0; i<cookies.length; i++)
		{
			out.println("설정된 쿠키의 속성 이름"+cookies[i].getName()+"<br>");
			out.println("설정된 쿠키의 속성 값"+cookies[i].getValue()+"<br>");
		}}
	
	%>
</body>
</html>