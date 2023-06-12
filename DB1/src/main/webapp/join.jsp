<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
   <form method="post" action="joinAction.jsp">
    <p>아이디 : <input type="text" name="id">
    <p>비번 : <input type="password" name="passwd">
    <p>이름 : <input type="text" name="name">
    <p> <input type="submit" value="전송">
   </form>
</body>
</html>