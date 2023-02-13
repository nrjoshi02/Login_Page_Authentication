<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>

body{


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

    

    <%
    
       response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    
       response.setHeader("Pragma","no-cache"); 
    
       response.setHeader("Expires","0"); 
    
       if(session.getAttribute("username") == null){
    	   
    	   response.sendRedirect("login.jsp");
       }
    
    %>
    Hello, ${username} , welcome to spider-verse 
    <h1>SPIDER VERSE</h1> 
    <p>Spider-Man is a superhero appearing in American comic books published by Marvel Comics. Created by writer-editor Stan Lee and artist Steve Ditko, he first appeared in the anthology comic book Amazing Fantasy #15 (August 1962) in the Silver Age of Comic Books. He has been featured in comic books, television shows, films, video games, novels, and plays. Spider-Man's secret identity is Peter Parker, a teenage high school student and an orphan raised by his Aunt May and Uncle Ben in New York City after his parents Richard and Mary Parker died in a plane crash. Lee and Ditko had the character deal with the struggles of adolescence and financial issues and gave him many supporting characters, such as Flash Thompson, J. Jonah Jameson, and Harry Osborn; romantic interests Gwen Stacy, Mary Jane Watson, and the Black Cat; and his enemies such as the Green Goblin, Doctor Octopus, and Venom. In his origin story, Spider-Man gets his superhuman spider-powers and abilities after being bitten by a radioactive spider; these include clinging to surfaces and ceilings, superhuman strength, speed, agility, reflexes, stamina, and detecting danger with his precognition ability called "spider-sense." He also builds wrist-mounted "web-shooter" devices that shoot artificial spider-webs of his own design that were meant to be used for fighting his enemies and web-swinging across the city. After the personal tragedy of his late Uncle Ben who is killed by a thief whom Peter failed to bring himself to stop, Peter began using his spider-powers to fight against crime as Spider-Man.</p>
    <br>
    <a href = "./about.jsp">About Us</a>
    
    
      <form action ="Logout">
            <div class = "form-field">
               <button class="btn" type="submit">Log Out</button>
            </div>
     
     </form>

</body>
</html>