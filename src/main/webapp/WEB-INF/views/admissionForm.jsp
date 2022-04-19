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
	
	
	 <script type="text/javascript">
            function validateform()
            {
            	var valid = true;
            	
                var name = document.getElementById("name");
                var religion = document.getElementById("religion");  
                var fName = document.getElementById("fName");
                var mName = document.getElementById("mName");
                var fOccupation = document.getElementById("fOccupation");
                var mOccupation = document.getElementById("mOccupation");
                var contact = document.getElementById("contact");
                var altContact = document.getElementById("altContact");                
                var scholarNumber = document.getElementById("scholarNumber");
                var lastSchoolStudied = document.getElementById("lastSchoolStudied");  
                var accNo = document.getElementById("accNo");
                var ifsc = document.getElementById("ifsc");
                var address = document.getElementById("address");
                var city = document.getElementById("city");
                var state = document.getElementById("state");
                var birthPlace = document.getElementById("birthPlace");
                var bankName = document.getElementById("bankName");          
                var zip = document.getElementById("zip");
                var samagraId = document.getElementById("samagraId");
                var aadhar = document.getElementById("aadhar");
                var dob = document.getElementById("dob");
                var admissionDate = document.getElementById("admissionDate");
                

                
                
                
                if(name.value.length<=0) {   alert("Name Can not be empty!");
                        valid = false;
                    }else if(name.value.length>20) {
                    	alert("Name should be less than 20 Characters");
                    	valid=false;
                    }else if(!isNaN(name.value)){
                            alert("Name Should Contain Only  Alphabets [ A-Z ]");
                    valid = false;
                }
                
                
                if(religion.value.length<=0) {   alert("Religion Can not be empty!");
                    valid = false;
                }else if(religion.value.length>20) {
                	alert("Religion should be less than 20 Characters");
                	valid=false;
                }else if(!isNaN(religion.value)){
                        alert("Religion Should Contain Only  Alphabets [ A-Z ]");
                valid = false;
            }
                
                if(fName.value.length<=0) {   
                	alert("Father Name Can not be empty!");
                valid = false;
            }else if(fName.value.length>20) {
            	alert("Father Name should be less than 20 Characters");
            	valid=false;
            }else if(!isNaN(fName.value)){
                    alert("Father Name Should Contain Only  Alphabets [ A-Z ]");
            valid = false;
        }
                
                if(mName.value.length<=0) {   
                	alert("Mother Name Can not be empty!");
                valid = false;
            }else if(mName.value.length>20) {
            	alert("Mother Name should be less than 20 Characters");
            	valid=false;
            }else if(!isNaN(mName.value)){
                    alert("Mother Name Should Contain Only  Alphabets [ A-Z ]");
            valid = false;
        }
  
                
                if(fOccupation.value.length<=0) {   
                	alert("Father Occupation  Can not be empty!");
                valid = false;
            }else if(fOccupation.value.length>20) {
            	alert("Father Occupation should be less than 20 Characters");
            	valid=false;
            }else if(!isNaN(fOccupation.value)){
                    alert("Father Occupation Should Contain Only  Alphabets [ A-Z ]");
            valid = false;
        }
    		
                if(mOccupation.value.length<=0) {   
                	alert("Mother Occupation  Can not be empty!");
                valid = false;
            }else if(mOccupation.value.length>20) {
            	alert("Mother Occupation should be less than 20 Characters");
            	valid=false;
            }else if(!isNaN(mOccupation.value)){
                    alert("Mother Occupation Should Contain Only  Alphabets [ A-Z ]");
            valid = false;
        }       
                
                if(contact.value.length<=0) {   alert("Number Can not be empty!");
                valid = false;
            }else if(isNaN(contact.value)){
                alert("Number Should Contain Only  Numeric value [ 0-9 ]");
                valid = false;
            }else if(contact.value.length<10) {
            	alert("Number should be minimum of 10 Characters");
            	valid=false;
            }else if(contact.value.length>10) {
            	alert("Number should not more than 10 Characters");
            	valid=false;
            }
        
        
        if(altContact.value.length<=0) {   alert("Alternate Number Can not be empty!");
        valid = false;
    }else if(isNaN(altContact.value)){
        alert("Alternate Number Should Contain Only  Numeric value [ 0-9 ]");
        valid = false;
    }else if(altContact.value.length<10) {
    	alert("Alternate Number should be minimum of 10 Characters");
    	valid=false;
    }else if(altContact.value.length>15) {
    	alert("Alternate Number should not more than 10 Characters");
    	valid=false;
    }    
        
        if(scholarNumber.value.length<=0) {   alert("Scholar Number Can not be empty!");
        valid = false;
    }else if(isNaN(scholarNumber.value)){
        alert("Scholar Number Should Contain Only  Numbers [ 0-9 ]");
        valid = false;
    }else if(scholarNumber.value.length>20) {
    	alert("Scholar Number should be less than 20 Characters");
    	valid=false;
    }
        
     

        if(lastSchoolStudied.value.length<=0) {   alert("Last School Studied Can not be empty!");
        valid = false;
    }else if(!isNaN(lastSchoolStudied.value)){
        alert("Last School Studied Should Contain Only  Alphabets[ A-Z ]");
        valid = false;
    }else if(lastSchoolStudied.value.length>20) {
    	alert("Last School Studied length should be less than 20 Characters");
    	valid=false;
    }
        
        if(accNo.value.length<=0) {   alert("Account Number Can not be empty!");
        valid = false;
    }else if(isNaN(accNo.value)){
        alert("Account Number Should Contain Only  Numeric value [ 0-9 ]");
        valid = false;
    }else if(accNo.value.length<10) {
    	alert("Account Number should be minimum of 10 Characters");
    	valid=false;
    }else if(accNo.value.length>20) {
    	alert("Account Number should not more than 20 Characters");
    	valid=false;
    }
        
        if(ifsc.value.length<=0) {   alert("IFSC Can not be empty!");
                valid = false;
            }else if(ifsc.value.length>15) {
            	alert("IFSC should be less than 15 Characters");
            	valid=false;
            }
        
       
        if(address.value.length<=0) {   alert("Address Can not be empty!");
                valid = false;
            }else if(address.value.length>200) {
            	alert("Name should be less than 200 Characters");
            	valid=false;
            }
     

        if(city.value.length<=0) {   alert("City Name Can not be empty!");
                valid = false;
            }else if(city.value.length>30) {
            	alert("City Name should be less than 30 Characters");
            	valid=false;
            }else if(!isNaN(city.value)){
                    alert("City Name Should Contain Only  Alphabets [ A-Z ]");
            valid = false;
        }
        
        if(state.value.length<=0) {   alert("State Name Can not be empty!");
        valid = false;
    }else if(state.value.length>40) {
    	alert("State Name should be less than 40 Characters");
    	valid=false;
    }else if(!isNaN(state.value)){
            alert("State Name Should Contain Only  Alphabets [ A-Z ]");
    valid = false;
}

        
        if(birthPlace.value.length<=0) {   alert("BirthPlace Can not be empty!");
        valid = false;
    }else if(birthPlace.value.length>30) {
    	alert("BirthPlace should be less than 30 Characters");
    	valid=false;
    }else if(!isNaN(birthPlace.value)){
            alert("BirthPlace Should Contain Only  Alphabets [ A-Z ]");
    valid = false;
}
        

        if(bankName.value.length<=0) {   alert("Bank Name Can not be empty!");
                valid = false;
            }else if(bankName.value.length>40) {
            	alert("Bank Name should be less than 40 Characters");
            	valid=false;
            }else if(!isNaN(bankName.value)){
                    alert("Bank Name Should Contain Only  Alphabets [ A-Z ]");
            valid = false;
        }
        if(zip.value.length<=0) {   alert("Zip Can not be empty!");
        valid = false;
    }else if(isNaN(zip.value)){
        alert("Zip Should Contain Only  Numeric value [ 0-9 ]");
        valid = false;
    }else if(zip.value.length>10) {
    	alert("Zip should not more than 10 Characters");
    	valid=false;
    }

        
        if(samagraId.value.length<=0) {   alert("SamagraId Can not be empty!");
        valid = false;
    }else if(isNaN(samagraId.value)){
        alert("SamagraId Should Contain Only  Numeric value [ 0-9 ]");
        valid = false;
    }else if(samagraId.value.length>20) {
    	alert("SamagraId should not more than 20 Characters");
    	valid=false;
    }

        
        if(aadhar.value.length<=0) {   alert("Aadhar Number Can not be empty!");
        valid = false;
    }else if(isNaN(aadhar.value)){
        alert("Aadhar Number Should Contain Only  Numeric value [ 0-9 ]");
        valid = false;
    }else if(aadhar.value.length>20) {
    	alert("Aadhar Number should not more than 20 Characters");
    	valid=false;
    }
        
        if(dob.value.length<=0) {   alert("Date Can not be empty!");
        valid = false;
    }

        if(admissionDate.value.length<=0) {   alert("Admission Date Can not be empty!");
        valid = false;
    }

        
                return valid;
            };

            
        </script>
	
	
	
