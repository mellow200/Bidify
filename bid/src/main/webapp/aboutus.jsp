<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Bidify Online Bidding System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #000;
            color: #fff;
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: #4CAF50;
        }

       
        /* About Section Styles */
        .about-section {
            padding: 60px 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .section-title {
            text-align: center;
            margin-bottom: 40px;
        }

        .section-title h2 {
            font-size: 36px;
            color: #4CAF50;
            margin-bottom: 15px;
        }

        .section-title p {
            color: #ccc;
            max-width: 700px;
            margin: 0 auto;
        }

        .about-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            margin-bottom: 50px;
        }

        .about-text h3 {
            font-size: 24px;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .about-text p {
            margin-bottom: 15px;
            color: #ccc;
        }

        .about-image {
            position: relative;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .about-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }

        .about-image:hover img {
            transform: scale(1.05);
        }

        .stats {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            margin-bottom: 50px;
        }

        .stat-item {
            background-color: #111;
            padding: 30px;
            text-align: center;
            border-radius: 8px;
            transition: transform 0.3s;
        }

        .stat-item:hover {
            transform: translateY(-5px);
        }

        .stat-number {
            font-size: 42px;
            font-weight: 700;
            color: #4CAF50;
            margin-bottom: 10px;
        }

        .stat-title {
            font-size: 18px;
            color: #fff;
        }

        .team-section {
            margin-bottom: 50px;
        }

        .team-title {
            text-align: center;
            margin-bottom: 30px;
        }

        .team-title h3 {
            font-size: 28px;
            color: #4CAF50;
            margin-bottom: 10px;
        }

        .team-members {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 25px;
        }

        .team-member {
            background-color: #111;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s;
        }

        .team-member:hover {
            transform: translateY(-10px);
        }

        .member-image {
            height: 250px;
            overflow: hidden;
        }

        .member-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }

        .team-member:hover .member-image img {
            transform: scale(1.1);
        }

        .member-info {
            padding: 20px;
            text-align: center;
        }

        .member-name {
            font-size: 20px;
            color: #fff;
            margin-bottom: 5px;
        }

        .member-position {
            color: #4CAF50;
            margin-bottom: 15px;
            font-weight: 500;
        }

        .member-social {
            display: flex;
            justify-content: center;
            gap: 15px;
        }

        .member-social a {
            color: #ccc;
            font-size: 18px;
            transition: color 0.3s;
        }

        .member-social a:hover {
            color: #4CAF50;
        }

        .values-section {
            margin-bottom: 50px;
        }

        .values-title {
            text-align: center;
            margin-bottom: 30px;
        }

        .values-title h3 {
            font-size: 28px;
            color: #4CAF50;
            margin-bottom: 10px;
        }

        .values-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .value-card {
            background-color: #111;
            padding: 30px;
            border-radius: 8px;
            text-align: center;
            transition: transform 0.3s;
        }

        .value-card:hover {
            transform: translateY(-5px);
        }

        .value-icon {
            font-size: 40px;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .value-title {
            font-size: 20px;
            color: #fff;
            margin-bottom: 15px;
        }

        .value-description {
            color: #ccc;
        }

        
        /* Responsive Design */
        @media (max-width: 1024px) {
            .team-members {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .values-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                text-align: center;
            }
            
            nav {
                margin: 15px 0;
            }
            
            .about-content {
                grid-template-columns: 1fr;
            }
            
            .stats {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .team-members {
                grid-template-columns: 1fr;
            }
            
            .values-grid {
                grid-template-columns: 1fr;
            }
            
            .footer-container {
                grid-template-columns: 1fr;
            }
            
            .footer-links {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
   
	<%@ include file="header.jsp"%>
    <!-- About Section -->
    <section class="about-section">
        <div class="section-title">
            <h2>About Bidify</h2>
            <p>Discover the story behind our online bidding platform and the team that makes it all possible.</p>
        </div>
        
        <div class="about-content">
            <div class="about-text">
                <h3>Our Story</h3>
                <p>Founded in 2023, Bidify began as a university project for an Object-Oriented Programming module. What started as a simple academic exercise quickly evolved into a fully-fledged online bidding platform with a vision to revolutionize the way people buy and sell items through auctions.</p>
                <p>Our mission is to provide a secure, transparent, and user-friendly platform that connects buyers and sellers from around the world. We believe in the power of fair competition and the thrill of the auction experience.</p>
                <p>Today, Bidify has grown into a trusted marketplace with thousands of active users and a wide range of categories, from collectibles to electronics and beyond.</p>
            </div>
            <div class="about-image">
                <img src="https://images.unsplash.com/photo-1551434678-e076c223a692?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80" alt="Bidify Team Working">
            </div>
        </div>
        
        <div class="stats">
            <div class="stat-item">
                <div class="stat-number" id="auctionsCount">0</div>
                <div class="stat-title">Live Auctions</div>
            </div>
            <div class="stat-item">
                <div class="stat-number" id="usersCount">0</div>
                <div class="stat-title">Active Users</div>
            </div>
            <div class="stat-item">
                <div class="stat-number" id="itemsCount">0</div>
                <div class="stat-title">Items Listed</div>
            </div>
            <div class="stat-item">
                <div class="stat-number" id="successRate">0%</div>
                <div class="stat-title">Success Rate</div>
            </div>
        </div>
        
        <div class="team-section">
            <div class="team-title">
                <h3>Meet Our Team</h3>
                <p>The passionate individuals behind Bidify's success</p>
            </div>
            
            <div class="team-members">
                <div class="team-member">
                    <div class="member-image">
                        <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Team Member">
                    </div>
                    <div class="member-info">
                        <h4 class="member-name">Alex Johnson</h4>
                        <p class="member-position">CEO & Founder</p>
                        <div class="member-social">
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fas fa-envelope"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="team-member">
                    <div class="member-image">
                        <img src="https://randomuser.me/api/portraits/women/44.jpg" alt="Team Member">
                    </div>
                    <div class="member-info">
                        <h4 class="member-name">Sarah Williams</h4>
                        <p class="member-position">Lead Developer</p>
                        <div class="member-social">
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-github"></i></a>
                            <a href="#"><i class="fas fa-envelope"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="team-member">
                    <div class="member-image">
                        <img src="https://randomuser.me/api/portraits/men/67.jpg" alt="Team Member">
                    </div>
                    <div class="member-info">
                        <h4 class="member-name">Michael Chen</h4>
                        <p class="member-position">Marketing Director</p>
                        <div class="member-social">
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fas fa-envelope"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="team-member">
                    <div class="member-image">
                        <img src="https://randomuser.me/api/portraits/women/28.jpg" alt="Team Member">
                    </div>
                    <div class="member-info">
                        <h4 class="member-name">Emily Rodriguez</h4>
                        <p class="member-position">Customer Support</p>
                        <div class="member-social">
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-facebook"></i></a>
                            <a href="#"><i class="fas fa-envelope"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="values-section">
            <div class="values-title">
                <h3>Our Core Values</h3>
                <p>The principles that guide everything we do</p>
            </div>
            
            <div class="values-grid">
                <div class="value-card">
                    <div class="value-icon">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <h4 class="value-title">Security</h4>
                    <p class="value-description">We prioritize the safety of our users' data and transactions with advanced encryption and fraud protection.</p>
                </div>
                
                <div class="value-card">
                    <div class="value-icon">
                        <i class="fas fa-balance-scale"></i>
                    </div>
                    <h4 class="value-title">Fairness</h4>
                    <p class="value-description">Every bid is treated equally, ensuring a transparent and equitable auction process for all participants.</p>
                </div>
                
                <div class="value-card">
                    <div class="value-icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <h4 class="value-title">Community</h4>
                    <p class="value-description">We foster a vibrant community of buyers and sellers who share a passion for unique items and great deals.</p>
                </div>
                
                <div class="value-card">
                    <div class="value-icon">
                        <i class="fas fa-lightbulb"></i>
                    </div>
                    <h4 class="value-title">Innovation</h4>
                    <p class="value-description">We continuously improve our platform with new features to enhance the bidding experience.</p>
                </div>
                
                <div class="value-card">
                    <div class="value-icon">
                        <i class="fas fa-headset"></i>
                    </div>
                    <h4 class="value-title">Support</h4>
                    <p class="value-description">Our dedicated team is always ready to assist you with any questions or concerns.</p>
                </div>
                
                <div class="value-card">
                    <div class="value-icon">
                        <i class="fas fa-gem"></i>
                    </div>
                    <h4 class="value-title">Quality</h4>
                    <p class="value-description">We maintain high standards for the items listed on our platform to ensure customer satisfaction.</p>
                </div>
            </div>
        </div>
    </section>

   

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Animate statistics counters
            function animateCounter(element, target, duration = 2000) {
                const start = 0;
                const increment = target / (duration / 16);
                let current = start;
                const timer = setInterval(() => {
                    current += increment;
                    if (current >= target) {
                        clearInterval(timer);
                        current = target;
                    }
                    
                    if (element.id === 'successRate') {
                        element.textContent = Math.floor(current) + '%';
                    } else {
                        // Add comma formatting for large numbers
                        element.textContent = Math.floor(current).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                    }
                }, 16);
            }
            
            // Initialize counters when they come into view
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        animateCounter(document.getElementById('auctionsCount'), 1250);
                        animateCounter(document.getElementById('usersCount'), 8500);
                        animateCounter(document.getElementById('itemsCount'), 3200);
                        animateCounter(document.getElementById('successRate'), 98);
                        observer.unobserve(entry.target);
                    }
                });
            }, { threshold: 0.5 });
            
            observer.observe(document.querySelector('.stats'));
            
            // Team member hover effect enhancement
            const teamMembers = document.querySelectorAll('.team-member');
            teamMembers.forEach(member => {
                member.addEventListener('mouseenter', function() {
                    this.style.transform = 'translateY(-10px)';
                    this.style.boxShadow = '0 15px 30px rgba(76, 175, 80, 0.3)';
                });
                
                member.addEventListener('mouseleave', function() {
                    this.style.transform = 'translateY(0)';
                    this.style.boxShadow = '0 5px 15px rgba(0, 0, 0, 0.3)';
                });
            });
            
            // Value cards animation
            const valueCards = document.querySelectorAll('.value-card');
            valueCards.forEach((card, index) => {
                card.style.transitionDelay = `${index * 0.1}s`;
            });
        });
    </script>
    <%@ include file="footer.jsp"%>
</body>
</html>