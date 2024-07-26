<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WINNI</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="kids.css">
<link rel="stylesheet" href="location.css">
</head>
<script>
document.addEventListener('DOMContentLoaded', function() {
    var deliveryLocationButton = document.querySelector('.loc-text');

    // Default text
    deliveryLocationButton.textContent = 'Delivery Location';

    // Check if a city is selected
    var selectedCity = localStorage.getItem('selectedCity');
    if (selectedCity) {
        deliveryLocationButton.textContent = selectedCity ;
    }

    var locationIcon = document.querySelector('.loc-icon');
    locationIcon.addEventListener('click', function(event) {
        event.preventDefault(); 
        var selectedCity = localStorage.getItem('selectedCity');
        if (selectedCity) {
            deliveryLocationButton.textContent = selectedCity + ' Delivery';
        } else {
            window.location.href = 'loc.html';
        }
    });
    var personIcon = document.querySelector('.person-icon');
    var logoutButton = document.querySelector('.logout-button');
    personIcon.addEventListener('click', function() {
        if (logoutButton.style.display === 'none' || logoutButton.style.display === '') {
            logoutButton.style.display = 'block';
        } else {
            logoutButton.style.display = 'none';
        }
    });

    // Redirect to start.html on logout button click
    logoutButton.addEventListener('click', function() {
        window.location.href = 'welcome.jsp';
    });
});
</script>
<body>
<header>
  <nav class="navbar">
    <div class="row">
      <div class="header-left">
        <div class="left-item">
          <a href="help1.jsp">Help</a> 
        </div>
        <div class="left-item">
          <a href="#">Currency - <b>INR</b></a> 
        </div>
        <div class="left-item">
          <a href="#">Corporate gifts</a>
        </div>
        <div class="left-item">
          <a href="#">Partner with us</a> 
        </div>
        <div class="left-item">
          <a href="#">Track Order</a>
        </div>
      </div>
    </div>
    <div class="row header-content">
      <div class="logo-container"> 
        <img src="product-image/logo-png.png" alt="logo" class="logo" style="width:220px;height:120px">
      </div>
      <div class="center-container">
        <div class="search-bar-container">
          <input type="search" placeholder="Search for gifts" class="search-bar">
          <button type="submit" class="search-button">
            <img src="https://w7.pngwing.com/pngs/391/434/png-transparent-computer-icons-web-search-engine-search-sticker-black-desktop-wallpaper-thumbnail.png" alt="Search Icon" class="search-icon">
          </button>
        </div>
        <div class="location-container">
          <a href="location.jsp" class="location-link">
            <img src="https://www.freeiconspng.com/thumbs/location-icon-png/location-map-pins-png-3.png" alt="Location Icon" class="loc-icon">
            <div class="loc-text"><b>Delivery Location</b></div>
          </a>
        </div>
      </div>
      <div class="additional-images">
        <img src="https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars-thumbnail.png" alt="Contact" class="additional-img person-icon">
        <button class="logout-button">Logout</button>
        <a href="wishlist.jsp"><img src="https://icon-library.com/images/wishlist-icon/wishlist-icon-26.jpg" alt="Wishlist" class="additional-img"></a>
        <a href="cartDisplay.jsp"><img src="https://media.istockphoto.com/id/1417570203/vector/shopping-cart-icon-sticker-on-gray-background.jpg?s=612x612&w=0&k=20&c=XY68njroajZ8kezeF9FxJQDpTG6-pIh5EditWloz19I=" alt="cart" class="additional-img"></a>
      </div>
    </div>  
    <div class="row">
      <div class="header-links">
        <div class="column left">
          <div class="header-link express-link">
            <a href="#" style="color: rgb(236, 31, 134);"><b>EXPRESS</b></a>
          </div>
          <div class="header-link cakes-link">
            <a href="#" class="cake-drop">Cakes</a>
            <div class="hover-content">
              <div class="cakes-dropdown">
                <div class="column">
                  <h3>Cakes By Type</h3>
                  <ul>
                    <li><a href="egglesshome.jsp"><b style="color: #f1c411;">|</b> Eggless Cakes</a></li>
                    <li><a href="Midnightcake.jsp">Midnight Cakes</a></li>
                    <li><a href="#"><b style="color: #f1c411;">|</b> Photocakes</a></li>
                    <li><a href="HeartCake1.jsp">Heart Shape Cakes</a></li>
                    <li><a href="Designercake.jsp">Designer Cakes</a></li>
                    <li><a href="#">Fondant Cakes</a></li>
                    <li><a href="#">Dry Cakes</a></li>
                    <li><a href="#">Cup Cakes</a></li>
                    <li><a href="Pastryhome.jsp">Pastry</a></li>
                    <li><a href="#">Jar Cakes</a></li>
                  </ul>
                </div>
                <div class="column">
                  <h3>Cakes By Flavour</h3>
                  <ul>
                    <li><a href="chocolatehome.jsp"><b style="color: #f1c411;"><b>|</b></b> Chocolate Cakes</a></li>
                    <li><a href="#">Truffle Cakes</a></li>
                    <li><a href="#">Black Forest Cakes</a></li>
                    <li><a href="#">Rasmalai Cakes</a></li>
                    <li><a href="#"><b style="color: #f1c411;">|</b> Butterscotch Cakes</a></li>
                    <li><a href="Redvelvetcake.jsp">Red Velvet Cakes</a></li>
                    <li><a href="#">Vanilla Cakes</a></li>
                    <li><a href="#">Pineapple Cakes</a></li>
                    <li><a href="#">Fruit Cakes</a></li>
                    <li><a href="#">Coffee Cakes</a></li>
                    <li><a href="#">Kitkat Cakes</a></li>
                  </ul>
                </div>
                <div class="column">
                  <h3>Cakes By Theme</h3>
                  <ul>
                    <li><a href="kidspage.jsp"><b style="color: #f1c411;">|</b> Kids Cakes</a></li>
                    <li><a href="unicorn.jsp">Unicorn Cakes</a></li>
                    <li><a href="#"><b style="color: #f1c411;">|</b> Half Cakes</a></li>
                    <li><a href="doll-cake.html">Barbie Doll Cakes</a></li>
                    <li><a href="#">Tier Cakes</a></li>
                    <li><a href="#">Cartoon Cakes</a></li>
                    <li><a href="#">Spiderman Cakes</a></li>
                  </ul>
                </div>
                <div class="column">
                  <h3>Cakes By Occasion</h3>
                  <ul>
                    <li><a href="#"><b style="color: #f1c411;">|</b> Birthday Cakes</a></li>
                    <li><a href="Anniversary2.jsp">Anniversary Cakes</a></li>
                    <li><a href="Birthdaycake.jsp">First Birthday Cakes</a></li>
                    <li><a href="#">First Anniversary Cakes</a></li>
                    <li><a href="#">25th Anniversary Cakes</a></li>
                  </ul>
                  <ul>
                    <h3>Cakes Combos</h3>
                    <li><a href="Flowershome.jsp">Cakes and Flowers</a></li>
                    <li><a href="Teddieshome.jsp">Cakes and Teddies</a></li>
                    <li><a href="#">Cakes and Chocolates</a></li>
                    <li><a href="#">Cake Combos</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="header-link plants-link">
            <a href="#">Plants</a>
          </div>
          <div class="header-link gifts-link">
            <a href="#">Gifts</a>
          </div>
          <div class="header-link Personalized-gifts-link">
            <a href="#">Personalized Gifts</a>
          </div>
          <div class="header-link chocolates-link">
            <a href="#">Chocolates</a>
          </div>
          <div class="header-link combos-link">
            <a href="#">Combos</a>
          </div>
          <div class="header-link birthday-link">
            <a href="#">Birthday</a>
          </div>
          <div class="header-link anniversary-link">
            <a href="#">Anniversary</a>
          </div>
          <div class="header-link occasions-link">
            <a href="#">Occasions</a>
          </div>
          <div class="header-link delivery-link">
            <a href="#" id="delivery-link">2 Hours Delivery Gifts</a>
          </div>
        </div>
      </div>
    </div>
  </nav>
</header>
</body>
</html>