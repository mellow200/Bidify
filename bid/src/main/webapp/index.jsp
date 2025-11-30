<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bidify</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
    <style>
         
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f9fafb;
        }

        header {
            background: white;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            width:100%;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
            color: #1f2937;
            display: flex;
            align-items: center;
        }

        .logo i {
            color: #3b82f6;
            margin-right: 8px;
        }

        .search-bar {
            display: flex;
            border: 1px solid #ccc;
            border-radius: 8px;
            overflow: hidden;
            width: 33%;
        }

        .search-bar input {
            border: none;
            padding: 10px;
            flex: 1;
            outline: none;
        }

        .search-bar button {
            background: #3b82f6;
            color: white;
            border: none;
            padding: 0 15px;
        }

        nav {
            display: flex;
            gap: 24px;
            align-items: center;
        }

        nav a {
            color: #374151;
            text-decoration: none;
        }

        nav a:hover {
            color: #3b82f6;
        }

        .cart-icon {
            position: relative;
        }

        .cart-icon span {
            position: absolute;
            top: -8px;
            right: -10px;
            background: red;
            color: white;
            font-size: 10px;
            padding: 2px 6px;
            border-radius: 9999px;
        }

        .hero {
            position: relative;
            height: 500px;
            overflow: hidden;
        }

        .slide {
            background-size: cover;
            background-position: center;
            height: 100%;
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
            transition: opacity 0.5s;
            display: none;
        }

        .slide.active {
            display: block;
        }

        .overlay {
            background-color: rgba(0,0,0,0.5);
            height: 100%;
            display: flex;
            align-items: center;
            color: white;
            padding-left: 40px;
        }

        .slide-content h2 {
            margin-left: 50px;
            margin-bottom: 10px;
            font-size: 36px;
            font-weight: bold;
        }

        .slide-content p {
            margin-left: 50px;
            font-size: 18px;
            margin-bottom: 40px;
        }

        .btn {
            background: #3b82f6;
            color: white;
            margin:60px;
            padding: 12px 24px;
            border: none;
            border-radius: 8px;
            text-decoration: none;
        }

        .btn:hover {
            background: #60a5fa;
        }

        .nav-buttons, .dots {
            position: absolute;
            border: none;
            width: 100%;
            top: 50%;
            transform: translateY(-50%);
            display: flex;
            justify-content: space-between;
            padding: 0 20px;
            z-index: 2;
        }

        .dots {
            bottom: 20px;
            top: auto;
            justify-content: center;
        }

        .dot {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background: white;
            margin: 0 5px;
            cursor: pointer;
        }

        .dot.active {
            background: #3b82f6;
        }
        /*welcom*/
        .welcome-section {
            background-color: white;
            padding: 60px 40px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .welcome-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1000px;
            width: 100%;
            gap: 40px;
            flex-wrap: wrap;
        }
        
        .welcome-text h2 {
            font-size: 32px;
            color: #1f2937;
            margin-bottom: 10px;
        }
        
        .welcome-text p {
            font-size: 18px;
            color: #4b5563;
        }
        
        .welcome-buttons {
            display: flex;
            gap: 16px;
        }
        
        .welcome-buttons button {
            padding: 12px 24px;
            background-color: #3b82f6;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
        }
        
        .welcome-buttons button:hover {
            background-color: #2563eb;
        }
        
        /*flash bidding*/
        .flash-biddings {
            padding: 60px 40px;
            background-color: #f3f4f6;
        }
        
        .flash-biddings h2 {
            font-size: 28px;
            margin-bottom: 10px;
            color: #1f2937;
        }
        
        .search-bar {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }
        
        .search-bar input {
            flex: 1;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
        }
        
        .search-bar button {
            background: black;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
        }
        .search-bar button:hover{
            background: #373434;
        }
        
        .filters {
            margin-bottom: 30px;
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }
        
        .filter-btn {
            background: #e5e7eb;
            padding: 10px 20px;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            color: #374151;
        }
        .filter-btn:hover{
            background: #bbbcc0
        
        }
        
        .filter-btn.active {
            background: black;
            color: white;
        }
        
        .cards-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
        }
        
        .card {
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
            overflow: hidden;
            transition: transform 0.2s ease;
        }
        
        .card:hover {
            transform: translateY(-5px);
        }
        
        .card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }
      
        .card-content {
            padding: 16px;
        }
        
        .card-content h3 {
            font-size: 18px;
            margin-bottom: 5px;
            color: #111827;
        }
        
        .card-content p {
            font-size: 14px;
            color: #6b7280;
        }
        
        .current-bid {
            color: #10b981;
            font-weight: bold;
        }
        
        .ends-in {
            display: block;
            font-size: 12px;
            color: #ef4444;
            margin: 10px 0;
        }
        .bid-btn {
            background: black;
            color: white;
            padding: 10px 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            font-weight: bold;
        }
        
       
        .bid-btn:hover {
            background: #373434;
        }
     