<title>Admission Form</title>
</head>

<body>


	<div>
<center>
<br>
<hr> 
<font color="red"> <h2> ${msg}</h2> </font>

<br> 
<hr> 
		<form:form action="saveAdmissison" modelAttribute="admissionDto" method="post" enctype="multipart/form-data" onsubmit="return validateform()">

			<form:input type="hidden" path="id" />
		
			<table>
			<tr> <td><div class="form-group col-md-6">
					<label >Name </label> <form:input type="text" id="name"  path="name" placeholder="Name"/>
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
					<label for="form:inputEmail4">Religion</label> <form:input type="text" id="religion" path="religion" placeholder="Religion"/>
				</div>
			</td>
			</tr>
			<tr> 
			
			
			<td>	<div class="form-group col-md-6">
					<label >Father Name</label> <form:input type="text" id="fName" path="fName" placeholder="Father Name"/>
				</div>
			</td>
			<td><label >Father Occupation</label> <form:input type="text" id="fOccupation"  path="fOccupation" placeholder="Father Name"/>
				</div>
			</td>
			<td><div class="form-group col-md-6">
					<label for="form:inputEmail4">Mother Name </label> <form:input type="text" id="mName" path="mName" placeholder="Mother Name"/>
				</div> 
			</td>
			<td><div class="form-group col-md-6">
					<label >Mother Occupation</label> <form:input type="text" id="mOccupation" path="mOccupation" placeholder="Father Name"/>
				</div>
			</td>
			</tr>
		
			
			
			
			<tr> 
			<td><div class="form-group col-md-6">
					<label for="form:inputEmail4">Contact</label> <form:input type="text" id="contact" path="contact"  placeholder="Contact Number"/>
				</div>
			</td>
