<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- bootstrap css and jquery    start -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<!-- bootstrap css and jquery    end -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style type="text/css">


.row{
 
padding: 5px;
}
.col-4{
 font-weight:bold;
}
</style>
</head>



<body>



<div class="w3-sidebar w3-bar-block w3-red" style="width:25%">
  <a href="/home2" class="w3-bar-item w3-button">Home</a>
  <a href="/creation" class="w3-bar-item w3-button">Creation</a>
  <a href="/datatables" class="w3-bar-item w3-button">DataTables</a>
  <a href="/Ajaxdatatables" class="w3-bar-item w3-button">Ajax Tables</a>
  <a href="/EditTable" class="w3-bar-item w3-button"> Ajax Tables with Edit Button</a>
   <a href="/EditTableAndCSV" class="w3-bar-item w3-button">Ajax Tables with Edit Button and Download option</a>
   <a	href="/DeleteRow" class="w3-bar-item w3-button">Ajax Tables with Edit amd Delete Button </a>
    <a href="/DeleteRowAjaxApi1" class="w3-bar-item w3-button">Delete Button Using Ajax</a>
   
   <a href=" /login" class="w3-bar-item w3-button">Logout</a>
  
</div>

	<div style="margin-left: 25%">

		<div class="w3-container w3-dark-grey">
	<img src="https://www.nicepng.com/png/full/1006-10065149_deadpool-movie-png.png" 
	alt="W3Schools.com" style="width:704px;height:182px;">
		</div>
	</div>



	
<div style="margin-left:25%">
 
<div class="container">
<div class="row">
 <div class="col-6"> 
    <div class="row">
     <div class="col-4">Name: </div>
     <div class="col-4"><input type ="text" id="nameId" name="name" > </div>
   </div>
</div>
</div>



<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4">Phone: </div>
<div class="col-4"><input type ="text" id="phoneId" name="Phone"> </div>
</div>
</div>
</div>

<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4">Dob: </div>
<div class="col-4"><input type ="date"  id="dobId" name="dob"> </div>
</div>
</div>
</div>


<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4">Team: </div>
<div class="col-4"><select name="team"   id="teamId">
    <option value="Rs">Rs</option>
    <option value="Gopolicy">Gopolicy</option>
    <option value="LIC">LIC</option>
    
  </select></div>
</div>
</div>
</div>

<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4">Gender: </div>
<div class="col-4">
  <input type="radio" id="gender" name="gender" value="Male">
  <label for="html">Male</label>
  <input type="radio" id="gender" name="gender" value="Female">
  <label for="css">Female</label><br></div>
</div>
</div>
</div>


<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4">Companyname: </div>
<div class="col-4"><input type ="text" id="companyNameId" name="companyname"> </div>
</div>
</div>
</div>


<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4">previousExperience: </div>
<div class="col-4"><input type ="text" id="previousExperienceId" name="previousExperience"> </div>
</div>
</div>
</div>

<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4">ProfilePic: </div>
<div class="col-4"><input id="inputFile" type ="file" name="ProfilePic"> </div>
</div>
</div>
</div>



<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4"><!-- textArea  --></div>
<div class="col-4"> <textarea id="textArea" name="textArea" rows="4" cols="50" hidden="hidden"></textarea> </div>
</div>
</div>
</div>

   <input type="button" name="submit" id="submit" value="Submit" onclick="saveBase64()">
   
   <!-- script for get the reflect the converted code in our TextArea start -->
   <script>
function readFile() {
  
  if (this.files && this.files[0]) {
    
    var FR= new FileReader();
    
    FR.addEventListener("load", function(e) {
     /*  document.getElementById("img").src       = e.target.result; */
      document.getElementById("textArea").innerHTML = e.target.result;
    }); 
    
    FR.readAsDataURL( this.files[0] );
  }
  
	}

	document.getElementById("inputFile").addEventListener("change", readFile);
	
</script>
 <!-- script for get the reflect the converted code in our TextArea end -->
   
<script type="text/javascript">

function saveBase64(){
	
	var name  = document.getElementById('nameId').value;
	var phone = document.getElementById('phoneId').value;
	var  dob  = document.getElementById('dobId').value;
	var  Team = document.getElementById('teamId').value;
	//var GenderM = document.getElementById('genderMale').value;
	/* var Gender = document.getElementById('gender').value; */
	var Gender = $("input[type=radio][name=gender]:checked").val()
	var  companyName= document.getElementById('companyNameId').value;
	var  previousExperience= document.getElementById('previousExperienceId').value;
	var Img = document.getElementById('textArea').value; 
	alert(Gender) 
	$.ajax({
	     url: "http://localhost:9090/creationWithAjaxApi2",
	     data: {userName:name, Phone:phone, dobParam:dob, TeamParam:Team, genderParam:Gender, companyNameParam:companyName, previousExperienceParam:previousExperience, ImgParam:Img},
	     type: "POST",
	     dataType: "text",
	     success: function(response) {
	  
	    	 if(response=="success"){
	    	        window.location.replace( "http://localhost:9090/dataAdded");
	    	        }
	    	        else{
	    	        alert(response);
	    	        }
	     },
	     error: function() {
	     alert("error");
	     }
	     }); 
}


</script>





</div>


</div>



</body>
</html>

</body>
</html>