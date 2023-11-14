<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.admin.pojo.admin"%>
<%@page import="com.admin.register.dao.RegisterDao"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
RegisterDao dao=new RegisterDao();
admin Admin=new admin();


Admin.setPrice(Float.parseFloat(request.getParameter("pcost")));
//in util Mon Nov 13 11:55:06 IST 2023  in dB sql - yyyy-MM-dd =>convert the date into a sql 

int row=dao.addproduct(product);
if(row>0){
	response.sendRedirect("success.jsp");
	
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>