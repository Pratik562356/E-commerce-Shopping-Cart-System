<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form:form action="saveorder" modelAttribute="ordersobj">

enter name:<form:input path="name"/> <br>
enter address:<form:input path="address"/> <br>
enter mobilenumber:<form:input path="mobilenumber"/> <br>
<%-- enter totalprice:<form:input path="totalprice"/> <br> --%>

<input type="submit">

</form:form>
</body>

</body>
</html>