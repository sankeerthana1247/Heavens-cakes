<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Photo Cakes</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="style.css">
  <style>
    /* Reset and basic styles */
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body.bg-cake-pattern {
      background-image: url('product-image/unibackground.jpg');
      background-size: cover;
      background-repeat: no-repeat;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      line-height: 1.6;
    }

    main {
      padding: 20px;
    }

    .product-details {
      background-color: rgba(255, 255, 255, 0.8);
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 20px;
      max-width: 800px;
      margin: 0 auto;
    }

    h1 {
      font-size: 2.5em;
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    .product-images {
      display: flex;
      justify-content: center;
      align-items: center;
      margin-bottom: 20px;
    }

    .main-image {
      position: relative;
      overflow: hidden;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      max-width: 350px;
    }

    .main-image img {
      width: 100%;
      display: block;
      transition: transform 0.3s ease-in-out;
      border-radius: 10px;
    }

    .zoomed-image {
      position: absolute;
      top: 0;
      left: 110%;
      width: 300px;
      overflow: hidden;
      border: 1px solid #ccc;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
      display: none;
    }

    .zoomed-image img {
      width: 100%;
      display: block;
    }

    .product-description {
      text-align: justify;
      margin-bottom: 20px;
      color: #000000;
    }

    .product-info {
      display: flex;
      flex-direction: column;
      align-items: center;
      max-width: 800px; /* Increased width */
      margin: 0 auto;
    }

    .price {
      font-size: 1.5em;
      font-weight: bold;
      margin-bottom: 15px;
      color: #333;
    }

    .quantity-control {
      display: flex;
      align-items: center;
      margin-bottom: 15px;
    }

    .quantity-control button {
      padding: 8px 15px;
      border: none;
      background-color: #333;
      color: #fff;
      border-radius: 5px;
      cursor: pointer;
      margin: 0 5px;
      transition: background-color 0.3s ease;
    }

    .quantity-control button:hover {
      background-color: #555;
    }

    .quantity-control input[type="number"] {
      padding: 8px;
      width: 80px;
      text-align: center;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 1em;
    }

    #addToCart, #buyNow {
      padding: 12px 30px;
      border: none;
      background-color: #333;
      color: #fff;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 10px;
      transition: background-color 0.3s ease;
    }

    #addToCart:hover, #buyNow:hover {
      background-color: #555;
    }

    .Rating {
      display: inline-block;
      background-color: #f02871;
      color: #fff;
      border-radius: 5px;
      padding: 5px 10px;
      margin-bottom: 10px;
    }

    .price h1 {
      color: #e91e63;
      font-size: 2em;
      margin: 10px 0;
    }

    .weight-container {
      display: flex;
      flex-wrap: wrap;
      gap: 10px;
    }

    .weight {
      background-color: #f1f1f1;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .weight:hover,
    .weight.clicked {
      background-color: #e91e63;
      color: #fff;
    }

    .options,
    .flavour,
    .message,
    .pincode-check,
    .upload-img {
      margin: 20px 0;
      color: #000000
    }

    .flavour-label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
      color: #000000
    }

    select,
    textarea,
    input[type="text"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      margin-top: 5px;
      color: #000000
    }
  
  .pincode-check {
  display: flex;
  flex-direction: column;
  align-items: flex-start; /* Align label to the left */
  color: #000000
}

.input-button-container {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%; /* Ensures the container spans full width */
  margin-top: 10px; /* Space between label and input/button */
  color: #000000
}

#pincode {
  flex: 1;
  padding: 5px;
  margin-right: 10px; /* Space between input and button */
  color: #000000
}

#check {
  background-color: #e91e63;
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 5px;
  cursor: pointer;
  font-size: 1em;
}
  
  button,
    #addToCartButton {
      background-color: #80b3ff;
      color:black;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
      font-size: 1em;
    }
   

    button:hover,
    #addToCartButton:hover,
    #addToWishlist:hover,
    #buyNowButton:hover {
      background-color: #0047b3;
      color:white;
    }

    .description,
    .delivery-details,
    .care-instructions {
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      padding: 20px;
      margin: 20px 0;
    }

    h1 {
      font-size: 1.5em;
      margin-bottom: 10px;
      color: #333;
    }

    ul {
      list-style-type: none;
      padding: 0;
    }

    ul li {
      margin: 5px 0;
    }

    .modal {
      display: none;
      position: fixed;
      z-index: 1;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      overflow: auto;
      background-color: rgba(0, 0, 0, 0.4);
    }

    .modal-content {
      background-color: #fff;
      margin: 15% auto;
      padding: 20px;
      border: 1px solid #888;
      width: 80%;
      max-width: 500px;
      border-radius: 10px;
    }

    .close {
      color: #aaa;
      float: right;
      font-size: 28px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: black;
      text-decoration: none;
      cursor: pointer;
    }
	#cart-actions{
	padding-right:20px;
	}
    .cake {
      position: absolute;
      width: 50px;
      height: 50px;
      border-radius: 50%;
      background-size: cover;
      opacity: 0;
    }

    .cake.bloom {
      animation: bloom 1s ease-out forwards;
    }

    @keyframes bloom {
      0% {
        transform: scale(0);
        opacity: 1;
      }

      100% {
        transform: scale(3);
        opacity: 0;
      }
    }
