<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Options</title>
    <link rel="stylesheet" href="pay.css">
</head>
<body>
    <div class="container"> 
        <form id="paymentForm">
            <h1>Choose Payment Option</h1>
            <div class="form-group">
                <div class="payment-methods">
                    <label>
                        <input type="radio" name="paymentMethod" value="phonepay" required>
                        <img src="https://nenow.in/wp-content/uploads/2022/08/images-1.jpg" alt="Phone Pay"><p>UPI</p>
                    </label><br>
                    <label>
                        <input type="radio" name="paymentMethod" value="card" required>
                        <img src="https://static.vecteezy.com/system/resources/previews/006/996/023/non_2x/credit-card-icon-isolated-on-a-white-background-credit-card-symbol-for-web-and-mobile-apps-illustration-free-vector.jpg" alt="Credit/Debit Card"><p>Debit Card or Credit Card</p>
                    </label><br>
                    <label>
                        <input type="radio" name="paymentMethod" value="netbanking" required>
                        <img src="https://cdn-icons-png.freepik.com/512/4826/4826345.png" alt="Net Banking"><p>NetBanking</p>
                    </label><br>
                    <label>
                        <input type="radio" name="paymentMethod" value="cod" required>
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv7vwS62wr8RbxPxZiaz98PXSazytTL0fZ_Q&s" alt="Cash on Delivery"><p>Cash on Delivary</p>
                    </label><br>
                </div>
                <button type="submit" class="submit-button">Proceed with Payment</button>
            </div>
        </form>

        <div class="popup hidden" id="popup">
            <img src="https://cdn-icons-png.freepik.com/256/11601/11601272.png?semt=ais_hybrid" alt="Thank You Image">
            <h2>Thank You</h2>
            <p>Your payment has been processed!</p>
            <button type="button" onclick="closePopup()">Ok</button>
        </div>

    </div>

    <script>
        let paymentForm = document.getElementById('paymentForm');
        let popup = document.getElementById('popup');

        function openPopup() {
            popup.classList.remove("hidden");
            popup.classList.add("open-popup");
        }

        function closePopup() {
            popup.classList.add("hidden");
            popup.classList.remove("open-popup");
        }

        paymentForm.addEventListener('submit', function(event) {
            event.preventDefault();
            let selectedMethod = document.querySelector('input[name="paymentMethod"]:checked');

            if (selectedMethod) {
            	 let totalAmount = Math.floor(Math.random() * 1000) + 1; // Generates a random number between 1 and 1000
                 let redirectUrl = `payment2.jsp?totalAmount=${totalAmount}`;
                openPopup();
                setTimeout(function() {
                    closePopup();
                    window.location.href = "paymentConfirmation.jsp"; 
                }, 2000); 
            } else {
                alert("Please select a payment method.");
            }
        });
    </script>
</body>
</html>