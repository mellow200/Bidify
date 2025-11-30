<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bidify</title>
       
        <link rel="stylesheet" href="styles/style.css">
        
        <script>
              window.onload = function() {
            <% if(request.getAttribute("status") != null) { %>
                alert("<%= request.getAttribute("message") %>");
            <% } %>
             };
         </script>
    </head>

    <body>
        <!--header -->
       
         <%@ include file="header.jsp" %>
        
        <form action="loginservlet" method="post"  id ="loggin" >
            <legend><h1>User login</h1></legend>
            <div class ="field">
                <input type = "email" name = "email" id="email" placeholder="Email" required>
            </div>
            <div class ="field">
                <input type = "password" name = "pass" id="pass" placeholder="Password" required>
            </div>
            <div class="check">
                <input type="checkbox" id ="terms" required>Agree to the terms and conditions<br>
            </div>
            <div class="fieldloggin">
                <button type="submit" id ="submit">Login</button>
            </div>
            <div class="reg">
                <a href="register.jsp">Register</a>
            </div>
            
        </form>
        <!-- include footer -->
        <%@ include file="footer.jsp" %>
    </body>

</html>
