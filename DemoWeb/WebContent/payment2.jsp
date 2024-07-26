<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Example</title>
    <link rel="stylesheet" href="payment2.css">
    <!-- Font Awesome for icons (you can adjust the link as per your setup) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        .error {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="container" id="formContainer">
        <div class="left-section">
            <h1>Sweet Payments for Sweet Treats!</h1>
            <div><img src="product-image/payment.jpg" alt="Payment Image" class="payment-image"></div>
        </div>
        <div class="right-section">
            <form id="queryForm">
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" maxlength="10" title="Please enter a valid 10-digit phone number" required>
                    <span class="error" id="phoneError"></span>
                </div>
                <div class="form-group">
                    <label for="address">Recipient Address</label>
                    <textarea id="address" name="address" required></textarea>
                    <span class="error" id="addressError"></span>
                </div>
                <div class="form-group">
                    <label for="landmark">Landmark (optional)</label>
                    <input type="text" id="landmark" name="landmark">
                </div>
                <div class="form-group">
                    <label for="pincode">Pin Code</label>
                    <input type="text" id="pincode" name="pincode" pattern="[0-9]{6}" maxlength="6" title="Please enter a valid 6-digit pin code" required>
                    <span class="error" id="pincodeError"></span>
                </div>
                <div class="form-group">
                    <label for="city">City</label>
                    <input type="text" id="city" name="city" required>
                    <span class="error" id="cityError"></span>
                </div>
                <div class="form-group">
                    <label for="recipientPhone">Recipient Mobile Number</label>
                    <input type="tel" id="recipientPhone" name="recipientPhone" pattern="[0-9]{10}" maxlength="10" title="Please enter a valid 10-digit phone number" required>
                    <span class="error" id="recipientPhoneError"></span>
                </div>
                <div class="form-group">
                    <label for="alternatePhone">Alternate Mobile Number (optional)</label>
                    <input type="tel" id="alternatePhone" name="alternatePhone" pattern="[0-9]{10}" maxlength="10" title="Please enter a valid 10-digit phone number">
                    <span class="error" id="alternatePhoneError"></span>
                </div>
                <button type="submit" class="submit-button" id="submitButton">Proceed With Payment</button>
            </form>
        </div>
    </div>

    <!-- Popup Modal -->
    <div id="popup" class="popup">
        <div class="popup-content">
            <i class="fas fa-check-circle"></i> <!-- Font Awesome icon for check mark -->
            <center>
                <h2>Form Submitted Successfully!</h2>
            </center>
        </div>
    </div>

    <script>
        // Function to show the popup
        function showPopup() {
            var popup = document.getElementById('popup');
            popup.classList.add('open-popup');

            // Redirect to pay.jsp after 2 seconds
            setTimeout(function() {
                var formData = new FormData(document.getElementById('queryForm'));
                var queryString = new URLSearchParams(formData).toString();
                window.location.href = 'pay.jsp?' + queryString;
            }, 2000); // 2 seconds delay
        }

        // Function to validate form inputs
        function validateForm() {
            var isValid = true;

            // Phone number validation
            var phone = document.getElementById('phone');
            var phoneError = document.getElementById('phoneError');
            if (!phone.value.match(/^[0-9]{10}$/)) {
                if (phone.value.match(/[^0-9]/)) {
                    phoneError.textContent = "Characters are not allowed in the phone number";
                } else if (phone.value.length > 10) {
                    phoneError.textContent = "Phone number is valid up to 10 digits, more than 10 are not allowed";
                } else {
                    phoneError.textContent = "Please enter a valid 10-digit phone number";
                }
                isValid = false;
            } else {
                phoneError.textContent = "";
            }

            // Address validation
            var address = document.getElementById('address');
            var addressError = document.getElementById('addressError');
            if (address.value.trim() === "") {
                addressError.textContent = "Address is required";
                isValid = false;
            } else {
                addressError.textContent = "";
            }

            // Pin code validation
            var pincode = document.getElementById('pincode');
            var pincodeError = document.getElementById('pincodeError');
            if (!pincode.value.match(/^[0-9]{6}$/)) {
                if (pincode.value.match(/[^0-9]/)) {
                    pincodeError.textContent = "Special characters are not allowed in the pin code";
                } else if (pincode.value.length > 6) {
                    pincodeError.textContent = "More than 6 digits are not allowed";
                } else {
                    pincodeError.textContent = "Please enter a valid 6-digit pin code";
                }
                isValid = false;
            } else {
                pincodeError.textContent = "";
            }

            // City validation
            var city = document.getElementById('city');
            var cityError = document.getElementById('cityError');
            if (city.value.trim() === "") {
                cityError.textContent = "City is required";
                isValid = false;
            } else {
                cityError.textContent = "";
            }

            // Recipient phone number validation
            var recipientPhone = document.getElementById('recipientPhone');
            var recipientPhoneError = document.getElementById('recipientPhoneError');
            if (!recipientPhone.value.match(/^[0-9]{10}$/)) {
                if (recipientPhone.value.match(/[^0-9]/)) {
                    recipientPhoneError.textContent = "Characters are not allowed in the phone number";
                } else if (recipientPhone.value.length > 10) {
                    recipientPhoneError.textContent = "Phone number is valid up to 10 digits, more than 10 are not allowed";
                } else {
                    recipientPhoneError.textContent = "Please enter a valid 10-digit phone number";
                }
                isValid = false;
            } else {
                recipientPhoneError.textContent = "";
            }

            // Alternate phone number validation
            var alternatePhone = document.getElementById('alternatePhone');
            var alternatePhoneError = document.getElementById('alternatePhoneError');
            if (alternatePhone.value && !alternatePhone.value.match(/^[0-9]{10}$/)) {
                if (alternatePhone.value.match(/[^0-9]/)) {
                    alternatePhoneError.textContent = "Characters are not allowed in the phone number";
                } else if (alternatePhone.value.length > 10) {
                    alternatePhoneError.textContent = "Phone number is valid up to 10 digits, more than 10 are not allowed";
                } else {
                    alternatePhoneError.textContent = "Please enter a valid 10-digit phone number";
                }
                isValid = false;
            } else {
                alternatePhoneError.textContent = "";
            }

            return isValid;
        }

        // Attach event listener to the form submit
        document.getElementById('queryForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent default form submission
            if (validateForm()) {
                showPopup(); // Call function to show popup
            }
        });

        // Attach input event listener to phone and pincode fields to prevent more than allowed characters and display error messages
        document.querySelectorAll('input[type="tel"], input[type="text"]').forEach(function(input) {
            input.addEventListener('input', function() {
                var errorSpan;
                if (input.id === 'phone' || input.id === 'recipientPhone' || input.id === 'alternatePhone') {
                    errorSpan = document.getElementById(input.id + 'Error');
                    if (input.value.match(/[^0-9]/)) {
                        errorSpan.textContent = "Characters are not allowed in the phone number";
                    } else if (input.value.length > 10) {
                        errorSpan.textContent = "Phone number is valid up to 10 digits, more than 10 are not allowed";
                    } else {
                        errorSpan.textContent = "";
                    }
                    input.value = input.value.replace(/[^0-9]/g, '').slice(0, 10);
                } else if (input.id === 'pincode') {
                    errorSpan = document.getElementById(input.id + 'Error');
                    if (input.value.match(/[^0-9]/)) {
                        errorSpan.textContent = "Special characters are not allowed in the pin code";
                    } else if (input.value.length > 6) {
                        errorSpan.textContent = "More than 6 digits are not allowed";
                    } else {
                        errorSpan.textContent = "";
                    }
                    input.value = input.value.replace(/[^0-9]/g, '').slice(0, 6);
                } else {
                    errorSpan = document.getElementById(input.id + 'Error');
                    if (input.value.trim() === "") {
                        errorSpan.textContent = input.placeholder + " is required";
                    } else {
                        errorSpan.textContent = "";
                    }
                }
            });
        });

    </script>
</body>
</html>
