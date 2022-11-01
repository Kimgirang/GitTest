<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.Date" %>
<%@ page import= "java.time.LocalTime" %>

<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>  
	<%! String greeting = "상품목록"; 
		String tagline = "Welcome to Web Market";
		LocalTime now = LocalTime.now();
        int hour = now.getHour();        
        int minute = now.getMinute();        
        int second = now.getSecond();		
	%>

	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">
				<%= greeting %>
			</h1>
		</div>
		<div class = "container">
			<div class = "text-center">
				<h3>
					<%= tagline %>
				</h3>				
					<%						
					if(hour>12 && hour<25){
						 out.println(hour-12 + ":"+ minute +":" + second); 
					}	
					if(hour>11){
						out.println("PM");
					} else{
						out.println("AM");
					}
					%>		
				</div>
			</div>
			<hr>
		</div>
	<%@ include file="footer.jsp" %>
</body>
</html>