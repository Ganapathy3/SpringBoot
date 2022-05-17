<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    
<style>
html {
    height: 100%;
    width: 100%;
}
 
 
body {
    background: url("https://wallpaperaccess.com/full/3047225.jpg ") no-repeat center center fixed;
        
    background-size: cover;
    font-family: 'Droid Serif', serif;
}

#container {
    background: rgba(255, 255, 255, 0.5);
    width: 18.75rem;
    height: 17rem;
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
    background: rgb(225, 214, 216);
    border: 0;
    display:block ;
    width: 70%;
    margin: 0 auto;
    color: rgb(17, 8, 8);
    padding: 0.7rem;
    cursor: ;
}

input {
    background: transparent;
    border: 0;
    border-left: 4px solid;
    border-color: #e4d3d3;
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
    color: #271717;
}
.select{
color : white;
}


</style>

      <div id="container">
         <header>Login account</header>
        <form action="/home2" method="get">
            <fieldset  >
               <br/>
               <input type="text" name="name" id="username" placeholder="Username"  autofocus>
                <br/><br/>
               <input type="password" name="Phone" id="Phone" placeholder="Phone no" autofocus>
                <br/><br/>
              
                
              
               <label for="submit"></label>
               <input type="submit" name="submit"  value="Login"></a>
            </fieldset>
         </form>
      </div>
  

</body>
</html>