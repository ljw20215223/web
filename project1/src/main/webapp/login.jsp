<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>
<body>
<form method="post" action="loginAction.jsp">
    <p>아이디 : <input type="text" name="id">
    <p>비번 : <input type="password" name="passwd">
    <p> <input type="submit" value="로그인">&nbsp;&nbsp;&nbsp;<a href="join.jsp"><input type="button" value="회원가입"></a>
</form>
</body>
</html>