<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>
<title>Admission Form</title>
</head>

<body>
	<div>
<center>

		<form:form action="saveAdmissison" modelAttribute="admissionDto" method="get">

			<form:input type="hidden" path="id" />
		
			<table>
			<tr> <td><div class="form-group col-md-6">
					<label >Name </label> <form:input type="text"  path="name" placeholder="Name"/>
				</div> 
			</td>
			<td> 
				<div class="form-group col-md-6">
					<label for="form:inputState">Gender</label> <form:select path="gender">
						<option >Male</option>
						<option >Female</option>
					</form:select>
				</div>
			</td><td> 	<div class="form-group col-md-6">
					<label for="form:inputState">Category</label> 
					<form:select path="category" >
    <j:forEach var="listCategory" items="${listCategory}">
					<option value="${listCategory}">${listCategory}</option>
					</j:forEach>
			</form:select>
				</div></td>
<td> 			<div class="form-group col-md-6">
					<label for="form:inputEmail4">Religion</label> <form:input type="text" path="religion" placeholder="Religion"/>
				</div>
			</td>
			</tr>
			<tr> 
			
			<td>	<div class="form-group col-md-6">
					<label >Father Name</label> <form:input type="text"  path="fName" placeholder="Father Name"/>
				</div>
			</td>
			<td><label >Father Occupation</label> <form:input type="text"  path="fOccupation" placeholder="Father Name"/>
				</div>
			</td>
			<td><div class="form-group col-md-6">
					<label for="form:inputEmail4">Mother Name </label> <form:input type="text"  path="mName" placeholder="Mother Name"/>
				</div> 
			</td>
			<td><div class="form-group col-md-6">
					<label >Mother Occupation</label> <form:input type="text"  path="mOccupation" placeholder="Father Name"/>
				</div>
			</td>
			</tr>
			<tr> 
			<td><div class="form-group col-md-6">
					<label for="form:inputEmail4">Contact</label> <form:input type="text" path="contact" placeholder="Contact Number"/>
				</div>
			</td>
<td><div class="form-group col-md-6">
					<label for="form:inputEmail4">Alt-Contact</label> <form:input type="text" path="altContact" placeholder="Contact Number"/>
				</div>
			</td>	
<td>
<div class="form-group col-md-6">
					<label >Date Of Birth</label> <form:input type="date"  path="dob"/>
				</div>
			</td>
			<td> 
			 	
			<div class="form-group col-md-6">
					<label for="form:inputState">Session</label> <form:select path="session" >
						<j:forEach var="session" items="${session}">
					<option value="${session}">${session}</option>
					</j:forEach>
					</form:select>
				</div>
				
</td>
			</tr>
			<tr> <td> <div class="form-group col-md-6">
					<label for="form:inputState">Branch</label> <form:select path="branch" >
						<option value="Gyan Jyoti Public School">Gyan Jyoti Public School</option>
						<option value="Gyan Jyoti International School">Gyan Jyoti International School</option>
					</form:select>
				</div>
				</td><td> 
				<div class="form-group col-md-6">
					<label for="form:inputState">Class</label> <form:select path="stuClass">
					<j:forEach var="classesList" items="${classesList}">
					<option value="${classesList.classes}">${classesList.classes}</option>
					</j:forEach>
					</form:select>
				</div>
</td>
<td> 				<div class="form-group col-md-6">
					<label >Scholar No</label> <form:input type="text" path="scholarNumber" placeholder="Scholar Number"/>
				</div>
			</td><td> 	<div class="form-group col-md-6">
					<label for="form:inputEmail4">Last School Studied</label> <form:input type="text"  path="lastSchoolStudied" placeholder="Last Attended School"/>
				</div>
				</td>
</tr>
					<tr> 
			<td> 
				<div class="form-group col-md-6">
					<label >Account No</label> <form:input type="text" path="accNo" placeholder="Account No"/>
				</div>
				</td> <td> <div class="form-group col-md-6">
					<label for="form:inputEmail4">IFSC Code</label> <form:input type="text" path="ifsc" placeholder="IFSC Code"/>
				</div>
				</td>
