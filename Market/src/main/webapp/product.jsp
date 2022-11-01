<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<html>
<head>
<meta charset="UTF-8">
<style>
img {
	width: 200px;
	height: 200px
}
</style>
<title>Insert title here</title>
</head>
<body>
	
	<!-- 	상세 정보 -->

	<%@ include file="menu.jsp"%>
	<%! String greeting = "상품정보"; %>
	
	<%
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("id"); // products에서 id를 가져온걸 userid로 저장
		
		// 	현재페이지에 있는 상품의 정보를 저장 -> cart로 
		session.setAttribute("ProductID", productDAO.getProdouctById(userid).getProductID());
		session.setAttribute("Pname", productDAO.getProdouctById(userid).getPname());
		session.setAttribute("UnitPrice", productDAO.getProdouctById(userid).getUnitPrice());
	 
	%>
	
	<div class="jumbotron">
		<div class = "container">
			<h1 class = "display-3"><%= greeting %></h1>
		</div>
	</div>	
	
	
	<div class = "container">
		<img src=".\\img/<%= productDAO.getProdouctById(userid).getSrc() %>">
	</div>
	
	<div class = "container">	
			<% 
			out.println("<h3>" + productDAO.getProdouctById(userid).getPname()+"</h3>");
			out.println("<p>" + productDAO.getProdouctById(userid).getDescription()+"</font>"+"<br>");
			out.println("<p><b>상품코드</b> : " + productDAO.getProdouctById(userid).getProductID()+"<br>");
			out.println("<p><b>제조사</b> : " + productDAO.getProdouctById(userid).getMenufacturer()+"<br>");
			out.println("<p><b>분류</b> : " + productDAO.getProdouctById(userid).getCategory()+"<br>");
			out.println("<p><b>재고수</b> : "+ productDAO.getProdouctById(userid).getUnitsInstock()+"<br>");
			out.println("<h4>" + productDAO.getProdouctById(userid).getUnitPrice()+"원"+"</h4>"+"<hr>");
			out.print("<button>상품주문</button>");
			out.print("<a href=\"cart.jsp\"><button>장바구니</button></a>");
			%>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>