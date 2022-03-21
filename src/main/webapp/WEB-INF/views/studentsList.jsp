<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Data Coming soon</h1>
		<!-- Model attritube: students -->
		<!-- Iterating using JSTL -->
		<!--Internally gettterMethod() is getting called : stu.id  -->
		<table border="">
			<tr>
			<td>S.No</td>
				<td>Name</td>
				<td>Father Name </td>
				<td> Mobile Name</td>
				<td> Roll No</td>
				<td> Classes</td>
				<td> Fees</td>
				<td> Session</td>
				<td> Address</td>
				<td> Mobile</td>
			</tr>
		
		<j:forEach var="stu" items="${studentsList}">  
<tr> 
<td> ${stu.id} </td>
<td> ${stu.name} </td>
<td> ${stu.father_name} </td>
<td> ${stu.mother_name} </td>
<td> ${stu.roll_no} </td>
<td> ${stu.classes} </td>
<td> ${stu.fees} </td>
<td> ${stu.session} </td>
<td> ${stu.address} </td>
<td> ${stu.mobile} </td>
<td> <a href="addStudents"> Add</a></td>
<td> <a href="updateStudents?userId=${stu.id}">  update</a></td>
<td><a href="deleteStudent?rollNo=${stu.roll_no}" onclick="if (!(confirm('Are you sure you want to Delete'))) return false"> Delete</a></td>
</tr>
		</j:forEach>
</table>
	</center>
</body>
</html>