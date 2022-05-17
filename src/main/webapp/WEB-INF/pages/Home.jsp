<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/save" method="get">
 
      <p><b>Name</b></p><input type="text" id="fname" name="name"><br><br>
      <p><b>Phone no</b></p><input type="text" id="fname" name="Phone"><br><br>
      <p><b>Dob</b></p><input type="text" id="fname" name="dob"><br><br>
    <!--<p><b>Team</b></p><input type="text" id="fname" name="team"><br><br> -->
     <p><b>Team</b></p> 
       <select name="team" >
  <option value="Rs">Rs</option>
  <option value="Go policy">Go policy</option>
  <option value="LIC">LIC</option>
  
</select>
      <p><b>Gender</b></p><input type="text" id="fname" name="gender"><br><br>
      
      <p><b>companyname</b></p><input type="text" id="lname" name="companyname"><br><br>
      <p><b>previousExperience</b></p><input type="text" id="lname" name="previousExperience"><br><br>
      <input type="submit" value="Submit">
      
     
</form>
</body>
</html>