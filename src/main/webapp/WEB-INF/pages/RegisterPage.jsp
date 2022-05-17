<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register page</title>
<style>
html {
    height: 100%;
    width: 100%;
}

body {
    background: url("https://images.unsplash.com/photo-1485802007047-7774de7208e5?dpr=1&auto=compress,format&fit=crop&w=1800&h") no-repeat center center fixed;
    background-size: cover;
    font-family: 'Droid Serif', serif;
}

#container {
    background: rgba(3, 3, 55, 0.5);
    width: 18.75rem;
    height: 34rem;
    margin: auto;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
}

header {
    text-align: center;
    vertical-align: middle;
    line-height: 3rem;
    height: 3rem;
    background: rgba(3, 3, 55, 0.7);
    font-size: 1.4rem;
    color: #d3d3d3;
}

fieldset {
    border: 0;
    text-align: center;
        display: block;
    
  
}

input[type="submit"] {
    background: rgba(235, 30, 54, 1);
    border: 0;
    display:block ;
    width: 70%;
    margin: 0 auto;
    color: white;
    padding: 0.7rem;
    cursor: ;
}

input {
    background: transparent;
    border: 0;
    border-left: 4px solid;
    border-color: #FF0000;
    padding: 10px;
    color: white;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="password"]:focus {
    outline: 0;
    background: rgba(235, 30, 54, 0.3);
    border-radius: 1.2rem;
    border-color: transparent;
}

::placeholder {
    color: #d3d3d3;
}
.select{
color : white;
}

.gender{
 color : white;
}
.gen{
color : white;
}
</style>
</head>
<body>

      <div id="container">
         <header>Register Fresh account</header>
        <form action="/save" method="get">
            <fieldset  >
               <br/>
               <input type="text" name="name" id="username" placeholder="Username"  required autofocus>
                <br/><br/>
               <input type="text" name="Phone" id="Phone" placeholder="Phone no" required autofocus>
                <br/><br/>
               <input type="text" name="dob" id="dob" placeholder="Dob" required >
                <br/><br/>
                <label for="cars" class="select">Choose a Team:</label>

<select name="team" id="cars" >
  <option value="Rs">Rs</option>
  <option value="GoPolicy">GoPolicy</option>
  <option value="LIC">LIC</option>
  <br/><br/>
  
</select>
 
               <!-- <input type="text" name="team1" id="team" placeholder="Team " required >-->
                <!-- <input type="radio" id="html" name="gender" value="">-->
                <div class="gen" name="gen">
                <p >Gender</p>
                
  <input type="radio"  name="gender" value="Male">
  <label for="html" color="white">Male</label>
  <input type="radio"  name="gender" value="Female">
  <label for="css" color="white">Female</label><br>
</div>
                <!-- <input type="text" name="gender" id="username" placeholder="Gender" required >-->
                <br/><br/>
               <input type="text" name="companyname" id="username" placeholder="companyname"  >
                <br/><br/>
               <input type="text" name="previousExperience" id="username" placeholder="previousExperience" required  autofocus>
                <br/><br/>
               <label for="submit"></label>
               <input type="submit" name="submit" id="submit" value="REGISTER">
            </fieldset>
         </form>
      </div>
  
</body>
</html>