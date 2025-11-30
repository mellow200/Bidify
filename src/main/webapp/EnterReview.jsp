<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bidyfy</title>
   <style>
    * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
    body {
        font-family: 'Raleway', sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
    }

    header {
        width: 100%;
        /* Add your header styles here */
    }

    .content-wrapper {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 40px 20px;
       
    }

    .review-container {
        background: #fff;
        padding: 30px;
        border-radius: 10px;     
        width: 600px;
        left: 20px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        margin: 20px auto;
        
        
    }

    footer {
        width: 100%;
        /* Add your footer styles here */
        margin-top: auto;
    }

    /* Rest of your existing styles... */
    h2 {
        text-align: center;
        color: #333;
    }

    textarea {
        width: 100%;
        height: 200px;
        padding: 10px;
        resize: none;
        border-radius: 6px;
        border: 1px solid #ccc;
        margin-top: 10px;
        font-size: 14px;
    }

    .stars {
        display: flex;
        justify-content: center;
        margin: 15px 0;
    }

    .star {
        font-size: 30px;
        color: #ccc;
        cursor: pointer;
        transition: color 0.2s;
    }

    .star.hover,
    .star.selected {
        color: gold;
    }

    button {
        background-color: green;
        color: white;
        border: none;
        padding: 12px 20px;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        
        margin-top: 15px;
    }
    #sub{
    width: 100%;}

    button:hover {
        background-color: darkgreen;
    }
    .rew{
          width: 10%;
    }
    
   
    
    #myrew {
        text-align: center;
        margin-top: 20px;
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
      <div class="review-container">
        <h2>Leave a Review</h2>
        <form id="reviewForm" method="post" action="ReviewInsertServlet">
            <label for="reviewText">Your Review:</label>
            <textarea id="reviewText" name="reviewText" required></textarea>
            
            <div class="stars" id="starContainer">
                <span class="star" data-value="1">&#9733;</span>
                <span class="star" data-value="2">&#9733;</span>
                <span class="star" data-value="3">&#9733;</span>
                <span class="star" data-value="4">&#9733;</span>
                <span class="star" data-value="5">&#9733;</span>
            </div>
            <input type="hidden" name="rating" id="rating" value="">

            <button type="submit" id="sub">Submit Review</button>
        </form>
       </div>
       <div>
       <form method="post" action="DisplayReviewServlet" id="myrew" >
            <div class= "myrew">
            <button type="submit" class="rew" onclick="window.location.href='myReviews.html'">My Reviews</button>
            </div>
            </form>
        </div>
       
     
    <script>
        const stars = document.querySelectorAll('.star');
        const ratingInput = document.getElementById('rating');
        let selectedRating = 0;

        stars.forEach((star, index) => {
            star.addEventListener('mouseover', () => {
                stars.forEach((s, i) => {
                    s.classList.toggle('hover', i <= index);
                });
            });

            star.addEventListener('mouseout', () => {
                stars.forEach((s, i) => {
                    s.classList.remove('hover');
                });
            });

            star.addEventListener('click', () => {
                selectedRating = index + 1;
                ratingInput.value = selectedRating;
                stars.forEach((s, i) => {
                    s.classList.toggle('selected', i < selectedRating);
                });
            });
        });

        document.getElementById('reviewForm').addEventListener('submit', function(e) {
            if (!selectedRating) {
                e.preventDefault();
                alert("Please select a star rating.");
            }
        });
    </script>
    <%@ include file="footer.jsp" %>

</body>
</html>