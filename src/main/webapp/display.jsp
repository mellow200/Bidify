<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Item Preview</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .container {
        text-align:center;
        padding: 30px;
        margin-top: 30px; /* adjust spacing from sticky header */
    	
    }

	h2 {
    text-align: center;
    color: #ffffff;
    background: linear-gradient(to right, #000000, #434343);
    padding: 15px 0;
    font-size: 32px;
    font-weight: bold;
    letter-spacing: 1px;
    text-transform: uppercase;
    border-radius: 12px;
    width: 50%;
    margin: 0 auto 30px auto;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
	}


    table {
        width: 90%;
        margin: 0 auto;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        border-radius: 20px;
        overflow: hidden;
    }
    .table-heading {
    text-align: center;
    color: #ffffff;
    background: linear-gradient(to right, #000000, #434343);
    padding: 15px 0;
    font-size: 32px;
    font-weight: bold;
    letter-spacing: 1px;
    text-transform: uppercase;
    border-radius: 12px;
    width: 50%;
    margin: 40px auto 20px auto; /* margin-top is reduced here */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
}
    

       

    th, td {
        padding: 12px 15px;
        border: 1px solid #ddd;
        text-align: center;
    }

    th {
        background-color: #000000;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f1f1f1;
        transition: 0.3s;
    }

    button {
        padding: 7px 14px;
        border: none;
        border-radius: 5px;
        color: white;
        cursor: pointer;
        margin: 2px;
        transition: background-color 0.3s ease;
    }

    a button {
        background-color: #28a745;
    }
    a button:hover {
        background-color: #006400; 
    }

    form button {
        background-color: #000000;
    }

    form button:hover {
        background-color: #5c5757; 
    }
    
    form {
        display: inline;
    }
</style>
<script>
    // Optional: Confirm deletion
    function confirmDelete() {
        return confirm("Are you sure you want to delete this item?");
    }
</script>
</head>
<body>
<%@ include file="header.jsp" %>

<h2 class="table-heading">Item Table</h2>

<div class="container">
    
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Category</th>
            <th>Base Price</th>
            <th>Description</th>
            <th>Action</th>
        </tr>

        <c:forEach var="item" items="${allItems}">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.category}</td>
                <td>${item.base_price}</td>
                <td>${item.description}</td>
                <td>
                    <a href="update.jsp?id=${item.id}&name=${item.name}&category=${item.category}&base_price=${item.base_price}&description=${item.description}">
                        <button>Update</button>
                    </a>
                    <form action="DeleteServlet" method="post" onsubmit="return confirmDelete()">
                        <input type="hidden" name="id" value="${item.id}"/>
                        <button>Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<%@ include file="footer.jsp" %>

</body>
</html>