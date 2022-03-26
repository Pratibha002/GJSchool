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
		<form action="search">
			<label>Name : </label> <input type="text" name="name"><br>
			<input type="submit" value="submit">
		</form>
		<!-- Model attritube: students -->
		<!-- Iterating using JSTL -->
		<!--Internally gettterMethod() is getting called : stu.id  -->
		<table border="">
			<tr>
				<td>S.No</td>
				<td>Name</td>
				<td>Father Name</td>
				<td>Mobile Name</td>
				<td>Roll No</td>
				<td>Classes</td>
				<td>Fees</td>
				<td>Session</td>
				<td>Address</td>
				<td>Mobile</td>
				<td>&nbsp</td>
				<td>&nbsp</td>
				<td>&nbsp</td>
				<td>Fees Details</td>
				<td>Remainin Fees</td>
			</tr>

			<j:forEach var="stu" items="${studentsList}">
				<tr>
					<td>${stu.id}</td>
					<td>${stu.name}</td>
					<td>${stu.father_name}</td>
					<td>${stu.mother_name}</td>
					<td>${stu.roll_no}</td>
					<td>${stu.classes}</td>
					<td>${stu.fees}</td>
					<td>${stu.session}</td>
					<td>${stu.address}</td>
					<td>${stu.mobile}</td>
					<td><a href="addStudents"> Add</a></td>
					<td><a href="updateStudents?userId=${stu.id}"> update</a></td>
					<td><a href="deleteStudent?rollNo=${stu.roll_no}"
						onclick="if (!(confirm('Are you sure you want to Delete'))) return false">
							Delete</a></td>
					<td><a href="feesSummary?rollNo=${stu.roll_no}"">Details</a></td>
					<td>
					<j:forEach var="fees" items="${remFeesList}">
						<j:if test="${stu.roll_no==fees.roll_no}">${fees.amount }</j:if> 
				</j:forEach>
					</td>
				</tr>
			</j:forEach>
		</table>
		<br> 
		
	<p>Total Fees : ${totalFees} </p><br>
	<p>Total Remaining Fees :${totalRemFees}  </p><br>
	
	</center>
    
</body>
</html>




















