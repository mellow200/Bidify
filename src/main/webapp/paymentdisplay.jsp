<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Payment Details</title>
  <link rel="stylesheet" href="style/display.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
    
    body {
      font-family: 'Poppins', sans-serif;
      margin: 0;
      padding: 0;
      background: #f8f9fa;
    }
    
    .logo {
      color: white; 
      font-size: 28px; 
      font-weight: bold;
    }
    
    .logo span {
      color: green;
    }
    
    nav a {
      margin-right: 25px; 
      text-decoration: none; 
      color: white; 
      font-size: 16px; 
      transition: 0.3s;
    }
    
    nav a:hover {
      color: #37b24d;
    }
    
    .login-btn {
      background-color: green; 
      color: white; 
      padding: 10px 20px; 
      border-radius: 25px; 
      text-decoration: none; 
      font-weight: bold; 
      font-size: 15px; 
      transition: 0.3s;
    }
    
    .login-btn:hover {
      background-color: #37b24d;
    }
    
    .payment-container {
      display: flex;
      gap: 30px;
      width: 90%;
      max-width: 1200px;
      margin: 40px auto;
      align-items: flex-start;
    }
    
    .payment-card {
      flex: 1;
      background: white;
      border-radius: 16px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
      overflow: hidden;
      position: relative;
      transition: transform 0.3s ease;
      border: 1px solid #e9ecef;
    }
    
    .payment-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
    }
    
    .card-header {
      background: white;
      color: #2b8a3e;
      padding: 25px;
      text-align: center;
      position: relative;
      border-bottom: 1px solid #e9ecef;
    }
    
    .card-header h1 {
      font-size: 24px;
      font-weight: 600;
      margin-bottom: 5px;
      position: relative;
    }
    
    .card-type {
      position: absolute;
      right: 25px;
      top: 25px;
      font-size: 14px;
      background: #ebfbee;
      color: #2b8a3e;
      padding: 3px 10px;
      border-radius: 20px;
      text-transform: uppercase;
      font-weight: 500;
    }
    
    .card-body {
      padding: 25px;
    }
    
    .detail-item {
      margin-bottom: 20px;
    }
    
    .detail-label {
      font-size: 12px;
      color: #868e96;
      text-transform: uppercase;
      letter-spacing: 1px;
      margin-bottom: 5px;
      display: block;
    }
    
    .detail-value {
      font-size: 16px;
      font-weight: 500;
      color: #343a40;
      padding: 10px 0;
      border-bottom: 1px solid #f1f3f5;
      display: flex;
      align-items: center;
    }
    
    .card-number {
      font-size: 18px;
      letter-spacing: 2px;
      font-family: 'Courier New', monospace;
    }
    
    .card-footer {
      display: flex;
      justify-content: space-between;
      padding: 20px;
      background: #f8f9fa;
      border-top: 1px solid #e9ecef;
      border-radius: 0 0 16px 16px;
    }
    
    .btn {
      padding: 12px 25px;
      border-radius: 8px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
      border: none;
      font-size: 14px;
      text-transform: uppercase;
      letter-spacing: 1px;
    }
    
    .btn-update {
      background: #2b8a3e;
      color: white;
      box-shadow: 0 2px 10px rgba(43, 138, 62, 0.2);
      text-decoration: none;
      display: inline-block;
      text-align: center;
    }
    
    .btn-update:hover {
      background: #37b24d;
      transform: translateY(-2px);
      box-shadow: 0 4px 15px rgba(43, 138, 62, 0.3);
    }
    
    .btn-delete {
      background: #fff;
      color: #fa5252;
      border: 1px solid #ffdede;
    }
    
    .btn-delete:hover {
      background: #fa5252;
      color: white;
    }
    
    .add-payment-section {
      width: 300px;
      background: white;
      border-radius: 16px;
      padding: 25px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
      border: 1px solid #e9ecef;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }
    
    .add-payment-icon {
      width: 60px;
      height: 60px;
      background: #ebfbee;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 20px;
      color: #2b8a3e;
      font-size: 24px;
    }
    
    .add-payment-section h2 {
      color: #2b8a3e;
      margin-bottom: 15px;
      font-size: 20px;
    }
    
    .add-payment-section p {
      color: #868e96;
      font-size: 14px;
      margin-bottom: 25px;
      line-height: 1.5;
    }
    
    .btn-add {
      background: #2b8a3e;
      color: white;
      box-shadow: 0 2px 10px rgba(43, 138, 62, 0.2);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      width: 100%;
      padding: 12px;
      border-radius: 8px;
      text-decoration: none;
      font-weight: 500;
      transition: all 0.3s ease;
      border: none;
      font-size: 14px;
      text-transform: uppercase;
      letter-spacing: 1px;
      cursor: pointer;
    }
    
    .btn-add:hover {
      background: #37b24d;
      transform: translateY(-2px);
      box-shadow: 0 4px 15px rgba(43, 138, 62, 0.3);
    }
    
    .chip {
      width: 40px;
      height: 30px;
      background: linear-gradient(135deg, #d3f9d8 0%, #b2f2bb 100%);
      border-radius: 5px;
      margin-right: 15px;
      position: relative;
      border: 1px solid #e9ecef;
    }
    
    .chip::before {
      content: '';
      position: absolute;
      top: 5px;
      left: 5px;
      width: 20px;
      height: 20px;
      background: rgba(43, 138, 62, 0.2);
      border-radius: 50%;
    }
    
    .security-note {
      font-size: 12px;
      color: #868e96;
      text-align: center;
      margin-top: 20px;
      padding-top: 15px;
      border-top: 1px dashed #e9ecef;
    }
    
    
    .copyright {
      text-align: center;
      margin-top: 30px;
      padding-top: 20px;
      border-top: 1px solid #d5cfcf;
      font-size: 12px;
      color: #666;
    }
    
    @media (max-width: 768px) {
      .payment-container {
        flex-direction: column;
      }
      
      .add-payment-section {
        width: 100%;
      }
      
      .card-header {
        padding: 20px;
      }
      
      .card-body {
        padding: 20px;
      }
      
      .card-footer {
        padding: 15px;
        flex-direction: column;
        gap: 10px;
      }
      
      .btn {
        width: 100%;
      }
      
      .footer-container {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>
<body>
 <%@ include file="header.jsp"%>

  <div class="payment-container">
    <div class="payment-card">
      <div class="card-header">
        <div class="card-type">Visa</div>
        <h1>Payment Details</h1>
      </div>
      
      <c:if test="${not empty latestPayment}">
        <div class="card-body">
          <div class="detail-item">
            <span class="detail-label">Card Holder Name</span>
            <div class="detail-value">
              <div class="chip"></div>
              ${latestPayment.name}
            </div>
          </div>
          
          <div class="detail-item">
            <span class="detail-label">Card Number</span>
            <div class="detail-value card-number">
              •••• •••• •••• ${latestPayment.card_number.substring(latestPayment.card_number.length() - 4)}
            </div>
          </div>
          
          <div class="detail-item">
            <span class="detail-label">Expiry Date</span>
            <div class="detail-value">
              ${latestPayment.expiry_date}
            </div>
          </div>
          
          <div class="detail-item">
            <span class="detail-label">CVV</span>
            <div class="detail-value">
              •••
            </div>
          </div>
          
          <div class="security-note">
            Your payment details are securely encrypted
          </div>
        </div>
        
        <div class="card-footer">
          <a href="paymentedit.jsp?id=${latestPayment.id}&name=${latestPayment.name}&card_number=${latestPayment.card_number}" class="btn btn-update">
            Update
          </a>
          <form action="PaymentDeleteServlet" method="post" style="margin: 0;">
            <input type="hidden" name="id" value="${latestPayment.id}" />
            <button class="btn btn-delete" type="submit">Delete</button>
          </form>
        </div>
      </c:if>
    </div>
    
    <div class="add-payment-section">
      <div class="add-payment-icon">
        <i class="fas fa-credit-card"></i>
      </div>
      <h2>Add Payment Method</h2>
      <p>Securely add a new credit or debit card to your account</p>
      <a href="payment.jsp" class="btn btn-add">
        <i class="fas fa-plus"></i>
        Add New Card
      </a>
    </div>
  </div>
  
 <%@ include file="footer.jsp"%>
</body>
</html>