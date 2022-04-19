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

<center> 
<br> 
<hr>
<font color="green"> </font><h1>${msg }</h1> </font>
<hr> 
		<form action="searchByBranch">

			<select name="branch">
				<option value="Gyan Jyoti Public School">Gyan Jyoti Public
					School</option>
				<option value="Gyan Jyoti International School">Gyan Jyoti
					International School</option>
			</select>
			<input type="submit" value="submit">
		</form>



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
				<td>Scholar No</td>
				<td> Name </td>
				<td>Father Name</td>
				<td>Classes</td>
				<td>Contact</td>
				<td> DOB </td>
				<td> Category </td>
				<td> Bank </td>
				<td> Account No </td>
				<td> IFSC </td>
				<td> Aadhar </td>
				<td> Samagra </td>
				<td> Branch </td>
				<td> Student Photo </td>
				<td>Fees Details</td>
				<td>Remainin Fees</td>
				
			</tr>

			<j:forEach var="stu" items="${studentsList}">
				<tr>
					<td>${stu.id}</td>
					<td>${stu.scholarNumber}</td>
					<td>${stu.name}</td>
					<td>${stu.fName}</td>
					<td>${stu.stuClass}</td>
					<td>${stu.contact}</td>
					<td>${stu.dob}</td>
					<td>${stu.category}</td>
					<td>${stu.bankName}</td>
					<td>${stu.accNo} </td>
					<td> ${stu.ifsc}</td>
					<td>${stu.aadhar} </td>
					<td>${stu.samagraId} </td>
					<td>${stu.branch} </td>
					<td><img id="aadharPreview" src="data:image/jpeg;base64,${stu.studentPhoto}" height="40" width="40"></td>
					<td> <a href="submitFees"> Submit Fees</a></td> 
					<td><j:forEach var="fees" items="${remFeesList}">
							<j:if test="${stu.scholarNumber==fees.scholarNumber}">${stu.fees-fees.amount }</j:if>
						</j:forEach> </td>
					<td><a href="admissionForm"> Add</a></td>
					<td><a href="updateStudents?userId=${stu.id}"> update</a></td>
					<td><a href="deleteStudent?rollNo=${stu.scholarNumber}"
						onclick="if (!(confirm('Are you sure you want to Delete'))) return false">
							Delete</a></td>
					<td><a href="feesSummary?rollNo=${stu.scholarNumber}"">Details</a></td>
					
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