<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <%@ include file="dbcon.jsp" %>
   <%
      request.setCharacterEncoding("EUC-KR");
     
      String id = request.getParameter("id");
      String passwd = request.getParameter("passwd");
      String name = request.getParameter("name");
      
      Statement stmt = null;
      try {
    	  String sql = "INSERT INTO Member(id, passwd, name) VALUES('"+id+"','"+passwd+"','"+name+"')";
    	  stmt = conn.createStatement();
    	  stmt.executeUpdate(sql); 
    	  out.println("회원가입 성공");
      } catch (SQLException ex) {
    	  out.println("실패"); 
    	  out.println("SQLException: " + ex.getMessage());
      } finally {
    	  if(stmt != null)
    		  stmt.close(); 
    	  if(conn != null)
    		  conn.close(); 
      }
   %>
</body>
</html>