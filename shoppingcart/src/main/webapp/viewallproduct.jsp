<%@page import="com.jsp.shoppingcart.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.shoppingcart.dto.Merchant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Merchant merchant =(Merchant) session.getAttribute("merchantinfo"); 

List<Product> products = merchant.getProducts();
%>

<table cellpadding="20px" border="1">

<th>id</th>
<th>brand</th>
<th>catagory</th>
<th>model</th>
<th>price</th>
<th>stock</th>
<th>update</th>
<th>delete</th>

<%
for(Product p : products) {
%>

<tr>
 <td><%= p.getId()%></td>
 <td><%=p.getBrand() %></td>
 <td><%=p.getCategory() %></td>
 <td><%= p.getModel()%></td>
 <td><%=p.getPrice() %></td>
 <td><%=p.getStock()%></td>
 <td><a href="updateproduct">UPDETE</a></td>
 <td><a href= "deleteproduct?id=<%=p.getId()%>">DELETE</a></td>
 <%
}
%>


</table>

</body>
</html>