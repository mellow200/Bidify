<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Details - Bidify</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="container">
        <div class="page-header">
           
            <a href="BidViewServlet" class="back-button">← Back to Auctions</a>
        </div>

        <div class="item-detail-container" id="itemDetailContainer">
            <!-- Item details will be inserted dynamically -->
        </div>

        <div class="bid-section">
            <div class="bid-history">
                <h3>Bid History</h3>
                <div class="bid-history-list" id="bidHistoryList">
               
               
                    <table>
                    <tr>
                    	<th>  </th>
                    	<th>Amount(LKR)  </th>
                    	<th>Bidder Name</th>
                    </tr>
                    <c:forEach var="bid" items="${allBids}">
                    <tr>
                    	<td><input type="hidden" name="bid" value="${bid.bid}"></td>
                    	<td>${bid.bidamount}</td>
                    	<td>${bid.bidName}</td>
                    	<td>
                    	<a href="UpdateBid.jsp?bid=${bid.bid}&bidamount=${bid.bidamount}&bidName=${bid.bidName}">
                    	<button class="bid-update-button">Update</button></a>
                    	</td>
                 		<td>
                    	<form action="DeleteServletBid" method="post">
                    	<input type="hidden" name="bid" value="${bid.bid}">
                    		<button class="bid-delete-button">Delete</button>
                    	</form>
                    	</td>
                 
                    </tr>
                    </c:forEach>
                    </table>
                    
                </div>
            </div>

            <div class="place-bid-form">
                <h3>Place Your Bid</h3>
                <div class="current-info">
                
             <c:forEach var="item" items="${items}">
    <div class="current-bid-display">
        Base Price: <span id="currentBidAmount">${item.base_price}</span>
    </div>
</c:forEach>

                   
                </div>
                <form action="InsertServletBid" method="post" id="bidForm">
                    <div class="form-group">
                        <label for="bidAmount">Your Bid (LKR):</label>
                        <input type="number" id="bidAmount" name="bidamount" step="0.01" required>
                        <label for="bidname">Bid Name :</label>
                        <input type="text" id="bidname" name="bidName" required> 
                    </div>

                    <div class="form-message" id="bidMessage"></div>
                    <button type="submit" class="bid-submit-button">Place Bid Now</button>
                </form>
            </div>
        </div>
    </div>

    <template id="item-detail-template">
        <div class="item-detail">
            <div class="item-gallery">
                <div class="main-image-container">
                    <img src="" alt="" class="main-image">
                </div>
                <div class="auction-timer detailed">
                    <div class="timer-label">Auction ends in:</div>
                    <div class="timer-value"></div>
                </div>
            </div>
            <div class="item-info">
                <h2 class="item-title"></h2>
                <div class="item-category"></div>
                <div class="item-seller">Seller: <span></span></div>
                <div class="item-description"></div>
                <div class="item-bid-info">
                    <div class="starting-price detailed">
                        <span class="price-label">Starting Price:</span>
                        <span class="price-value"></span>
                    </div>
                    <div class="current-bid detailed">
                        <span class="price-label">Current Bid:</span>
                        <span class="price-value"></span>
                    </div>
                    <div class="bid-count detailed">
                        <span class="bid-count-value"></span> bids placed
                    </div>
                </div>
            </div>
        </div>
    </template>

    <template id="bid-history-item-template">
        <div class="bid-history-item">
            <div class="bid-amount"></div>
            <div class="bid-info">
                <div class="bidder-name"></div>
                <div class="bid-time"></div>
            </div>
        </div>
    </template>


  
    <%@ include file="footer.jsp" %>
</body>
</html>