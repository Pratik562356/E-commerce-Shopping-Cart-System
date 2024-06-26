<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="savecustomer" modelAttribute="customerobj">

enter name:<form:input path="name"/> <br>
enter address:<form:input path="address"/> <br>
enter mobilenumber:<form:input path="mobilenumber"/> <br>
enter email:<form:input path="email"/> <br>
enter password:<form:input path="password"/> <br>
<input type="submit">

</form:form>
</body>
</html>