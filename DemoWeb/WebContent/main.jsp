<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <title>Blurred Background Image</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            overflow: hidden;
        }

        .bg-image {
            /* The image used */
            background-image: url('https://pic.cakesdecor.com/c700/lyeimqxek4zk0nwppmfc.jpg');

            /* Add the blur effect */
            filter: blur(8px);
            -webkit-filter: blur(8px);

            /* Full height */
            height: 100%; 

            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;

            /* Position the background image */
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: -1;
        }

        .clickable-area {
            /* Set the position of the clickable area */
            position: relative;
            height: 100%;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
        }

        .order-now-button {
            padding: 15px 30px;
            font-size: 18px;
            color: white;
            background-color: #ff5733;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        .order-now-button:hover {
            background-color: #ff2e00;
        }
    </style>
</head>
<body>
    <div class="bg-image"></div>
    <div class="clickable-area">
        <a href="Signin.jsp" class="order-now-button">Order Now</a>
    </div>

</body>
</html>