.btn {
    background: #035503; /* Changed from #3b82f6 (blue) to green */
    color: white;
    margin:60px;
    padding: 12px 24px;
    border: none;
    border-radius: 8px;
    text-decoration: none;
}

.btn:hover {
    background: #3e814a; /* Darker green on hover */
}

/* Change welcome section buttons to black */
.welcome-buttons button {
    padding: 12px 24px;
    background-color: #000000; /* Changed from #3b82f6 (blue) to black */
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
}

.welcome-buttons button:hover {
    background-color: #373434; /* Dark gray on hover */
}

    </style>
    
    
</head>
<body>
    
    <%@ include file="header.jsp" %>
<!--Hero section-->
    <section class="hero">
        <div class="slide active" style="background-image: url('Image/bid1.jpg');">
            <div class="overlay">
                <div class="slide-content">
                    <h2>Discover Top Bids</h2>
                    <p>Join live auctions and win exclusive items today</p>
                    <a href="BidViewServlet" class="btn">Explore Auctions</a>
                </div>
            </div>
        </div>
        <div class="slide" style="background-image: url('Image/bid2.jpg');">
            <div class="overlay">
                <div class="slide-content">
                    <h2>Buy & Sell Smart</h2>
                    <p>Experience seamless online bidding with BidXpress</p>
                    <a href="insert.jsp" class="btn">Sell Items</a>
                </div>
            </div>
        </div>
        <div class="slide" style="background-image: url('Image/bid5.jpg');">
            <div class="overlay">
                <div class="slide-content">
                    <h2>Deals You Can’t Miss</h2>
                    <p>Grab the best offers before time runs out</p>
                    <a href="BidViewServlet" class="btn">Explore Auctions</a>
                </div>
            </div>
        </div>
        <div class="nav-buttons">
            <button onclick="prevSlide()"><i class="fas fa-chevron-left" style="color: white; font-size: 24px;"></i></button>
            <button onclick="nextSlide()"><i class="fas fa-chevron-right" style="color:white;font-size:24px;"></i></button>
        </div>
        <div class="dots">
            <div class="dot active" onclick="setSlide(0)"></div>
            <div class="dot" onclick="setSlide(1)"></div>
            <div class="dot" onclick="setSlide(2)"></div>
        </div>
    </section>

    <!--welcome section-->
    <c:if test="${sessionScope.user == null}">
    <section class="welcome-section">
        <div class="welcome-container">
            <div class="welcome-text">
                <h2>Welcome to Bidify</h2>
                <p>Sign in or register now to join exciting auctions and exclusive deals!</p>
            </div>
            <div class="welcome-buttons">
                <button id = "welcome-buttons" onclick="openLogin()">Login</button>
                <button id = "welcome-buttons" onclick="openRegister()">Register</button>
            </div>
        </div>
    </section>
    </c:if>

    <!--flash bidding-->
    <section class="flash-biddings">
        <h2>Flash Biddings</h2>
    
        <!-- Search bar -->
        <div class="search-bar">
            <input type="text" id="searchInput" placeholder="Search items...">
            <button onclick="searchItems()">Search</button>
        </div>
    
        <!-- Filters -->
        <div class="filters">
            <button class="filter-btn active" onclick="filterItems('all', this)">All</button>
            <button class="filter-btn" onclick="filterItems('art', this)">Art</button>
            <button class="filter-btn" onclick="filterItems('watches', this)">Watches</button>
            <button class="filter-btn" onclick="filterItems('books', this)">Books</button>
            <button class="filter-btn" onclick="filterItems('cars', this)">Cars</button>
            <button class="filter-btn" onclick="filterItems('jewelry', this)">Jewelry</button>
        </div>
    
        <!-- Cards -->
        <div class="cards-container" id="biddingCards">
            <!-- Watch -->
            <div class="card" data-category="watches" data-title="Vintage Rolex Submariner">
                <img src="Image/b1.jpg" alt="Rolex">
                <div class="card-content">
                    <h3>Vintage Rolex Submariner</h3>
                    <p><del>$8,000</del> <span class="current-bid">$10,500</span></p>
                    <span class="ends-in" data-time="2025-05-08T10:00:00Z"></span>
                    <button class="bid-btn"  onclick="window.location.href='BidViewServlet'">Place Bid</button>
                </div>
            </div>
    
            <!-- Painting -->
            <div class="card" data-category="art" data-title="Original Abstract Painting">
                <img src="Image/b2.jpg" alt="Painting">
                <div class="card-content">
                    <h3>Original Abstract Painting</h3>
                    <p><del>$5,000</del> <span class="current-bid">$4,200</span></p>
                    <span class="ends-in" data-time="2025-05-07T08:00:00Z"></span>
                    <button class="bid-btn" onclick="window.location.href='BidViewServlet'">Place Bid</button>
                </div>
            </div>
    
            <!-- Book -->
            <div class="card" data-category="books" data-title="The Great Gatsby">
                <img src="Image/b3.jpg" alt="Gatsby">
                <div class="card-content">
                    <h3>First Edition 'The Great Gatsby'</h3>
                    <p><del>$15,000</del> <span class="current-bid">$18,750</span></p>
                    <span class="ends-in" data-time="2025-05-06T23:59:00Z"></span>
                    <button class="bid-btn" onclick="window.location.href='BidViewServlet'">Place Bid</button>
                </div>
            </div>
    
            <!-- Car -->
            <div class="card" data-category="cars" data-title="Classic Mustang GT">
                <img src="Image/b4.jpg" alt="Mustang">
                <div class="card-content">
                    <h3>Classic Mustang GT</h3>
                    <p><del>$30,000</del> <span class="current-bid">$35,000</span></p>
                    <span class="ends-in" data-time="2025-05-09T12:00:00Z"></span>
                    <button class="bid-btn" onclick="window.location.href='BidViewServlet'">Place Bid</button>
                </div>
            </div>
    
            <!-- Jewelry -->
            <div class="card" data-category="jewelry" data-title="Vintage Diamond Necklace">
                <img src="Image/b5.jpg" alt="Necklace">
                <div class="card-content">
                    <h3>Vintage Diamond Necklace</h3>
                    <p><del>$12,000</del> <span class="current-bid">$14,800</span></p>
                    <span class="ends-in" data-time="2025-05-08T06:30:00Z"></span>
                    <button class="bid-btn" onclick="window.location.href='BidViewServlet'">Place Bid</button>
                </div>
            </div>
        </div>
    </section>
     <!-- include footer -->
        <%@ include file="footer.jsp" %>
    
    
    
