<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="id"/>
<jsp:setProperty name="user" property="passwd"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>title</title>
</head>
<body>
      <%
          String id = null;
          if(session.getAttribute("id")!=null){
        	  id = (String) session.getAttribute("id"); 
          }
          if(id != null) {
        	  PrintWriter script = response.getWriter();
        	  script.println("<script>");
        	  script.println("alert('로그인 되어있음')");
        	  script.println("history.back()");
        	  script.println("</script>");
          }
          UserDAO userDAO = new UserDAO();
          int result = userDAO.login(user.getId(), user.getPasswd());
          if(result ==1){
        	  session.setAttribute("id", user.getId()); 
        	  PrintWriter script = response.getWriter();
        	  script.println("<script>");
        	  script.println("location.href = 'main.jsp'");
        	  script.println("</script>");
          }
          else if (result ==0) {
        	  PrintWriter script = response.getWriter();
        	  script.println("<script>");
        	  script.println("alert('비번틀림')");
        	  script.println("history.back()");
        	  script.println("</script>");
          }
          else if (result ==-1) {
        	  PrintWriter script = response.getWriter();
        	  script.println("<script>");
        	  script.println("alert('아이디없음')");
        	  script.println("history.back()");
        	  script.println("</script>");
          }
          else if (result == -2) {
        	  PrintWriter script = response.getWriter();
        	  script.println("<script>");
        	  script.println("alert('데이터오류')");
        	  script.println("history.back()");
        	  script.println("</script>");
          }
      %>
</body>
</html>