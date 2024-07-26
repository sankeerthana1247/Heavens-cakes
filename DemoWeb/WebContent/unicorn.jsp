<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kids Cakes</title>
    <style>
        .highlight { border: 2px solid red; }
        .product-cell { display: inline-block; margin: 10px; }
        #unavailable-message { display: none; color: red; }
    </style>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="kidspage.css">
</head>
<body>   
	<jsp:include page="Header.jsp" />
	
	
    <div class="breadcrumb">
      <a href="#">Home</a> &gt; <a href="#">Birthday Cakes</a>
  </div>
  <div class="header">
    <h1>Unicorn Cakes <span>(8 items)</span></h1>
    <div class="filter-options">
        <div>
            <input type="date">Select delivery Date<br>
        </div>
        <div>
            <label for="price-filter">Filter By Price</label>
            <select id="price-filter" onchange="filterProducts(this.value)">
                <option value="all">All Products</option>
                <option value="500-999">₹500 - ₹999</option>
                <option value="1000-1999">₹1000 - ₹1999</option>
                <option value="3000+">₹3000 and above</option>
            </select>
        </div>
        <div>
            <label for="sort-by">Sort By</label>
            <select id="sort-by">
                <option value="popularity">Sort by Popularity</option>
                <option value="rating-low-high">Sort by Rating (Low to High)</option>
                <option value="rating-high-low">Sort by Rating (High to Low)</option>
                <option value="price-low-high">Sort by Price (Low to High)</option>
                <option value="price-high-low">Sort by Price (High to Low)</option>
            </select>
        </div>
    </div>