<!-- Slide script -->
    <script>
        let currentSlide = 0;
        const slides = document.querySelectorAll('.slide');
        const dots = document.querySelectorAll('.dot');

        function showSlide(index) {
            slides.forEach((slide, i) => {
                slide.classList.toggle('active', i === index);
                dots[i].classList.toggle('active', i === index);
            });
            currentSlide = index;
        }

        function nextSlide() {
            currentSlide = (currentSlide + 1) % slides.length;
            showSlide(currentSlide);
        }

        function prevSlide() {
            currentSlide = (currentSlide - 1 + slides.length) % slides.length;
            showSlide(currentSlide);
        }

        function setSlide(index) {
            showSlide(index);
        }

        setInterval(nextSlide, 5000);
       </script>
       
       <!-- welcome script -->
       <script>
           function openLogin() {
                 window.location.href = 'loggin.jsp';
            }

           function openRegister() {
                 window.location.href = 'register.jsp';
            }
       </script>
       
       
       <!-- flash bid script -->
       <script>
        // Filter function
            function filterItems(category, btn) {
            document.querySelectorAll('.filter-btn').forEach(b => b.classList.remove('active'));
            btn.classList.add('active');

            document.querySelectorAll('.card').forEach(card => {
            card.style.display = (category === 'all' || card.dataset.category === category) ? 'block' : 'none';
            });
         }

         // Search function
        function searchItems() {
            const searchValue = document.getElementById("searchInput").value.toLowerCase();
            const cards = document.querySelectorAll('.card');

            cards.forEach(card => {
            const title = card.dataset.title.toLowerCase();
            card.style.display = title.includes(searchValue) ? 'block' : 'none';
             });
        }

         // Countdown timer updater
        function updateCountdowns() {
        const countdowns = document.querySelectorAll('.ends-in');

        countdowns.forEach(el => {
        const endTime = new Date(el.getAttribute('data-time')).getTime();
        const now = new Date().getTime();
        const distance = endTime - now;

        if (distance < 0) {
            el.textContent = "Bidding ended";
            return;
            }

        const days = Math.floor(distance / (1000 * 60 * 60 * 24));
        const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        const mins = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        el.textContent = `Ends in: ${days}d ${hours}h ${mins}m`;
        });
        }

            setInterval(updateCountdowns, 60000); // Update every minute
            updateCountdowns(); // Initial call

        </script>
    
</body>
</html>