<td> 			<div class="form-group">
				<label for="form:inputAddress">Address</label> <form:input type="text" path="address" placeholder="Please Provide Address"/>
			</div>
	</td>
			<td> 
				<div class="form-group col-md-6">
					<label for="form:inputCity">City</label> <form:input type="text" path="city"/>
				</div>
</td></tr>	
<td> 			<div class="form-group col-md-6">
					<label for="form:inputState">State</label> <form:input path="state" />
				</div>
	</td><td> 			<div class="form-group col-md-2">
					<label for="form:inputZip">Zip</label> <form:input type="text" path="zip"/>
				</div>
		</td>
		<td><div class="form-group col-md-6">
					<label for="form:inputEmail4">Samagra ID</label> <form:input type="text" path="samagraId" placeholder="Samagra ID "/>
				</div>
			</td>
			
			<td> 		<div class="form-group col-md-6">
					<label for="form:inputEmail4">Bank Details</label> <form:input type="text" path="bankName" placeholder="Bank Names "/>
				</div>
			</td>
		</tr> 
	<tr> <td> 			<div class="form-group col-md-6">
					<label >Admission Date</label> <form:input type="date"  path="admissionDate"/>
				</div>
			</td>
<td> 				<div class="form-group col-md-6">
					<label for="form:inputEmail4">Place of Birth</label> <form:input type="text" path="birthPlace" placeholder="Place Of  Birth"/>
				</div>
	</td>
	
	<td> 
				<div class="form-group col-md-6">
					<label for="form:inputState">Last class Attended</label> <form:select path="lastClassAttended">
					<j:forEach var="classesList" items="${classesList}">
					<option value="${classesList.classes}">${classesList.classes}</option>
					</j:forEach>
					</form:select>
				</div>
</td>
	</tr>
<tr> <td> 
			<button type="submit" class="btn btn-primary">Confirm Admission</button>
		</td></tr>
			<tr> 
			<td><div class="form-group col-md-6">
					<label >Student Photo</label> <input type="file"  name="samagraPic" />
				</div>
			</td>
			<td><div class="form-group col-md-6">
					<label for="form:inputEmail4">Aadhar No</label> <form:input type="text" path="aadhar" placeholder="Aadhar Number"/>
				</div>
			</td>
			<td><div class="form-group col-md-6">
					<label > Aadhar Photo</label> <input type="file" name="aadharPic" />
				</div>
			</td>
			<td><div class="form-group col-md-6">
					<label for="form:inputEmail4">Student Photo</label> <input type="file" name="studentPic" />
				</div>
			</td>
			</tr>
			
			<tr> 
			<td><div class="form-group col-md-6">
					<label >Photo</label> <input type="file" name="stuPicAlt" />
				</div>
			</td>
			<td>	<div class="form-group col-md-6">
					<label for="form:inputEmail4">TC Photo</label> <input type="file" name="tcPic" />
				</div>
			</td>
			<td><div class="form-group col-md-6">
					<label >Photo</label> <input type="text" name="photo" placeholder="Alternate Contact"/>
				</div>
			</td>
			<td><div class="form-group col-md-6">
					<label for="form:inputEmail4">Migration Photo</label> <input type="text" name="migrationPic" />
				</div>
			</td>
			</tr>
			
<tr> <td> 				
				<div class="form-group col-md-6">
					<label >Photo</label> <input type="text" name="altContact" />
				</div>
</td>
<td> 
				<div class="form-group col-md-6">
					<label for="form:inputEmail4">Cast Certificate</label> <input type="file" name="castCertPic" />
				</div>
	</td>
	<td> 			<div class="form-group col-md-6">
					<label >Photo</label> <input type="text" name="altContact" />
				</div>
		</td>
			

		</tr>

	</table>

		</form:form>

</center>
		
</body>
</html>	