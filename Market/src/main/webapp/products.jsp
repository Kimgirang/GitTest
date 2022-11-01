<%@page import="org.eclipse.jdt.internal.compiler.ast.Annotation.AnnotationTargetAllowed"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- session : 브라우저가 열려있는동안 -->
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<%@ page import="com.oreilly.servlet.*" %> 
<%@ page import="com.oreilly.servlet.multipart.*" %> 
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title>Insert title here</title>
<style>
.flex_wrap {
	display: flex;
	line-height:200%;
	
}

.flex {
	background-color: #f1f1f1; 
	width: 100%;
	text-align: center;
	padding: 30px;
}
img {
	width: 200px;
	height: 200px
}
</style>  
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%@ include file="welcome.jsp"%>
	
<!-- 	<div class = "jumbotron">배경 -->
<!-- 		<div class = "container">위치 -->
<!-- 			<h1 class = "display-3">글씨</h1> -->
<!-- 		</div> -->
<!-- 	</div>	 -->

<!-- 	<img src=".\img\zzz.png"> -->
	
	<div class="container">
		<div class="flex_wrap">
		
<!-- 이미지	<img src=".\img/zzz.png"> -->
		
			<%
				request.setCharacterEncoding("UTF-8");
				
// 				if(request.getParameter("id") != null){
// 					String productID = request.getParameter("id");
// 					String pname = request.getParameter("pname");
// 					Integer unitPrice = Integer.parseInt(request.getParameter("unitPrice"));
// 					String description = request.getParameter("comment");
// 					String menufacturer = request.getParameter("menufacturer");
// 					String category = request.getParameter("category");
// 					long unitsInstock = Long.parseLong(request.getParameter("unitsInstock"));
// 					String condition = request.getParameter("condition");
					
// 					productDAO.addProduct(productID, pname, unitPrice, description, menufacturer, category, unitsInstock, condition); 
// 				}
			
			
				for (int i = 0; i < productDAO.getAllProducts().size(); i++) { 
					out.println("<div class = flex>");
					
// 					out.println("<img src=\"\" + " + productDAO.getAllProducts()+ get(i).getsrc() + "<br>");
// 					out.println("<p><img src=\".\\img\\zzz.png\">");

					out.println("<p><img src=\".\\img\\" + productDAO.getAllProducts().get(i).getSrc() + "\"><br>");
					
					out.println(productDAO.getAllProducts().get(i).getDescription() + "<br>" + "<br>");
					out.println(productDAO.getAllProducts().get(i).getUnitPrice() + "원 <br>");
					out.print("<a href=\"product.jsp?id=" + productDAO.getAllProducts().get(i).getProductID() + "\"><button>상세내용</button></a>");
					//<!--  <a href="링크?변수=변수에넣을값"> -->
	// 				out.println("<br>" + "<p>" + "<input type=submit value=상세정보>");
					out.println("</div>");
				}
				
			%>
		</div>
		<hr>
	</div>
		<%@ include file="footer.jsp"%>
</body>
</html>