<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	border : 3px solid lightblue;
	border-collapse: separate;
}
td{
	width:50px;
	height :50px;
	text-align:  center;
	
}
</style>
</head>
<body>

	<%
	
	String str = "<table border='1'>";
	for(int i=1;i<=9;i++){
		 str += "<tr>";
		for(int j=1;j<=9;j++){
			str += "<td>";
			str += i*j;
			str +="</td>";
		}
		str +="</tr>";
	}
	str += "</table>";

	%>
	<%= str %>
</body>
</html>