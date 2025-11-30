<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
  font-family: 'Raleway', sans-serif;
  margin: 0;
  padding: 0;
  background-color: #f7f7f7;
}

        .copyright {
            text-align: center;
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid #d5cfcf;
            font-size: 12px;
            color: #666;
        }
.site-header {
  background-color: black;
  padding: 20px 40px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  position: sticky;
  top: 0;
  z-index: 1000;
}

.logo {
  color: white;
  font-size: 28px;
  font-weight: bold;
}

.green {
  color: green;
}

nav a {
  color: white;
  margin-right: 25px;
  text-decoration: none;
  font-size: 16px;
  transition: 0.3s;
}



.edit-main {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  padding: 40px;
  gap: 40px;
  background-color: #fff;
}

.edit-image {
  flex: 1;
  min-width: 300px;
  max-width: 500px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.edit-image img {
  width: 100%;
  border-radius: 15px;
  object-fit: cover;
}

.form-container {
  flex: 1;
  min-width: 300px;
  max-width: 500px;
  padding: 30px;
  background-color: #ffffff;
  border-radius: 12px;
  box-shadow: 0 0 15px rgba(0,0,0,0.1);
}

form label {
  display: block;
  margin-top: 15px;
}

form input {
  width: 100%;
  padding: 10px;
  margin-top: 6px;
  border-radius: 6px;
  border: 1px solid #ccc;
}

.save-btn {
  background-color: green;
  color: white;
  padding: 12px 25px;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  font-weight: bold;
  margin-top: 20px;
  transition: background-color 0.3s;
}

.save-btn:hover {
  background-color: darkgreen;
}

.site-footer {
  background-color: black;
  color: white;
  text-align: center;
  padding: 20px 0;
}

.site-footer a {
  color: white;
  margin: 0 10px;
  text-decoration: none;
}

@media (max-width: 768px) {
  .edit-main {
    flex-direction: column;
    padding: 20px;
  }

  .edit-image,
  .form-container {
    max-width:

</style>
</head>
<body>
	<%
		String id = request.getParameter("id");
	 	String name = request.getParameter("name");
	 	String card_number = request.getParameter("card_number");
	 	String expiry_date = request.getParameter("expiry_date");
	 	String cvv = request.getParameter("cvv");
	 	
	%>
	
	<%@ include file="header.jsp"%>
  <!-- Edit Form -->
  <!-- Main Section with Image and Form -->
<main class="edit-main">
  <!-- Left side image -->
  <div class="edit-image">
    <img src="img/edit-image.jpg" alt="Edit Card Image">
  </div>

  <!-- Right side form -->
  <div class="form-container">
    <h2>Edit Card Details</h2>
    <form action="PaymentUpdateServlet" method="post">
    
      <label for="id">Payment ID</label>
      <input type="text" id="cardholder" name="id" value ="<%=id%>" readonly>
      
      
      <label for="cardholder">Card Holder Name</label>
      <input type="text" id="cardholder" name="name"  value ="<%=name%>" required>

      <label for="cardnumber">Card Number</label>
      <input type="text" id="cardnumber" name="card_number"  value ="<%=card_number%>" maxlength="16" required>

      <label for="expiry">Expiry Date</label>
      <input type="month" id="expiry" name="expiry_date"  value ="<%=expiry_date%>"  required>

      <label for="cvv">CVV</label>
      <input type="password" id="cvv" name="cvv" maxlength="3"  value ="<%=cvv%>" required>
      
      <button type="submit" class="save-btn">Save Changes</button>
    </form>
  </div>
</main>

<%@ include file="footer.jsp"%>
 
</body>
</html>