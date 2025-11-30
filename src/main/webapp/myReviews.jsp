<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Reviews</title>
    <style>
     * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        h1 {
            margin-top:30px;
            text-align: center;
            color: #222;
        }

        #reviewsSection {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            margin-top: 30px;
        }

        .review-card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            padding: 20px;
            width: 320px;
        }

        .review-card strong {
            font-size: 16px;
            color: #111;
        }

        .review-card p {
            color: #444;
            font-size: 14px;
            line-height: 1.5;
        }

        .stars {
            color: #f5a623;
            margin: 8px 0;
            font-size: 16px;
        }
    
        button {
           
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 6px;
            cursor: pointer;
            margin-right: 10px;
        }
        #update{
            background-color: green;
        }
        #update:hover {
            background-color: #00B300;
        }
        
        #delete{
             background-color: black;
        }

        #delete:hover {
            background-color: #393B3C;
        }
        a {
            text-decoration: none;
            font-weight: bold;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }
        .write{
        margin: 70px;
        margin-top: 40px;
        
        }

     
        .actions {
            margin-top: 10px;
        }
    </style>
     <script>
              window.onload = function() {
            <% if(request.getAttribute("status") != null) { %>
                alert("<%= request.getAttribute("message") %>");
            <% } %>
             };
    </script>
</head>
<body>
 <%@ include file="header.jsp" %>

<h1>MY Reviews</h1>

<div id="reviewsSection">
    <c:forEach var="review" items="${rewdetails}">
        <div class="review-card">
        <input type="hidden" name="rid" value="${review.reviewID}">
        <input type="hidden" name="uid" value="${review.UID}">
            <div><strong>${review.name}</strong></div>
            <div class="stars">
                <c:forEach begin="1" end="5" var="i">
                    <c:choose>
                        <c:when test="${i <= review.rating}">
                            &#9733;
                        </c:when>
                        <c:otherwise>
                            <span style="color: #ccc">&#9733;</span>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </div>
            <p><strong>${review.reviewText}</strong></p>

            <div class="actions">
                <a href="updateRew.jsp?rid=${review.reviewID}&name=${review.name}&rating=${review.rating}&reviewText=${review.reviewText}&uid=${review.UID}">
                    <button id ="update">Update</button>
                </a>
                <form method="post" action="ReviewDeleteServlet" style="display:inline;">
                    <input type="hidden" name="rid" value="${review.reviewID}">
                    <button type="submit" id="delete">Delete</button>
                </form>
            </div>
        </div>
        
    </c:forEach>
</div>

<div style="text-align:center; margin-top:30px;" class ="write">
    <a href="EnterReview.jsp" id="write">+ Write a Review</a>
</div>


<%@ include file="footer.jsp" %>
</body>

</html>
