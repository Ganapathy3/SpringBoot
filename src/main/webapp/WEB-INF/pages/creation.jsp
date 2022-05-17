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
<style type="text/css">

.row{
 
padding: 5px;
}
.col-4{
 font-weight:bold;
}
</style>
</head>



</head>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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



	<form action="/save" method="get">
<div style="margin-left:25%">
 
<div class="container">
<div class="row">
 <div class="col-6"> 
    <div class="row">
     <div class="col-4">Name: </div>
     <div class="col-4"><input type ="text" name="name"> </div>
   </div>
</div>
</div>



<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4">Phone: </div>
<div class="col-4"><input type ="text" name="Phone"> </div>
</div>
</div>
</div>

<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4">Dob: </div>
<div class="col-4"><input type ="date" name="dob"> </div>
</div>
</div>
</div>


<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4">Team: </div>
<div class="col-4"><select name="team">
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
  <input type="radio" id="html" name="gender" value="Male">
  <label for="html">Male</label>
  <input type="radio" id="css" name="gender" value="Female">
  <label for="css">Female</label><br></div>
</div>
</div>
</div>


<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4">Companyname: </div>
<div class="col-4"><input type ="text" name="companyname"> </div>
</div>
</div>
</div>


<div class="row">
<div class="col-6"> 
<div class="row">
<div class="col-4">previousExperience: </div>
<div class="col-4"><input type ="text" name="previousExperience"> </div>
</div>
</div>
</div>


   <input type="submit" name="submit" id="submit" value="Submit">

</div>


</div>

</form>


</body>
</html>

</body>
</html>