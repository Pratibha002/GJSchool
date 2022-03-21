<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Students Here</title>
</head>
<body>

	<center>
		<form:form action="addStudentsToDb" modelAttribute="student" method="get">

			<form:hidden path="id" />

			<label>Name : </label> <form:input path="name" /> <Br>
			<label> Class :</label> <form:input path="classes"/> <br>
			<label> Father-Name :</label> <form:input path="father_name"/> <br>
			<label> Mother-Name :</label> <form:input path="mother_name"/> <br>
			<label> Roll-No :</label> <form:input path="roll_no"/> <br>
		
			<label> Fees :</label> <form:input path="fees"/> <br>
			<label> Session :</label> <form:input path="session"/> <br>
			<label> Address :</label> <form:input path="address"/> <br>
			<label> Mobile :</label> <form:input path="mobile"/> <br>
			<input type="submit" value="Add Students">
		</form:form>
		<a href="studentsList"> Students List</a>
	</center>
</body>
</html>