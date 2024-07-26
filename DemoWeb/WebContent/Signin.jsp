<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Signup</title>
      <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="signup.css">
  <style>
        .error-message {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
  <div class="container">
    <form class="signup-form" id="signup-form" action="SignupServlet" method="post">
      <div class="card">
        <div class="left-section">
          <video width="470" height="600" autoplay loop muted>
                        <source src="product-image/login.mp4" type="video/mp4">Your browser does not support the video tag.</video>
        </div>
        <div class="right-section">
          <div class="login-form">
            <h2>SIGNUP</h2>
            <c:if test="${not empty errorMessage}">
              <div class="error-message">${errorMessage}</div>
            </c:if>
            <div class="form-group">
              <label class="form-label" for="email">E-mail</label>
              <input class="form-input" type="email" id="email" name="email" placeholder="Enter E-mail" required>
              <div class="error-message" id="email-error"></div>
            </div>
            <div class="form-group">
              <label class="form-label" for="first-name">First name</label>
              <input class="form-input" type="text" id="first-name" name="first-name" placeholder="Enter your First name" required>
              <div class="error-message" id="first-name-error"></div>
            </div>
            <div class="form-group">
              <label class="form-label" for="last-name">Last name</label>
              <input class="form-input" type="text" id="last-name" name="last-name" placeholder="Enter your Last name" required>
              <div class="error-message" id="last-name-error"></div>
            </div>
            <div class="form-group">
              <label class="form-label" for="password">Password</label>
              <input class="form-input" type="password" id="password" name="password" placeholder="Enter Password" required>
              <div class="error-message" id="password-error"></div>
            </div>
            <div class="form-group">
              <label class="form-label" for="confpassword">Confirm Password</label>
              <input class="form-input" type="password" id="confpassword" name="confpassword" placeholder="Confirm Password" required>
              <div class="error-message" id="confpassword-error"></div>
            </div>
            <button class="form-button" type="submit">Signup</button>
          </div>
          <p class="terms">By clicking on Signup, I accept the <a href="#">Terms & Conditions</a> & <a href="#">Privacy Policy</a></p>
          <div class="or-line"><span>OR</span></div>
          <div class="google">
            <i>Don't have Account?</i>
            <a href="Login.jsp" class="loggoogle">
              <p>Login</p>
            </a>
          </div>
        </div>
      </div>
    </form>
  </div>
</body>
</html>
