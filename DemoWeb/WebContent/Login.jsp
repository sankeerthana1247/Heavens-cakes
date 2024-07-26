<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="login.css">
    <style>
        .error-message {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <form class="login-form" id="login-form" action="LoginServlet" method="post">
            <div class="card">
                <div class="left-section">
                    <video width="470" height="600" autoplay loop muted>
                        <source src="product-image/login.mp4" type="video/mp4">Your browser does not support the video tag.</video>
                </div>
                <div class="right-section">
                    <div class="login-form">
                        <h2>LOGIN</h2>
                        <c:if test="${not empty errorMessage}">
                            <div class="error-message">${errorMessage}</div>
                        </c:if>
                        <div class="form-group">
                            <label class="form-label" for="email">E-mail</label>
                            <input class="form-input" type="email" id="email" name="email" placeholder="Enter E-mail" required>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="password">Password</label>
                            <input class="form-input" type="password" id="password" name="password" placeholder="Enter Password" required>
                        </div>
                        <button class="form-button" type="submit">Login</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>