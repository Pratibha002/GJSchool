<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Category</title>
</head>
<body>
<jsp:include page="../../verMenu.jsp"></jsp:include>
<center> 
<h2> Add Categoryhere</h2>
 
<form:form action="addcategory" method="get" modelAttribute="category">

			<label>Categoryy : </label> <input type="text" name="category" placeholder="GEN/SC/ST/OBC" />
			<Br>

			<input type="submit" value="Add category">
			 
		</form:form>
		
		<br> <br>
		
		
		<table border="">
			<tr>
				<td>category</td>
				<Td> </Td>
			</tr>
			
			<j:forEach var="category" items="${category}">
				<tr>
				<td>${category} </td>
				<td><a href="deletecategory?category=${category}">Delete</a></td>
				</tr>
			</j:forEach>
			
			</table>
</center>
</body>
</html>