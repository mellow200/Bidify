<head>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding-top: 0px; 
            background-color: #f4f4f4;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .header {
            background-color: #000;
            padding: 20px 40px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: sticky;
            top: 0;
            width: 100%;
            z-index: 1000;
        }
        
        /*drop down*/
            /* Add this to your existing CSS */
    .dropdown {
        position: relative;
        display: inline-block;
    }
    
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: black;
        min-width: 200px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
        border-radius: 4px;
        top: 100%;
        left: 0;
    }
    
    .dropdown-content a {
        color: #333;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        transition: background-color 0.3s;
    }
    
    .dropdown-content a:hover {
        background-color: black;
    }
    
    .dropdown:hover .dropdown-content {
        display: block;
    }
    
    .dropdown-arrow::after {
        content: "";
        font-size: 10px;
        margin-left: 5px;
        color: white;
    }
    
    .dropdown:hover .dropdown-arrow::after {
        color: #00ff88;
    }

        .header .logo {
            font-size: 32px;
            font-weight: bold;
            color: #fff;
        }

        .header .logo span {
            color: #00ff88;
        }

        .header nav {
            display: flex;
            gap: 30px;
        }

        .header nav a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            font-weight: 500;
            position: relative;
            transition: color 0.3s;
        }

        .header nav a::after {
            content: '';
            position: absolute;
            bottom: -6px;
            left: 0;
            height: 2px;
            width: 0;
            background-color: #00ff88;
            transition: width 0.3s ease;
        }

        .header nav a:hover {
            color: #00ff88;
        }

        .header nav a:hover::after {
            width: 100%;
        }
        
        /*logout*/
        .logout-btn {
        background-color: #00ff88;
        border: none;
        color: black;
        padding: 8px 20px;
        border-radius: 30px;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .logout-btn:hover {
        background-color: #00cc66;
    }

    /* Update the login button style to match */
    .login-btn {
        background-color: #00ff88;
        border: none;
        color: black;
        padding: 8px 20px;
        border-radius: 30px;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s;
        text-decoration: none;
        display: inline-block;
        text-align: center;
    }

    .login-btn:hover {
        background-color: #00cc66;
    }
        .header .login-btn {
            background-color: #00ff88;
            border: none;
            color: black;
            padding: 8px 20px;
            border-radius: 30px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .header .login-btn:hover {
            background-color: #00cc66;
        }
        
        

  
        @media (max-width: 768px) {
            .header {
                flex-direction: column;
                align-items: flex-start;
                gap: 15px;
            }

            .header nav {
                flex-direction: column;
                gap: 15px;
            }
            
            .payment-dropdown {
                width: 100%;
            }
            
            .payment-dropdown select {
                width: 100%;
            }
        }
        
    </style>
</head>
<body>
<header class="header">
    <div class="logo">Bid<span>ify</span></div>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="BidViewServlet">Biddings</a>
        <a href="insert.jsp">Seller</a>
        <a href="paymentdisplay.jsp">Payment</a>
        
        <a href="loginservlet" >Profile</a>
        <div class="dropdown">
            <a href="#" class="dropdown-arrow">More</a>
            <div class="dropdown-content">
                <a href="EnterReview.jsp">Write Review</a>
                <a href="DisplayReviewServlet">Reviews</a>
                <a href="faq.jsp">FAQ</a>
                <a href="contactus.jsp">Contact us</a>
            </div>
        </div>
    </nav>
    <% if (session.getAttribute("user") != null) { %>
        <form action="LogoutServlet" method="get" style="display: inline;">
            <button class="logout-btn" type="submit">Logout</button>
        </form>
    <% } else { %>
        <a href="loggin.jsp" class="login-btn">Login</a>
    <% } %>
</header>
</body>
