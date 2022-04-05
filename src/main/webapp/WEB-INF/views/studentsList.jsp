<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
        integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
        crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../verMenu.jsp"></jsp:include>
<center> 
<h1>Data Coming soon</h1>
		<form action="searchByRollNo">
			<label>Roll No : </label> <input type="text" name="rollNo"><br>
			<input type="submit" value="submit">
		</form>
		<span> </span>
		<form action="searchByName">
			<label>Name : </label> <input type="text" name="name"><br>
			<input type="submit" value="submit">
		</form>
		<span> </span>
		<form action="searchByClass" method="get">
			<select name="classes">
				<j:forEach var="classe" items="${classes}">
					<option value="${classe}">${classe}</option>
				</j:forEach>
				<input type="submit" value="submit">
			</select>
		</form>


		<br>
		<hr>


		</form>
		<span> </span>
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
					<td><j:forEach var="fees" items="${remFeesList}">
							<j:if test="${stu.roll_no==fees.roll_no}">${stu.fees-fees.amount }</j:if>
						</j:forEach></td>
				</tr>
			</j:forEach>
		</table>
		<br>

		<p>Total Fees : ${totalFees}</p>
		<br>
		<p>Total Remaining Fees :${totalFees-totalRemFees}</p>
		<br>
		
		

		
		
</center>	

</body>
</html>