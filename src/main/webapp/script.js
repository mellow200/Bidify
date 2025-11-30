document.addEventListener('DOMContentLoaded', function() {
    // Sample auction data - in a real application, this would come from a database
    const auctionItems = [
        {
            id: 1,
            title: "Vintage Rolex Submariner",
            description: "A rare 1960s Rolex Submariner in excellent condition. This timepiece features the original dial and bezel with minimal fading.",
            image: "https://images.pexels.com/photos/190819/pexels-photo-190819.jpeg",
            startingPrice: 8000,
            currentBid: 10500,
            bids: 12,
            endTime: new Date(Date.now() + 3 * 24 * 60 * 60 * 1000), // 3 days from now
            seller: "VintageCollector",
            category: "watches"
        },
        {
            id: 2,
            title: "Original Abstract Painting by Ellen Kim",
            description: "Original acrylic on canvas, signed by the artist. This vibrant abstract piece measures 36\" x 48\" and would make a stunning focal point in any modern interior.",
            image: "https://images.pexels.com/photos/1292241/pexels-photo-1292241.jpeg",
            startingPrice: 3000,
            currentBid: 4200,
            bids: 7,
            endTime: new Date(Date.now() + 2 * 24 * 60 * 60 * 1000), // 2 days from now
            seller: "ArtGalleryModern",
            category: "art"
        },
        {
            id: 3,
            title: "First Edition 'The Great Gatsby'",
            description: "First edition, first printing of F. Scott Fitzgerald's masterpiece, published in 1925. This rare copy is in very good condition with the original dust jacket.",
            image: "https://images.pexels.com/photos/1130980/pexels-photo-1130980.jpeg",
            startingPrice: 15000,
            currentBid: 18750,
            bids: 9,
            endTime: new Date(Date.now() + 1 * 24 * 60 * 60 * 1000), // 1 day from now
            seller: "RareBookTreasures",
            category: "books"
        },
        {
            id: 4,
            title: "2018 Ferrari 488 GTB",
            description: "This stunning Ferrari 488 GTB has only 12,000 miles and is in immaculate condition. Finished in iconic Rosso Corsa with black leather interior.",
            image: "https://images.pexels.com/photos/337909/pexels-photo-337909.jpeg",
            startingPrice: 180000,
            currentBid: 210500,
            bids: 15,
            endTime: new Date(Date.now() + 4 * 24 * 60 * 60 * 1000), // 4 days from now
            seller: "LuxuryAutoSales",
            category: "cars"
        },
        {
            id: 5,
            title: "Diamond and Sapphire Necklace",
            description: "Exquisite 18K white gold necklace featuring 5 carats of diamonds and a stunning 3 carat Ceylon sapphire pendant. Includes certificate of authenticity.",
            image: "https://images.pexels.com/photos/1381693/pexels-photo-1381693.jpeg",
            startingPrice: 12000,
            currentBid: 14750,
            bids: 6,
            endTime: new Date(Date.now() + 5 * 24 * 60 * 60 * 1000), // 5 days from now
            seller: "PremiumJewelers",
            category: "jewelry"
        },
        {
            id: 6,
            title: "Antique French Armoire",
            description: "19th century French walnut armoire with intricate hand-carved details. Features original hardware and two large drawers. Excellent condition for its age.",
            image: "https://images.pexels.com/photos/1643383/pexels-photo-1643383.jpeg",
            startingPrice: 5000,
            currentBid: 6200,
            bids: 8,
            endTime: new Date(Date.now() + 2.5 * 24 * 60 * 60 * 1000), // 2.5 days from now
            seller: "HeritageAntiques",
            category: "art"
        }
    ];

    // Save items to session storage for use on other pages
    sessionStorage.setItem('auctionItems', JSON.stringify(auctionItems));

    // DOM elements
    const auctionItemsContainer = document.getElementById('auctionItemsContainer');
    const template = document.getElementById('auction-item-template');
    const filterButtons = document.querySelectorAll('.filter-button');
    const searchInput = document.getElementById('searchInput');

    // Format currency
    function formatCurrency(amount) {
        return '$' + amount.toLocaleString('en-US');
    }

    // Format time remaining
    function formatTimeRemaining(endTime) {
        const now = new Date();
        const timeRemaining = endTime - now;
        
        if (timeRemaining <= 0) {
            return "Auction ended";
        }
        
        const days = Math.floor(timeRemaining / (1000 * 60 * 60 * 24));
        const hours = Math.floor((timeRemaining % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        const minutes = Math.floor((timeRemaining % (1000 * 60 * 60)) / (1000 * 60));
        
        if (days > 0) {
            return `${days}d ${hours}h ${minutes}m`;
        } else if (hours > 0) {
            return `${hours}h ${minutes}m`;
        } else {
            return `${minutes}m`;
        }
    }

    

    // Render auction items
    function renderAuctionItems(items) {
        auctionItemsContainer.innerHTML = '';
        
        if (items.length === 0) {
            auctionItemsContainer.innerHTML = '<div class="no-results">No items match your search. Please try different criteria.</div>';
            return;
        }
        
        items.forEach(item => {
            const itemNode = document.importNode(template.content, true);
            
            // Set the auction item's content
            itemNode.querySelector('.auction-image').src = item.image;
            itemNode.querySelector('.auction-image').alt = item.title;
            itemNode.querySelector('.auction-title').textContent = item.title;
            itemNode.querySelector('.auction-description').textContent = item.description;
            itemNode.querySelector('.starting-price .price-value').textContent = formatCurrency(item.startingPrice);
            itemNode.querySelector('.current-bid .price-value').textContent = formatCurrency(item.currentBid);
            itemNode.querySelector('.bid-count-value').textContent = item.bids;
            
            // Set timer with dynamic update
            const timerElement = itemNode.querySelector('.timer-value');
            timerElement.textContent = formatTimeRemaining(item.endTime);
            
            // Add ending soon class if less than 1 day
            if (item.endTime - new Date() < 24 * 60 * 60 * 1000) {
                timerElement.classList.add('ending-soon');
            }
            
            // Set link to item detail page
            const bidButton = itemNode.querySelector('.bid-button');
            bidButton.href = `itemDetail.jsp?id=${item.id}`;
            
            auctionItemsContainer.appendChild(itemNode);
        });
    }

    // Filter items by category
    function filterItemsByCategory(category) {
        if (category === 'all') {
            return auctionItems;
        } else {
            return auctionItems.filter(item => item.category === category);
        }
    }

    // Filter items by search term
    function filterItemsBySearch(items, searchTerm) {
        if (!searchTerm) {
            return items;
        }
        
        const term = searchTerm.toLowerCase();
        return items.filter(item => 
            item.title.toLowerCase().includes(term) || 
            item.description.toLowerCase().includes(term) ||
            item.category.toLowerCase().includes(term)
        );
    }

    // Initialize with all items
    renderAuctionItems(auctionItems);

    // Filter button click handlers
    filterButtons.forEach(button => {
        button.addEventListener('click', function() {
            // Update active state
            filterButtons.forEach(btn => btn.classList.remove('active'));
            this.classList.add('active');
            
            // Filter items
            const category = this.dataset.category;
            const filteredByCategory = filterItemsByCategory(category);
            const searchTerm = searchInput.value;
            const filteredItems = filterItemsBySearch(filteredByCategory, searchTerm);
            
            renderAuctionItems(filteredItems);
        });
    });

    // Search handler
    const searchButton = document.querySelector('.search-button');
    searchButton.addEventListener('click', function() {
        const searchTerm = searchInput.value;
        const activeCategory = document.querySelector('.filter-button.active').dataset.category;
        const filteredByCategory = filterItemsByCategory(activeCategory);
        const filteredItems = filterItemsBySearch(filteredByCategory, searchTerm);
        
        renderAuctionItems(filteredItems);
    });

    // Handle enter key in search input
    searchInput.addEventListener('keyup', function(event) {
        if (event.key === 'Enter') {
            searchButton.click();
        }
    });

    // Update timers every minute
    setInterval(() => {
        document.querySelectorAll('.auction-item').forEach((item, index) => {
            const timerElement = item.querySelector('.timer-value');
            const itemData = auctionItems[index];
            
            if (itemData) {
                timerElement.textContent = formatTimeRemaining(itemData.endTime);
                
                // Add ending soon class if less than 1 day
                if (itemData.endTime - new Date() < 24 * 60 * 60 * 1000) {
                    timerElement.classList.add('ending-soon');
                }
            }
        });
    }, 60000);
});