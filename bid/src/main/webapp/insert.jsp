<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Item</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #ece9e6, #ffffff);
            padding-top: 80px; /* space for sticky header */
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding: 40px 20px;
            min-height: calc(100vh - 80px);
        }

        .form-card {
            background: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 500px;
            transition: transform 0.3s ease;
        }

        .form-card:hover {
            transform: scale(1.01);
        }

        h2 {
            text-align: center;
            color: #000;
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

        textarea {
            resize: vertical;
            height: 100px;
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

        .error-highlight {
            border-color: red !important;
        }

        @media (max-width: 600px) {
            .form-card {
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>

<jsp:include page="header.jsp" />

<div class="container">
    <div class="form-card">
        <h2>Add Item</h2>
        <form id="insertForm" action="insertServlet" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="name" id="name" required>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <input type="text" name="category" id="category" required>
            </div>

            <div class="form-group">
                <label for="base_price">Base Price (LKR)</label>
                <input type="text" name="base_price" id="base_price" required>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <textarea name="description" id="description" required></textarea>
            </div>

            <input type="submit" value="Submit" class="submit-btn">
        </form>
    </div>
</div>

<script>
    const form = document.getElementById('insertForm');

    form.addEventListener('submit', function (e) {
        let valid = true;
        const inputs = form.querySelectorAll('input[type="text"], textarea');

        inputs.forEach(input => {
            input.classList.remove('error-highlight');
            if (input.value.trim() === '') {
                input.classList.add('error-highlight');
                valid = false;
            }
        });

        if (!valid) {
            e.preventDefault();
        }
    });
</script>

<%@ include file="footer.jsp" %>

</body>
</html>
