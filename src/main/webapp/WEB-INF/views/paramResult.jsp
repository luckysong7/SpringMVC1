<%@page import="com.exe.springmvc.PersonDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	
	PersonDTO dto = (PersonDTO) request.getAttribute("dto");
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>Param Result</h2>
이름 : <%=name %> <br/>
전화 : <%=phone %> <br/>
이메일 : <%=email %> <br/>

<br/><hr/><br/>

<h2>ModelAndView</h2>

<%if(dto != null){ %>
이름 : <%=dto.getName() %> <br/>
전화 : <%=dto.getPhone() %> <br/> 
이메일 : <%=dto.getEmail() %> <br/>
<%}else{ %>
데이터 없음 <br/>
<%} %>
</body>
</html>