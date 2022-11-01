<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />  
<%@ page import="com.oreilly.servlet.*" %> 
<%@ page import="com.oreilly.servlet.multipart.*" %> 
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>  
<!DOCTYPE html>

<!-- 주문 완료 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "주문완료";%>
	<div class="jumbotron">
		<div class="container">0
			<h1 class="display-3"><%=greeting%></h1>
		</div>
	</div>
	
	<div class="container">
		<div class="red">
			<h2 style="background: pink">주문해주셔서 감사합니다</h2>
		</div>	
			<p>주문은 2020/12/24에 배송될 예정입니다
		
		
	<div class="container">
		<p><a href="products.jsp"><button>상품목록</button></a></p>
	</div>
		

	</div>
</body>
</html>