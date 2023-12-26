<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	h1 {
		color : red;
	}
	table{
		border : 1px solid blue;
		margin : 50px;
	}
	td{
		width : 100px;
		height : 50px;
	}
	.cont{
		width : 300px;
	}
</style>
</head>
<body>
<h1>JSP : Java Server Page</h1>
<%
	request.setCharacterEncoding("UTF-8");

	String userName = request.getParameter("name");
	String title = request.getParameter("title");
	String area = request.getParameter("area"); // ���ͱ�ȣ�� ����
	
	String cars1 = request.getParameter("cars1");
	String[] cars2 = request.getParameterValues("cars2");
	
	String str="";
	for(String car : cars2){
		str+=car +"<br>";
	}
	
	area = area.replaceAll("\n", "<br>");
%>

<table border="1">
	<tr>
		<td>�̸�</td>
		<td class = "cont"><%= userName %></td>
	</tr>
	<tr>
		<td>����</td>
		<td class = "cont"><%= title %></td>
	</tr>
	<tr>
		<td>����</td>
		<td><%= area %></td>
	</tr>
	
	<tr>
		<td>�ڵ���</td>
		<td><%= cars1%></td>
	</tr>
	
	<tr>
		<td>�ڵ���2</td>
		<td><%= str %></td>
	</tr>
</table>
</body>
</html>