.cart-actions{
	display:flex;
	gap:20px;
	padding:10px;
}
    .popup-message {
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background-color: #4caf50;
      color: white;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      opacity: 0;
      visibility: hidden;
      transition: opacity 0.5s, visibility 0.5s;
    }

    .popup-message.show {
      opacity: 1;
      visibility: visible;
    }

    .upload-img {
      position: relative;
      overflow: hidden;
    }

    .upload-img input[type="file"] {
      position: absolute;
      top: 0;
      right: 0;
      margin: 0;
      padding: 0;
      font-size: 20px;
      cursor: pointer;
      opacity: 0;
      filter: alpha(opacity=0);
    }
  </style>
</head>
<body class="bg-cake-pattern">
  <main>
    <div class="product-details">
      <h1>Heaven Unicorn Cake</h1>
      <div class="product-images">
        <div class="main-image">
          <img src="product-image/Heaven Unicorn Cake.jpg" alt="Main Cake Image" id="mainImage">
        </div>
        <div class="zoomed-image" id="zoomedImage">
          <img src="product-image/Heaven Unicorn Cake.jpg" alt="Zoomed Cake Image">
        </div>
      </div>
      <div class="product-description">
        <p>Our photo cakes are the perfect choice for making special occasions unforgettable. Choose from a variety of delicious flavors and sizes, and customize your cake with your favorite photo. Our photo cakes are made with the finest ingredients to ensure that every bite is as delightful as the last.</p>
      </div>
      <div class="product-info">
        
        <div class="Rating">
                    
                        <div class="rating">
                            <span style="font-size:100%;color:rgb(255, 255, 255);">4.8 &starf;</span>
                        </div>
                    
          </div>
          <div class="price">₹<span id="price">499</span></div>
          <p>Weight: <a href="#" onclick="showServingInfo()">Serving Info</a></p>
        <div class="weight-container">
          <div class="weight clicked" data-price="499">0.5 kg</div>
          <div class="weight" data-price="1149">1 kg</div>
          <div class="weight" data-price="2049">2 kg</div>
          <div class="weight" data-price="3049">3 kg</div>
        </div>
        <!--  <div class="quantity-control">
          <button onclick="decrementQuantity()">-</button>
          <input type="number" id="quantity" value="1" min="1" max="10">
          <button onclick="incrementQuantity()">+</button>
        </div> -->
        <div class="options">
                    <input type="checkbox" name="eggless" id="eggless">
                    <label for="eggless">Eggless</label>
         </div>

         <div class="flavour">
                    <div class="flav">
                        <label for="flavor" class="flavor-label">Choose Flavor:</label>
                        <select name="flavor" id="flavor">
                            <option value="vanilla">Vanilla</option>
                            <option value="butterscotch">Butterscotch</option>
                            <option value="chocolate">Chocolate</option>
                            <option value="strawberry">Strawberry</option>
                            <option value="blackforest">Black Forest</option>
                            <option value="pineapple">Pineapple</option>
                        </select>
                    </div>
          </div>
        <div class="options message">
          <label for="message">Message on Cake:</label>
          <input type="text" id="message" placeholder="Happy Birthday!">
        </div>
       
       <div class="pincode-check">
  <label for="pincode">Check Availability:</label>
  <div class="input-button-container">
    <input type="text" id="pincode" placeholder="Enter Pincode">
    <button onclick="checkPincode()" id="check">Check</button>
  </div>
