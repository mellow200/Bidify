<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Item</title>
    <style>
    
    	  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
        body {
    margin: 0;
    padding: 0;
    background: linear-gradient(135deg, #ece9e6, #ffffff);
    font-family: 'Poppins', sans-serif;
}

.page-wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: calc(100vh - 80px); /* Adjust based on header height */
    padding-top: 40px;
}


        .form-card {
            background: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            width: 450px;
            transition: transform 0.3s ease;
        }

        .form-card:hover {
            transform: scale(1.01);
        }

        h2 {
            text-align: center;
            color: #000000;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #120101;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 12px 14px;
            border: 1.5px solid #ccc;
            border-radius: 10px;
            font-size: 15px;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        input[type="text"]:focus,
        textarea:focus {
            border-color: #000000;
            
            outline: none;
        }

        input[readonly] {
            background-color: #f0f0f0;
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            background: #2fab63;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s, transform 0.2s ease;
        }

        .submit-btn:hover {
            background: #1f6f2e;
            transform: translateY(-2px);
        }

        .success-message {
            display: none;
            text-align: center;
            color: green;
            font-weight: bold;
            margin-top: 20px;
        }

        .error-highlight {
            border-color: red !important;
        }

    </style>
</head>
<body>
<jsp:include page="header.jsp" />

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String category = request.getParameter("category");
    String base_price = request.getParameter("base_price");
    String description = request.getParameter("description");
%>
<div class="page-wrapper">
<div class="form-card">
    <h2>Update Item</h2>

    <form id="updateForm" action="UpdateServlet" method="post">
        <div class="form-group">
            <label for="id">ID</label>
            <input type="text" name="id" id="id" value="<%=id%>" readonly>
        </div>

        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" name="name" id="name" value="<%=name%>" required>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <input type="text" name="category" id="category" value="<%=category%>" required>
        </div>

        <div class="form-group">
            <label for="base_price">Base Price (LKR)</label>
            <input type="text" name="base_price" id="base_price" value="<%=base_price%>" required>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <input type="text" name="description" id="description" value="<%=description%>" required>
        </div>

        <input type="submit" value="Update Item" class="submit-btn">
        <div id="successMessage" class="success-message">Item updated successfully!</div>
    </form>
</div>
</div>
<script>
    // Optional JS to simulate success message and validation (can be removed if server handles it)
    const form = document.getElementById('updateForm');
    const successMsg = document.getElementById('successMessage');

    form.addEventListener('submit', function (e) {
        let valid = true;
        const inputs = form.querySelectorAll('input[type="text"]:not([readonly])');

        inputs.forEach(input => {
            input.classList.remove('error-highlight');
            if (input.value.trim() === '') {
                input.classList.add('error-highlight');
                valid = false;
            }
        });

        if (!valid) {
            e.preventDefault(); // prevent submission if validation fails
            return;
        }

        // Optional: display a fake success message (for demo, not needed in live)
        // e.preventDefault();
        // successMsg.style.display = 'block';
    });
</script>
<%@ include file="footer.jsp" %>

</body>
</html>
