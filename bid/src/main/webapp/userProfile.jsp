<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bidify</title>
        <link rel="stylesheet" href="styles/style2.css">
        <style>
        </style>
       
       <% if(request.getAttribute("status") != null) { %>
        <script>
                alert("<%= request.getAttribute("message") %>");
                
        </script>
        <% } %>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        
        
        <div class="accInfo">
            <form method="post" action="UpdateUserServlet">
                <h2> User Profile</h2>
                <c:forEach var="us" items="${userdetails}">
                
                
               
                <label>UID</label>     
                <input type="id" name="uid" value="${us.UID}" readonly>
                <label>Name</label>       
                <input type="text" name="name" value="${us.name}">
                <label>Address</label>
                <input type="text" name="address" value="${us.address}">
                <label>City</label>
                <input type="text" name="city" value="${us.city}">
                <label>Province/Region</label>
                <input type="text" name="province" value="${us.province}">
                <label>Country</label>
                <input type="text" name="country" value="${us.country}">
                <label>Password</label>
                <input type="password" name="password" id="pass" value = "${us.password}">
                <label>Email</label>
                <input type="email" name="email" value="${us.email}">
                <label>Fax</label>
                <input type="text" name="fax" value="${us.fax}">
                <label>Phone Number</label>
                <input type="tel" name="tel" value="${us.tel}">
                </c:forEach>
                
                <div class="submit-details">
                    <button type="submit" class="change-details">Update</button>
               </div>
            </form>
        </div>
        
            <!-- log out -->
            <div class="lgout">
            <form method="get" action="LogoutServlet">
            <h2> Log out</h2>

            <div class="lgu">
                <button type="submit" class="logout">Log out</button>

            </div>
           </form>
           </div>
            
        <!-- Delete -->
        <div class="delete">
        <c:forEach var="us" items="${userdetails}" >  
        <form method="post" action="DeleteUserServlet">
            <h2> Delete Account</h2>

            <input type="hidden" name="uid" value="${us.UID}">
            <div class="del-btn">
                <button type="submit" class="deletebt" >Delete</button>

            </div>
       
        </form>
        </c:forEach>
         </div>
         
          <!-- include footer -->
        <%@ include file="footer.jsp" %>
         
         
    </body>
</html>