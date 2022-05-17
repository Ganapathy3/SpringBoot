<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax Table</title>


<!-- Adding Bootstrap -->
<!-- CSS only for model popup style-->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- Adding css and js for delete alert -->



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- CSS only for Edit button style start-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   
<!-- Css for jquery data table  start -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css">



<!-- Adding JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

 <!-- bootstrap only for Edit button style start-->
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script
	src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.2.2/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.html5.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.print.min.js"></script>


  
    
    
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
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
           // $('#myrenewalview').html(table);
            var table= $('#example').DataTable({
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
                 { title:"PreviousExperience","data": "previousExperience" },         
            /* button creation coloumn 1 */    
                 
                 { title:"Action","data": "previousExperience" ,
                	
                 /* Edit button creation start */

                	 "fnCreatedCell":function(data){
                	                  $(data).html(
                	                  "<input type='button' value='edit' class='btn btn-warning' data-toggle='modal' data-target='#myModal1'> <input type='button' value='Delete' class='btn btn-danger' data-toggle='modal' >");
                	 }
                 },  
                 
                 

             

            
            ]
            
             });
            $('#example tbody').on('click', '.btn-warning', function () {
                var name = $(this).closest('tr').find('td:eq(0)').text();
                var phone = $(this).closest('tr').find('td:eq(1)').text();
                var dob = $(this).closest('tr').find('td:eq(2)').text();
                var team = $(this).closest('tr').find('td:eq(3)').text();
                var gender = $(this).closest('tr').find('td:eq(4)').text();
                var companyName = $(this).closest('tr').find('td:eq(5)').text();
                var experience = $(this).closest('tr').find('td:eq(6)').text();
              
                
                document.getElementById('name').value = name;
                document.getElementById('idPhone').value = phone;
                document.getElementById('idcompanyname').value = companyName;
                document.getElementById('idpreviousExperience').value = experience;
                document.getElementById('dob').value = dob;
                document.getElementById('idteam').value = team;
                
            if(gender=="Male"){  
            	$('input[name=gender]:eq(0)').prop('checked', true);
            }else{
            	$('input[name=gender]:eq(1)').prop('checked', true);
            }
            
            
            
            
            });
            
            /// this function for delete  start
            $('#example tbody').on('click', '.btn-danger', function () {
                var name1 = $(this).closest('tr').find('td:eq(0)').text();
                 //alert(name1);
            
                $(document).ready(function() {
                	  swal({
                	        title: "Are you sure?",
                	        text: "But you will still be able to retrieve this file.",
                	        type: "warning",
                	        showCancelButton: true,
                	        confirmButtonColor: "#DD6B55",
                	        confirmButtonText: "Yes",
                	        cancelButtonText: "No",
                	        closeOnConfirm: false,
                	        closeOnCancel: false
                	      },
                	      function(isConfirm){
                	        if (isConfirm) {
                	              $.ajax({
                	             url: "http://localhost:9090/DeleteRowAjax",
                	             data: {userName:name1},
                	             type: "GET",
                	             dataType: "text",
                	             success: function(response) {
                	             location.reload();
                	             },
                	             error: function() {
                	             alert("error");
                	             }
                	             });

                	        } else {
                	          swal("Cancelled", "Your imaginary file is safe :)", "error");
                	        }
                	      });


                	});

                	   
                	 });
                	 },//end alert
          //  });             
            
              
            
          // },
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
	
	
	
	
/*  js for pdf csv print*/
	
	 
</script>






</head>
<body>





	<div class="w3-sidebar w3-bar-block w3-red" style="width: 25%">
		<a href="/home2" class="w3-bar-item w3-button" style="text-decoration: none;">Home</a>
  <a href="/creation" class="w3-bar-item w3-button" style="text-decoration: none;">Creation</a>
  <a href="/datatables" class="w3-bar-item w3-button" style="text-decoration: none;">DataTabels</a>
   <a href="/Ajaxdatatables" class="w3-bar-item w3-button" style="text-decoration: none;">Ajax Tables</a>
   <a href="/EditTable" class="w3-bar-item w3-button" style="text-decoration: none;">Ajax Tables with Edit Button</a>
     <a	href="/EditTableAndCSV" class="w3-bar-item w3-button" style="text-decoration: none;">Ajax Tables with Edit Button and Download option</a>
      <a href="/DeleteRow" class="w3-bar-item w3-button" style="text-decoration: none;">Ajax Tables with Edit amd Delete Button </a>
       <a href="/DeleteRowAjaxApi1" class="w3-bar-item w3-button" style="text-decoration: none;">Delete Button Using Ajax</a>
      
      <a href=" /login" class="w3-bar-item w3-button" style="text-decoration: none;">Logout</a>
      
      
	</div>

	<div style="margin-left: 25%">

		<div class="w3-container w3-dark-grey">
			<h1>User Details Using Ajax  with Edit & Delete Download Formats </h1>

		</div>

		<div class="w3-container">
			<h6>Data Tabels Using Ajax with Edit &  Delete Download Formats</h6>
         
			<!-- Table -->
			<div class="col-lg-12">
				<h2>Ajax Table</h2>
				<br>
				<table id="example" class="display nowrap">
                 </table>
                 
                 
                                   <!-- Modal -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><b>Edit Form</b></h4>
        </div>
        <div class="modal-body">
          <form action="/EditTableform" method="get">
<div style="margin-left:25%">
 



<div class="row">

    <div class="col-sm-4"><b>Name: </b></div>
     <div class="col-sm-4"><b><input  id="name"  type ="text" name="name"  readonly> </b></div>
   </div></br>


	

<div class="row">

<div class="col-sm-4"><b>Phone: </b></div>
<div class="col-sm-4"><b><input id="idPhone"   type ="text" name="phone"></b> </div>
</div></br>



<div class="row">

<div class="col-sm-4"><b>Dob:</b> </div>
<div class="col-sm-4"><b><input id="dob"  type ="date" name="dob"> </b></div>
</div></br>



<div class="row">

<div class="col-sm-4"><b>Team:</b> </div>
<div class="col-sm-4"><select id="idteam" name="team">
    <option value="Rs">Rs</option>
    <option value="Gopolicy">Gopolicy</option>
    <option value="LIC">LIC</option>
    
  </select></div>
</div></br>

<div class="row">

<div class="col-sm-4"><b>Gender:</b> </div>
<div class="col-sm-4">
  <b><input type="radio"  name="gender" value="Male"></b>
<b>  <label for="html">Male</label></b>
 <b> <input type="radio" name="gender" value="Female"></b>
 <b> <label for="css">Female</label><br></div></b>
</div></br>



<div class="row">
<div class="col-sm-4"><b>Companyname: </b></div> 

<div class="col-sm-4"><b><input id="idcompanyname" type ="text" name="companyname"></b> </div>

</div></br>



<div class="row">
<div class="col-sm-4"> <b>previousExperience: </b></div>
<div class="col-sm-4"><b><input id="idpreviousExperience"   type ="text" name="previousExperience"></b> </div>
</div></br>



   <b><input type="submit" name="submit" id="submit" value="Submit"></b>

</div>



</form>
									
									
								</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
                 
                 
              

  </div>

			

			</div>

		</div>

	



</body>
</html>
