<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<% 
  Connection conn = null;

  String url = "jdbc:mysql://localhost:3306/bbs";
  String user = "root";
  String password = "root"; 
  
  Class.forName("com.mysql.jdbc.Driver");
  conn = DriverManager.getConnection(url, user, password); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>