<td><div class="form-group col-md-6">
					<label for="form:inputEmail4">Alt-Contact</label> <form:input type="text" id="altContact" path="altContact" placeholder="Contact Number"/>
				</div>
			</td>	
<td>
<div class="form-group col-md-6">
					<label >Date Of Birth</label> <form:input type="date" id="dob" path="dob"/>
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
					<label >Scholar No</label> <form:input type="text" id="scholarNumber" path="scholarNumber" placeholder="Scholar Number"/>
				</div>
			</td><td> 	<div class="form-group col-md-6">
					<label for="form:inputEmail4">Last School Studied</label> <form:input type="text" id="lastSchoolStudied" path="lastSchoolStudied" placeholder="Last Attended School"/>
				</div>
				</td>
</tr>
					<tr> 
					

					
			<td> 
				<div class="form-group col-md-6">
					<label >Account No</label> <form:input type="text" id="accNo" path="accNo" placeholder="Account No"/>
				</div>
				</td> <td> <div class="form-group col-md-6">
					<label for="form:inputEmail4">IFSC Code</label> <form:input type="text" id="ifsc" path="ifsc" placeholder="IFSC Code"/>
				</div>
				</td>
<td> 			<div class="form-group">
				<label for="form:inputAddress">Address</label> <form:input type="text" id="address" path="address" placeholder="Please Provide Address"/>
			</div>
	</td>
			<td> 
				<div class="form-group col-md-6">
					<label for="form:inputCity">City</label> <form:input type="text" id="city" path="city"/>
				</div>
</td></tr>	
<td> 			<div class="form-group col-md-6">
					<label for="form:inputState">State</label> <form:input id="state" path="state" />
				</div>
	</td><td> 			<div class="form-group col-md-2">
					<label for="form:inputZip">Zip</label> <form:input type="text" id="zip" path="zip"/>
				</div>
		</td>
		<td><div class="form-group col-md-6">
					<label for="form:inputEmail4">Samagra ID</label> <form:input type="text" id="samagraId" path="samagraId" placeholder="Samagra ID "/>
				</div>
			</td>
			
			<td> 		<div class="form-group col-md-6">
					<label for="form:inputEmail4">Bank Details</label> <form:input type="text" id="bankName" path="bankName" placeholder="Bank Names "/>
				</div>
			</td>
		</tr> 
	<tr> <td> 			<div class="form-group col-md-6">
					<label >Admission Date</label> <form:input type="date" id="admissionDate" path="admissionDate"/>
				</div>
			</td>
<td> 				<div class="form-group col-md-6">
					<label for="form:inputEmail4">Place of Birth</label> <form:input type="text" id="birthPlace" path="birthPlace" placeholder="Place Of  Birth"/>
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
			
		</td></tr>
		
			<tr> 
			
			<td><div class="form-group col-md-6">
					<label for="form:inputEmail4">Aadhar No</label> <form:input type="text" id="aadhar" path="aadhar" placeholder="Aadhar Number"/>
				</div>
			</td>
			<td><div class="form-group col-md-6">
					<label > Aadhar Photo</label> <input type="file" id="aadharPic" name="aadharPic" />
				</div>
			</td>
			
			<button type="submit" class="btn btn-primary">Confirm Admission</button>
			
			
</tr>
	</table>			
			

			
		<br> 
			
			<div class="form-group col-md-6">
					<label > Samagra Photo</label> <input type="file" name="samagraPic" />
				</div>
			
			
			<Br> 
			<div class="form-group col-md-6">
					<label for="form:inputEmail4">Student Photo</label> <input type="file" name="studentPic" />
				</div>
			
			<br> 
			<div class="form-group col-md-6">
					<label for="form:inputEmail4">Cast Certificate</label> <input type="file" name="castPic" />
				</div>
			
			<br>
				<div class="form-group col-md-6">
					<label for="form:inputEmail4">TC Photo</label> <input type="file" name="tcPic" />
				</div>
			

			<br> 
			<div class="form-group col-md-6">
					<label >Migration Photo</label> <input type="file" name="migrationPic" />
				</div>


			
			
		</form:form>

</center>
		
</body>
</html>	