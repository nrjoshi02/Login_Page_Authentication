<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Page</title>
<style>

body {
  background-image: url("./spidey_wallpaper.jpg");	
  background-size: cover;
  font-family: 'Lato', sans-serif;
  color: #4A4A4A;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  overflow: hidden;
  margin: 0;
  padding: 0;
}

form {
  width: 350px;
  position: relative;
}
form .form-field::before {
  font-size: 20px;
  position: absolute;
  left: 15px;
  top: 17px;
  color: #888888;
  content: " ";
  display: block;
  background-size: cover;
  background-repeat: no-repeat;
}
form .form-field:nth-child(1)::before {
  width: 20px;
  height: 20px;
  top: 15px;
}
form .form-field:nth-child(2)::before {
  width: 16px;
  height: 16px;
}
form .form-field {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  margin-bottom: 1rem;
  position: relative;
}
form input {
  font-family: inherit;
  width: 100%;
  outline: none;
  background-color: #fff;
  border-radius: 4px;
  border: none;
  display: block;
  padding: 0.9rem 0.7rem;
  box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
  font-size: 17px;
  color: #4A4A4A;
  text-indent: 40px;
}
form .btn {
  outline: none;
  border: none;
  cursor: pointer;
  display: inline-block;
  margin: 0 auto;
  padding: 0.9rem 2.5rem;
  text-align: center;
  background-color: red;
  color: #fff;
  border-radius: 4px;
  box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
  font-size: 17px;
}


</style>
</head>
<body>

   <!--   <form action="Login" method="post">
        Enter User name: <input type = "text" name = "uname"><br>
        Enter Password: <input type = "password" name = "pass"><br>
        <input type = "submit" value = "login">
    
    </form>  -->

<!-- partial:index.partial.html -->
<div id="bg"></div>

<div>
<form action="Signup" method = "post">
<div class="form-field">
    <input type="text" placeholder="Email / Username" name = "uname" />
  </div>
  
  <div class="form-field">
    <input type="password" placeholder="Password" name = "pass" />                         
    
   </div>
    <div class = "form-field">
            <button class="btn" type="submit">Sign Up</button>
    
</div>


</form>
</div>
<!-- partial -->

</body>
</html>