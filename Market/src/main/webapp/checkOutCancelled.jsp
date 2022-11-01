<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />    
<%@ page import="com.oreilly.servlet.*" %> 
<%@ page import="com.oreilly.servlet.multipart.*" %> 
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- 주문 취소 -->

<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "주문취소";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=greeting%></h1>
		</div>
	</div>
	
	<div class="container">
		<div class="red">
			<h2 style="background: pink">주문이 취소되었습니다</h2>
	</div>	
		
	<div class="container">
		<p><a href="products.jsp"><button>상품목록</button></a></p>
	</div>
		

	</div>
</body>
</html>