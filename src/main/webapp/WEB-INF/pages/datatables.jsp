<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Data tabels Styles and script -->
<!-- adding css-->
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

<!-- Adding JQuery-->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<!-- Adding datatabels cdn -->
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>



<!-- Html page styling 
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
	
	<!-- Bootstrap style start-->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<!-- Bootstrap style end-->
	
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>


	<div class="w3-sidebar w3-bar-block w3-red" style="width: 25%">
		<a	href="/home2" class="w3-bar-item w3-button">Home</a> 
		<a href="/creation" class="w3-bar-item w3-button">Creation</a>
		<a	href="/datatables" class="w3-bar-item w3-button">DataTabels</a>
		<a href="/Ajaxdatatables" class="w3-bar-item w3-button"> Ajax Tables</a>
	    <a href="/EditTable" class="w3-bar-item w3-button">Ajax Tables with Edit Button</a>
	    <a	href="/EditTableAndCSV" class="w3-bar-item w3-button">Ajax Tables with Edit Button and Download option</a> 
	    <a	href="/DeleteRow" class="w3-bar-item w3-button">Ajax Tables with Edit amd Delete Button </a>
	    <a href="/DeleteRowAjaxApi1" class="w3-bar-item w3-button">Delete Button Using Ajax</a>
	    
	    <a href=" /login" class="w3-bar-item w3-button">Logout</a>
	    
	</div>

	<div style="margin-left: 25%">

		<div class="w3-container w3-dark-grey">
			<h1><img src="https://www.nicepng.com/png/full/188-1885416_layer-layers-stack-paper-add-plus-comments-data.png" 
	alt="W3Schools.com" style="width:84px;height:92px;">User Details</h1>
					</div>

		<div class="w3-container">
			<h6>Data Tabels </h6>
			
				<!-- Table -->
	<div class="col-lg-12">
		<h2>HTML Table</h2>
		<br>
		<table id="example" class="display">
			<thead>
				<tr>
					<th>Name</th>
					<th>Phone</th>
					<th>DOB</th>
					<th>Team</th>
					<th>Gender</th>
					<th>Company name</th>
					<th>previousExperience</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${data}" var="it">
					<tr>
						<td>${it.name}</td>
						<td>${it.phone}</td>
						<td>${it.dob}</td>
						<td>${it.team}</td>
						<td>${it.gender}</td>
						<td>${it.companyname}</td>
						<td>${it.previousExperience}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
			
		</div>

	</div>



</body>
</html>