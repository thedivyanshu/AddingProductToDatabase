<%@page import="com.product.dao.ProductDao"%>
<%@page import="com.product.pojo.Product"%>
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
<form action="addProduct.jsp">
<input type="submit" value="addproduct"> 
</form>
<h1><i>List of Products </i></h1>
<table border="1">
<tr><th>Product Id</th><th>Product Name</th><th>Product Cost</th></tr>
<%
ProductDao dao=new ProductDao();
List<Product> list=dao.display();
for(Product pro:list){
%>
<tr>
<td><%=pro.getId()%></td>
<td><%=pro.getPname()%></td>
<td><%=pro.getPrice()%></td>
</tr>

<%} %>
</table>
</body>
</html>
