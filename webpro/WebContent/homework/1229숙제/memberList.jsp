<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		border-color: skyblue;
	}
	td{
		width : 150px;
		height : 50px;
		text-align: center;
	}
</style>
</head>
<body>
<%!
private Connection conn = null;
private ResultSet rs = null;
private PreparedStatement ps = null;

private String driver = "oracle.jdbc.driver.OracleDriver";
private String url = "jdbc:oracle:thin:@localhost:1521:xe";
private String user = "YHN";
private String password = "java";
%>

<%
	

	//OracleDriver클래스를 로드시킨다.
	Class.forName(driver);
	
	//db 연결객체
	conn = DriverManager.getConnection(url,user,password);
	
	//sql쿼리문 작성
	String sql = "select mem_id , mem_name, mem_hp from member";
	
	// 실행객체
	ps = conn.prepareStatement(sql);
	
	rs = ps.executeQuery();
	
	String str = "";
	str += "<table border='1'>";
	str += "<tr><td>아이디</td><td>이름</td><td>전화번호</td>";
	while(rs.next()){
	str += "<tr>";
	str += "<td>";
		String id = rs.getString("mem_id");
	str += id;
	str += "</td>";
	str += "<td>";
		String name = rs.getString("mem_name");
	str += name;
	str += "</td>";
	str += "<td>";
		String tel = rs.getString("mem_hp");
	str += tel;
	str += "</td>";
	}
%>
<%= str %>
</body>
</html>