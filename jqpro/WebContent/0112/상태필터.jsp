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
	request.setCharacterEncoding("UTF-8");

	String userId = request.getParameter("id");
	String userPass = request.getParameter("pass");
	String userName = request.getParameter("name");
	
	out.print("이름 : " + userName+"<br>");
	out.print("비밀번호 : " + userPass+"<br>");
	out.print("아이디 : " + userId+"<br>");
%>

</body>
</html>