</div>
        
        <!-- <div class="options upload-img">
          <label for="upload">Upload Photo:</label>
          <input type="file" id="upload">
        </div> -->
       
        <div class="cart-actions">
          
         <div>
          <form action="CartServlet" method="post" target="_blank">
                  <input type="hidden" name="itemName" value="Photo Cake">
                    <input type="hidden" name="itemPrice" value="789.00">
                    <input type="hidden" name="imageUrl" value="product-image/Heaven Unicorn Cake.jpg">
                    <input type="hidden" name="description" value="A delicious car-shaped cake">
                    <button id="addToCartButton">Add to Cart</button>
                </form>
         </div>
          <div>
            <button id="buyNowButton">Buy Now</button>
          </div>
         <div>
         <form action="AddToWishlistServlet" method="post" target="_blank">
                  <input type="hidden" name="itemName" value="Photo Cake">
                    <input type="hidden" name="itemPrice" value="789.00">
                    <input type="hidden" name="imageUrl" value="product-image/Heaven Unicorn Cake.jpg">
                    <input type="hidden" name="description" value="A delicious car-shaped cake">
                    <button id="addToWishlist">Add to Wishlist</button>
                </form>
              </div>
          
        </div>
        
      </div>
    </div>
    <div id="servingInfoModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeServingInfo()">&times;</span>
        <h2>Serving Info</h2>
        <ul>
            <li>500 gm serves 4-6 people</li>
            <li>1 kg serves 10-12 people</li>
            <li>1.5 kg serves 15-18 people</li>
            <li>2 kg serves 20-24 people</li>
            <li>3 kg serves 30-35 people</li>
            <li>4 kg serves 40-45 people</li>
        </ul>
    </div>
</div>
    <div id="popupMessage" class="popup-message">Item added to cart!</div>
    <div class="cake" id="cake"></div>
  </main>

  <script>
  var selectedWeight = null;

  function checkPincode() {
      var pincode = document.getElementById('pincode').value.trim();
      if (pincode === '') {
          alert('Please enter a pincode.');
          return;
      }
      if (!/^\d{6}$/.test(pincode)) {
          alert('Please enter a valid 6-digit pincode.');
          return;
      }
      alert('Pincode is valid and delivery is available in your area.');
  }

    const mainImage = document.getElementById('mainImage');
    const zoomedImage = document.getElementById('zoomedImage');
    const weightElements = document.querySelectorAll('.weight');
    const addToCartButton = document.getElementById('addToCartButton');
    const buyNowButton = document.getElementById('buyNowButton');
    const popupMessage = document.getElementById('popupMessage');
    const priceElement = document.getElementById('price');

    mainImage.addEventListener('mouseover', () => {
      zoomedImage.style.display = 'block';
    });

    mainImage.addEventListener('mouseout', () => {
      zoomedImage.style.display = 'none';
    });

    mainImage.addEventListener('mousemove', (event) => {
      const x = event.clientX - mainImage.offsetLeft;
      const y = event.clientY - mainImage.offsetTop;
      const zoomImage = zoomedImage.querySelector('img');
      zoomImage.style.transformOrigin = `${x}px ${y}px`;
      zoomImage.style.transform = 'scale(2)';
    });

    weightElements.forEach(element => {
      element.addEventListener('click', (event) => {
        weightElements.forEach(el => el.classList.remove('clicked'));
        event.target.classList.add('clicked');
        priceElement.textContent = event.target.getAttribute('data-price');
      });
    });

    function decrementQuantity() {
      const quantityInput = document.getElementById('quantity');
      if (quantityInput.value > 1) {
        quantityInput.value = parseInt(quantityInput.value) - 1;
      }
    }

    function incrementQuantity() {
      const quantityInput = document.getElementById('quantity');
      if (quantityInput.value < 10) {
        quantityInput.value = parseInt(quantityInput.value) + 1;
      }
    }

    function showPopupMessage() {
      popupMessage.classList.add('show');
      setTimeout(() => {
        popupMessage.classList.remove('show');
      }, 2000);
    }

    addToCartButton.addEventListener('click', () => {
      showPopupMessage();
      const cake = document.createElement('div');
      cake.className = 'cake bloom';
      cake.style.backgroundImage = 'url("product-image/kidcake.jpg")';
      document.body.appendChild(cake);
      setTimeout(() => {
        document.body.removeChild(cake);
        window.location.href = 'cartDisplay.jsp';
      }, 1000);
    });

    buyNowButton.addEventListener('click', () => {
      window.location.href = 'payment2.jsp';
    });
    function showServingInfo() {
        var modal = document.getElementById('servingInfoModal');
        modal.style.display = 'block';
    }

    // Function to close serving info modal
    function closeServingInfo() {
        var modal = document.getElementById('servingInfoModal');
        modal.style.display = 'none';
    }

    // Close modal when clicking outside of it
    window.onclick = function(event) {
        var modal = document.getElementById('servingInfoModal');
        if (event.target == modal) {
            modal.style.display = 'none';
        }
        // Close modal when clicking on the close symbol
        var closeButton = document.querySelector('.close');
        if (event.target == closeButton) {
            modal.style.display = 'none';
        }
    }

  </script>
</body>
</html>