</div>
        <div id="product-row">
            <div class="product-cell" data-price="499" data-rating="4.8">
                <div class="product-container">
                <a href="unicorn1.jsp">
                    <img src="product-image/Heaven Unicorn Cake.jpg" class="product-image">
                </a>
               <div class="badge best-seller">Best Seller</div>
            <div class="product-title">Heaven Unicorn Cake</div>
                <div class="product-price">
                    ₹499 <span class="product-discount">₹649</span> <span class="product-discount-rate">10% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.8 ★</span>
                    <span class="reviews-count">18 Reviews</span>
                </div>
                <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            </div>   
            </div>
        
            <div class="product-cell" data-price="759" data-rating="4.5">
                <div class="product-container">
                <a href="unicorn2.jsp">
                <img src="product-image/Fairy Tale Unicorn Cake.jpg"
                alt="Lipsmacking Black Forest Cake" class="product-image">
                </a>
                <div class="badge trending">Trending</div>
                <div class="product-title">Fairy Tale Unicorn Cake</div>
                <div class="product-price">
                    ₹759 <span class="product-discount">₹899</span> <span class="product-discount-rate">7% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.5 ★</span>
                    <span class="reviews-count">12 Reviews</span>
                </div>
                <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            </div>
        </div>
        
            <div class="product-cell" data-price="749" data-rating="4.8">
                <div class="product-container">
                <a href="unicorn3.jsp">
                <img src="product-image/Unicorn Pinata Cake.jpg" 
                alt="Lipsmacking Black Forest Cake" class="product-image"></a>
                <div class="badge new-arrival">New Arrival</div>
                <div class="product-title">Unicorn Pinata Cake</div>
                <div class="product-price">
                    ₹749 <span class="product-discount">₹799</span> <span class="product-discount-rate">19% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.8 ★</span>
                    <span class="reviews-count">38 Reviews</span>
                </div>
                <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            </div>
            </div>
      
        <div class="product-cell" data-price="1499" data-rating="5.0">
            <div class="product-container">
            <a href="unicorn4.jsp">
            <img src="product-image/Golden Tone Vanilla Unicorn Cake.jpg" 
            alt="Lipsmacking Black Forest Cake" class="product-image"></a>
            <div class="badge trending">Trending</div>
            <div class="product-title">Golden Tone Vanilla Unicorn Cake</div>
            <div class="product-price">
                ₹1499 <span class="product-discount">₹1999</span> <span class="product-discount-rate">25% Off</span>
            </div>
            <div class="product-rating">
                <span class="rating-value">5.0 ★</span>
                <span class="reviews-count">101 Reviews</span>
            </div>
            <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>        </div>
    </div>
      
          <div class="product-cell" data-price="650" data-rating="4.1">
            <div class="product-container">
            <a href="unicorn5.jsp">
              <img src="product-image/Floral Beautified White Unicorn Cake.jpg"
               alt="Lipsmacking Black Forest Cake" class="product-image"></a>
               <div class="badge new-arrival">New Arrival</div>
              <div class="product-title">Floral Beautified White Unicorn Cake</div>
              <div class="product-price">
                  ₹450 <span class="product-discount">₹749</span> <span class="product-discount-rate">30% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.1 ★</span>
                  <span class="reviews-count">2 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>
      
          <div class="product-cell" data-price="579" data-rating="4.9">
            <div class="product-container">
            <a href="unicorn6.jsp">
              <img src="product-image/unicorncake.jpg" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
             <div class="badge best-seller">Best Seller</div>
              <div class="product-title">Unicorn Cake</div>
              <div class="product-price">
                  ₹679 <span class="product-discount">₹829</span> <span class="product-discount-rate">15% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.9 ★</span>
                  <span class="reviews-count">16 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>
     
          <td>
          <div class="product-cell" data-price="589" data-rating="4.4">
            <div class="product-container">
            <a href="unicorn7.jsp">
              <img src="product-image/Decorative Colorful Unicorn Cake.jpg" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="badge trending">Trending</div>
              <div class="product-title">Decorative Colorful Unicorn Cake</div>
              <div class="product-price">
                  ₹589<span class="product-discount">₹639</span> <span class="product-discount-rate">8% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.9 ★</span>
                  <span class="reviews-count">87 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>

          <div class="product-cell" data-price="949" data-rating="4.9">
            <div class="product-container">
            <a href="unicorn8.jsp">
              <img src="https://assets.winni.in/product/primary/2021/9/53736.jpeg?dpr=1&w=400" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="badge new-arrival">New Arrival</div>
              <div class="product-title">Chocolate and Crunchy cake for kids</div>
              <div class="product-price">
                  ₹699 <span class="product-discount">₹949</span> <span class="product-discount-rate">26% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.9 ★</span>
                  <span class="reviews-count">38 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>
    </div>
    <div id="unavailable-message" style="display: none;">No products available in this price range.</div>
    <a href="wishlist.jsp" class="wishlist-link">
        Wishlist <span class="wishlist-badge">0</span>
    </a>
    <script>
    function toggleHeart(icon) {
        icon.classList.toggle('active');
        
        const productCell = icon.closest('.product-cell');
        const productName = productCell.querySelector('.product-title').textContent.trim();
        
        const wishlistItems = JSON.parse(localStorage.getItem('wishlistItems')) || [];
        const index = wishlistItems.findIndex(item -> item.name === productName);
        
        if (index === -1) {
            wishlistItems.push({ name: productName });
        } else {
            wishlistItems.splice(index, 1);
        }
        
        localStorage.setItem('wishlistItems', JSON.stringify(wishlistItems));
        
        updateWishlistBadge(wishlistItems.length);
    }

    function updateWishlistBadge(count) {
        const wishlistBadge = document.querySelector('.wishlist-badge');
        wishlistBadge.textContent = count;
    }

    function addToWishlist(event) 
    {
        event.preventDefault(); // Prevent the default action of the anchor tag
        
        // Increment the wishlist count
        wishlistCount++;
        
        // Update the badge
        const wishlistBadge = document.querySelector('.wishlist-badge');
        wishlistBadge.textContent = wishlistCount;
    }
        // Function to filter products based on price range
        function filterProducts(priceRange) {
            const products = document.querySelectorAll('.product-cell');

            products.forEach(product => {
                const price = parseInt(product.getAttribute('data-price'));
                if (priceRange === 'all' || 
                    (priceRange === '500-999' && price >= 500 && price <= 999) ||
                    (priceRange === '1000-1999' && price >= 1000 && price <= 1999) ||
                    (priceRange === '3000+' && price >= 3000)) {
                    product.style.display = 'block'; // Show product cell
                } else {
                    product.style.display = 'none'; // Hide product cell
                }
            });

            // Display message if no products are available in the selected range
            const messageContainer = document.getElementById('unavailable-message');
            const visibleProducts = document.querySelectorAll('.product-cell[style="display: block;"]');
            if (visibleProducts.length === 0) {
                messageContainer.style.display = 'block';
            } else {
                messageContainer.style.display = 'none';
            }
        }
        function sortProducts(sortBy) {
        const productContainer = document.getElementById('product-row');
        const products = Array.from(productContainer.getElementsByClassName('product-cell'));

        products.sort((a, b) => {
            const priceA = parseInt(a.getAttribute('data-price'));
            const priceB = parseInt(b.getAttribute('data-price'));
            const ratingA = parseFloat(a.getAttribute('data-rating'));
            const ratingB = parseFloat(b.getAttribute('data-rating'));

            if (sortBy === 'popularity') {
                // Assuming popularity is derived from rating
                return ratingB - ratingA;
            } else if (sortBy === 'rating-low-high') {
                return ratingA - ratingB;
            } else if (sortBy === 'rating-high-low') {
                return ratingB - ratingA;
            } else if (sortBy === 'price-low-high') {
                    return priceA - priceB;
            } else if (sortBy === 'price-high-low') {
                    return priceB - priceA;
                }

        });

        // Clear the container and append sorted products
        productContainer.innerHTML = '';
        products.forEach(product => productContainer.appendChild(product));
    }

    // Event listener for the sort-by dropdown
    document.getElementById('sort-by').addEventListener('change', function() {
        sortProducts(this.value);
    });

    // Initial sort to set the default sorting order
    sortProducts(document.getElementById('sort-by').value);
    document.addEventListener('DOMContentLoaded', function() {
        const wishlistItems = JSON.parse(localStorage.getItem('wishlistItems')) || [];
        updateWishlistBadge(wishlistItems.length);
    });
    

    </script>
</body>
</html>
</body>
</html>