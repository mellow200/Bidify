<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Bidify Online Bidding System</title>
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
            background-color:#000;
            color: #fff;
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: #4CAF50;
        }
		header {
            background-color: #000;
            padding: 20px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.5);
            position: sticky;
            top: 0;
            z-index: 1000;
        }
       

        /* Contact Section Styles */
        .contact-section {
            padding: 60px 20px;
            max-width: 1200px;
            margin: 0 auto;
            color :#000;
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

        .contact-container {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 30px;
        }

        .contact-info {
            background-color: #111;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .contact-info h3 {
            color: #4CAF50;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .info-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 20px;
        }

        .info-icon {
            color: #4CAF50;
            font-size: 20px;
            margin-right: 15px;
            margin-top: 3px;
        }

        .info-content h4 {
            font-size: 18px;
            margin-bottom: 5px;
            color: #fff;
        }

        .info-content p, .info-content a {
            color: #ccc;
            font-size: 16px;
        }

        .contact-form {
            background-color: #111;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .contact-form h3 {
            color: #4CAF50;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #fff;
            font-weight: 500;
        }

        .form-control {
            width: 100%;
            padding: 12px 15px;
            background-color: #222;
            border: 1px solid #333;
            border-radius: 4px;
            color: #fff;
            font-size: 16px;
            transition: border-color 0.3s;
        }

        .form-control:focus {
            outline: none;
            border-color: #4CAF50;
        }

        textarea.form-control {
            min-height: 150px;
            resize: vertical;
        }

        .submit-btn {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding: 12px 30px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .submit-btn:hover {
            background-color: #3e8e41;
        }

        .form-message {
            margin-top: 20px;
            padding: 10px;
            border-radius: 4px;
            display: none;
        }

        .form-message.success {
            background-color: rgba(76, 175, 80, 0.2);
            border: 1px solid #4CAF50;
            color: #4CAF50;
            display: block;
        }

        .form-message.error {
            background-color: rgba(255, 0, 0, 0.2);
            border: 1px solid #ff0000;
            color: #ff0000;
            display: block;
        }

        
        /* Responsive Design */
        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                text-align: center;
            }
            
            nav {
                margin: 15px 0;
            }
            
            .contact-container {
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
    <!-- Contact Section -->
    <section class="contact-section">
        <div class="section-title">
            <h2>Contact Us</h2>
            <p style= "color:black ; font-size : 16px; ">Have questions or feedback? We'd love to hear from you! Reach out to our team and we'll get back to you as soon as possible.</p>
        </div>
        
        <div class="contact-container">
            <div class="contact-info">
                <h3>Get in Touch</h3>
                
                <div class="info-item">
                    <div class="info-icon">
                        <i class="fas fa-map-marker-alt"></i>
                    </div>
                    <div class="info-content">
                        <h4>Address</h4>
                        <p>123 Bidding Street, Auction City, AC 12345</p>
                    </div>
                </div>
                
                <div class="info-item">
                    <div class="info-icon">
                        <i class="fas fa-phone-alt"></i>
                    </div>
                    <div class="info-content">
                        <h4>Phone</h4>
                        <p><a href="tel:+1234567890">+1 (234) 567-890</a></p>
                    </div>
                </div>
                
                <div class="info-item">
                    <div class="info-icon">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <div class="info-content">
                        <h4>Email</h4>
                        <p><a href="mailto:support@bidify.com">support@bidify.com</a></p>
                    </div>
                </div>
                
                <div class="info-item">
                    <div class="info-icon">
                        <i class="fas fa-clock"></i>
                    </div>
                    <div class="info-content">
                        <h4>Working Hours</h4>
                        <p>Monday - Friday: 9:00 AM - 6:00 PM</p>
                        <p>Saturday: 10:00 AM - 4:00 PM</p>
                    </div>
                </div>
            </div>
            
            <div class="contact-form">
                <h3>Send Us a Message</h3>
                <form id="contactForm">
                    <div class="form-group">
                        <label for="name">Your Name</label>
                        <input type="text" id="name" name="name" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="email">Your Email</label>
                        <input type="email" id="email" name="email" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <input type="text" id="subject" name="subject" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="message">Your Message</label>
                        <textarea id="message" name="message" class="form-control" required></textarea>
                    </div>
                    
                    <button type="submit" class="submit-btn">Send Message</button>
                    
                    <div id="formMessage" class="form-message"></div>
                </form>
            </div>
        </div>
    </section>


    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const contactForm = document.getElementById('contactForm');
            const formMessage = document.getElementById('formMessage');
            
            contactForm.addEventListener('submit', function(e) {
                e.preventDefault();
                
                // Get form values
                const name = document.getElementById('name').value.trim();
                const email = document.getElementById('email').value.trim();
                const subject = document.getElementById('subject').value.trim();
                const message = document.getElementById('message').value.trim();
                
                // Simple validation
                if (!name || !email || !subject || !message) {
                    showMessage('Please fill in all fields', 'error');
                    return;
                }
                
                if (!validateEmail(email)) {
                    showMessage('Please enter a valid email address', 'error');
                    return;
                }
                
                // Simulate form submission (in a real app, you would send to a server)
                setTimeout(() => {
                    showMessage('Your message has been sent successfully! We will get back to you soon.', 'success');
                    contactForm.reset();
                }, 1000);
            });
            
            function showMessage(text, type) {
                formMessage.textContent = text;
                formMessage.className = 'form-message ' + type;
                
                // Hide message after 5 seconds
                setTimeout(() => {
                    formMessage.style.display = 'none';
                }, 5000);
            }
            
            function validateEmail(email) {
                const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                return re.test(email);
            }
        });
    </script>
    <%@ include file="footer.jsp"%>
</body>
</html>