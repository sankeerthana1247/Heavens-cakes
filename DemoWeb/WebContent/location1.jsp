<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Popular Cities</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-content: center;
            max-height: 80vh; /* Maximum height of the container */
            overflow-y: auto; /* Enable vertical scrolling */
          }
        .city {
            width: 150px;
            height: 150px;
            margin: 10px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 10px;
            transition: transform 0.3s ease;
        }

        .city img {
            width: 80%;
            height: auto;
            margin-bottom: 10px;
        }

        .city:hover {
            transform: translateY(-10px);
        }

        h2 {
            text-align: center;
            margin-top: 20px;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>POPULAR CITIES</h2>
        <div class="city">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/banglore.png" alt="Bengaluru">
            <p>Bengaluru</p>
        </div>
        <div class="city">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/hydrabaad.png" alt="Hyderabad">
            <p>Hyderabad</p>
        </div>
        <div class="city">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/pune.png" alt="Pune">
            <p>Pune</p>
        </div>
        <div class="city">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/delhi.png" alt="Delhi">
            <p>Delhi</p>
        </div>
        <div class="city">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/chennai.png" alt="Chennai">
            <p>Chennai</p>
        </div>
        <div class="city">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/mumbai.png" alt="Mumbai">
            <p>Mumbai</p>
        </div>
        <div class="city">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/kolkata.png" alt="Kolkata">
            <p>Kolkata</p>
        </div>
        <div class="city">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/lucknow.png" alt="Lucknow">
            <p>Lucknow</p>
        </div>
        <div class="city">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/gurgaon.png" alt="Gurgaon">
            <p>Gurgaon</p>
        </div>
        <div class="city">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/ahmedabaad.png" alt="Ahmedabad">
            <p>Ahmedabad</p>
        </div>
        <div class="city">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/patna.png" alt="Patna">
            <p>Patna</p>
        </div>
        <div class="city">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/jaipur.png" alt="Jaipur">
            <p>Jaipur</p>
        </div>
    </div>

</body>
</html>