<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>pari baguette</title>
<style>
        *{
          margin:0;
          padding:0;
        }
        
        nav {
          display:flex;
          justify-content: space-between;
          align-items: center;
          background-color: navy;
          color:white;
          height:70px;
        }
        .right {
          padding-right:50px;
          height:70px;
          display: flex;
          align-items: center;
        }
        .left {
          padding-left:50px;
          height:70px;
          display: flex;
          align-items: center;
        }
        a {
          text-decoration: none;
          color:white;
          height:70px;
          line-height:70px;
        }
        img {
          width:100%;
          height:100%;
        }
        .inner {
          display:flex;
          height:840px;
        }
        section {
          width:33.3vw;
          height:100%;
        }
        footer {
          background-color:gray;
          color:white;
        }
    </style>
</head>
<body>
     <%
       String id = null;
       if(session.getAttribute("id") != null) {
    	   id = (String) session.getAttribute("id"); 
       }
    %>
     <nav class="navi">
      <div class="left">
         <a href="foodlist.jsp">상품안내</a>
      </div>
      <div class="brand"><h1>pari baguette</h1></div>
                  <%
              if(id ==null) {
             %>
      <div class="right">
        <a href="https://map.naver.com/v5/search/%ED%8C%8C%EB%A6%AC%EB%B0%94%EA%B2%8C%ED%8A%B8?c=15,0,0,0,dh">매장정보</a>&nbsp;&nbsp;&nbsp;<a href="login.jsp">로그인</a>
      </div>
                  <% 
              } else {
            %>
      <div class="right">
        <a href="https://map.naver.com/v5/search/%ED%8C%8C%EB%A6%AC%EB%B0%94%EA%B2%8C%ED%8A%B8?c=15,0,0,0,dh">매장정보</a>&nbsp;&nbsp;&nbsp;<a href="logout.jsp">로그아웃</a>
      </div>
      <%	  
              }
            %>
     </nav>
     <div class="inner">
     <section><a href="foodlist.jsp"><img src="image/이미지1.png"></a></section>
     <section><a href="foodlist.jsp"><img src="image/이미지2.jpg"></a></section>
     <section><a href="foodlist.jsp"><img src="image/이미지3.png"></a></section>
    </div>
    <footer>
      <h1>Contact us</h1>
      <ul> 
        <li>고객센터</li>
        <li>080-731-2027</li>
        <li>평일 09:00 - 17:00</li>
      </ul>
    </footer>
</body>
</html>