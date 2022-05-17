<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax Table</title>

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



	
	<!-- Bootstrap style start-->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<!-- Bootstrap style end-->
	
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
/* $(document).on('click', '#getDataBtn', function(){ */
	$(document).ready(function() {
	$.ajax({
           url: "http://localhost:9090/getAllDataWithAjax",
          data: "",
           type: "GET",
           dataType: "json",
           success: function(response) {
           
            console.log(response);
            //$('#myrenewalview').html(table);
            var table= $('#prjView').DataTable({
             data:response,
             dom: 'Bfrtip',
  	        buttons: [
  	            'copy', 'csv', 'excel', 'pdf', 'print'
  	        ],
            
                    
                  
             columns: [
            	 {title:"Name", "data": "name"},
            	 { title:"Phone","data": "phone" },
            	 {  title:"Dob","data": "dob" },
            	 { title:"Team","data": "team" },
            	 { title:"Gender","data": "gender" },
                 { title:"Companyname","data": "companyname" }, 
                 { title:"Companyname","data": "companyname" },         
                 { title:"PreviousExperience","data": "previousExperience" },         

             

            
            ]
             });
  
            
           },
           error: function() {
        	   Swal.fire({
        		   icon: 'error',
        		   title: 'Oops...',
        		   text: 'Something went wrong!',
        		   footer: '<a href="">Why do I have this issue?</a>'
        		 })
           }
          });
	
});
</script>
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
			<h1>User Details Using Ajax</h1>
			
		</div>

		<div class="w3-container">
			<h6>Data Tabels Using Ajax</h6>
			
				<!-- Table -->
	<div class="col-lg-12">
		<h2>Ajax Table</h2>
		<br>
		<table id="prjView" class="display">
			
		</table>
	</div>
			
		</div>

	</div>



</body>
</html>