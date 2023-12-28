<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		padding-top: 10%;
		padding-left: 20%;
	}
	table{
		border: 10px solid lightblue;
		width : 40%;
		padding : 20px;
		/* margin-left: 45%;
		margin-top: 30%; */
	}
	td{
		border-bottom: 2px solid lightblue; 
		text-align: center;
		width: 5%;
		height : 40px;
		margin : 20px;
	}
	tr{
		width: 5%;
	}
</style>
</head>
<body>
<% 
	String a = "";
	String str = request.getParameter("dan");
	int num = Integer.parseInt(str);
	a += "<table>";
	
	for(int i=1;i<=9;i++){
		a += "<tr>";
		a += "<td>"+num+"</td>";
		a += "<td> * </td>";
		a += "<td>"+i+"</td>";
		a += "<td> = </td>";
		a += "<td>"+(num*i)+"</td>";
		a += "</tr>";
	}
%>
<%= a %>
</body>
</html>