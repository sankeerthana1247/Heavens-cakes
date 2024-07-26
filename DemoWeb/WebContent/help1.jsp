<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Help</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="help2.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
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
            background-color: rgba(0,0,0,0.4);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 600px;
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

        .help {
            padding: 20px;
            margin-top: 60px; /* Adjusted margin top to move content down */
        }

        .center-header {
            text-align: center;
            margin-bottom: 20px; /* Added margin bottom for spacing */
        }

        .help-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 80px;
        }

        .faq-item {
            text-align: center;
            cursor: pointer;
        }

        .faq-content img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
<jsp:include page="Header.jsp" />

<div class="help">
    <h2 class="center-header">Frequently Asked Questions</h2>
    <div class="help-grid">
        <div class="faq-item" onclick="openModal('help2.jsp')">
            <div class="faq-content">
                <img src="https://assets.winni.in/groot/2023/02/03/helppage/desktop/need-help.png" alt="Need help purchasing at Winni?">
            </div>
            <p>Need help purchasing at Winni?</p>
        </div>
        <div class="faq-item" onclick="openModal('help2.jsp')">
            <div class="faq-content">
                <img src="https://assets.winni.in/groot/2023/02/03/helppage/desktop/expected-delivery-date.png" alt="Expected Delivery Date of Courier Products">
            </div>
            <p>Expected Delivery Date of Courier Products</p>
        </div>
        <div class="faq-item" onclick="openModal('help2.jsp')">
            <div class="faq-content">
                <img src="https://assets.winni.in/groot/2023/02/03/helppage/desktop/special-discount.png" alt="Special Discounts and Deals at Winni">
            </div>
            <p>Special Discounts and Deals at Winni</p>
        </div>
        <div class="faq-item" onclick="openModal('help2.jsp')">
            <div class="faq-content">
                <img src="https://assets.winni.in/groot/2023/02/03/helppage/desktop/cancellation-and-refund.png" alt="Winni Cancellation and Refund Policy">
            </div>
            <p>Winni Cancellation and Refund Policy</p>
        </div>
        <div class="faq-item" onclick="openModal('help2.jsp')">
            <div class="faq-content">
                <img src="https://assets.winni.in/groot/2023/02/03/helppage/desktop/customized-orders.png" alt="Customized Orders">
            </div>
            <p>Customized Orders</p>
        </div>
        <div class="faq-item" onclick="openModal('help2.jsp')">
            <div class="faq-content">
                <img src="https://assets.winni.in/groot/2023/02/03/helppage/desktop/inquiries-about-delivery-charges.png" alt="Managing my Orders">
            </div>
            <p>Managing my Orders</p>
        </div>
        <div class="faq-item" onclick="openModal('help2.jsp')">
            <div class="faq-content">
                <img src="https://assets.winni.in/groot/2023/02/03/helppage/desktop/collaborate-with-us.png" alt="Inquiries about charges">
            </div>
            <p>Inquiries about charges</p>
        </div>
        <div class="faq-item" onclick="openModal('help2.jsp')">
            <div class="faq-content">
                <img src="https://assets.winni.in/groot/2023/02/03/helppage/desktop/managing-my-orders.png" alt="Collaborate with us">
            </div>
            <p>Collaborate with us</p>
        </div>
    </div>
</div>

<!-- Popup Modal -->
<div id="helpPopup" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <div id="modalBody"></div>
    </div>
</div>

<script>
    function openModal(page) {
        fetch(page)
            .then(response => response.text())
            .then(data => {
                document.getElementById('modalBody').innerHTML = data;
                document.getElementById('helpPopup').style.display = 'block';
            })
            .catch(error => console.error('Error loading the page:', error));
    }

    function closeModal() {
        document.getElementById('helpPopup').style.display = 'none';
    }

    window.onclick = function(event) {
        const modal = document.getElementById('helpPopup');
        if (event.target == modal) {
            modal.style.display = 'none';
        }
    }
</script>

</body>
</html>
