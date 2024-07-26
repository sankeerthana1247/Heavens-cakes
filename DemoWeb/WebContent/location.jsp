<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Location</title>
    <script>
        function updateLocationAndRedirect(cityName) {
            localStorage.setItem('selectedCity', cityName);
            window.location.href = 'home.jsp';
        }
    </script>
</head>
    <style>
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fae6f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
        }

        .header {
            background-color: #333;
            color: white;
            padding: 10px;
            width: 100%;
            text-align: center;
            position: fixed;
            top: 0;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: bold;
        }

        .navigation {
            display: flex;
            align-items: center;
        }

        .header-link {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            cursor: pointer;
            position: relative;
        }
        
        .location-dropdown {
            display: none;
            position: absolute;
            background-color: #444;
            top: 100%;
            left: 0;
            width: 100%;
            z-index: 1;
            padding: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        
        .location-dropdown a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 5px;
        }

        .location-dropdown a:hover {
            background-color: #555;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-content: center;
            max-height: 80vh; /* Maximum height of the container */
            overflow-y: auto; /* Enable vertical scrolling */
            margin-top: 70px; /* Add margin to push the container below the header */
        }

        .city {
            width: 150px;
            height: 150px;
            margin: 10px;
            background-color: rgb(242, 252, 253);
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
    <div class="container">
        <h2>POPULAR CITIES</h2>
        <div class="city" onclick="updateLocationAndRedirect('Bengaluru')">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/banglore.png" alt="Bengaluru">
            <p>Bengaluru</p>
        </div>
        <div class="city" onclick="updateLocationAndRedirect('Hyderabad')">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/hydrabaad.png" alt="Hyderabad">
            <p>Hyderabad</p>
        </div>
        <div class="city" onclick="updateLocationAndRedirect('Pune')">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/pune.png" alt="Pune">
            <p>Pune</p>
        </div>
        <div class="city" onclick="updateLocationAndRedirect('Delhi')">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/delhi.png" alt="Delhi">
            <p>Delhi</p>
        </div>
        <div class="city" onclick="updateLocationAndRedirect('Chennai')">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/chennai.png" alt="Chennai">
            <p>Chennai</p>
        </div>
        <div class="city" onclick="updateLocationAndRedirect('Mumbai')">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/mumbai.png" alt="Mumbai">
            <p>Mumbai</p>
        </div>
        <div class="city" onclick="updateLocationAndRedirect('Kolkata')">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/kolkata.png" alt="Kolkata">
            <p>Kolkata</p>
        </div>
        <div class="city" onclick="updateLocationAndRedirect('Lucknow')">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/lucknow.png" alt="Lucknow">
            <p>Lucknow</p>
        </div>
        <div class="city" onclick="updateLocationAndRedirect('Gurgaon')">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/gurgaon.png" alt="Gurgaon">
            <p>Gurgaon</p>
        </div>
        <div class="city" onclick="updateLocationAndRedirect('Ahmedabad')">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/ahmedabaad.png" alt="Ahmedabad">
            <p>Ahmedabad</p>
        </div>
        <div class="city" onclick="updateLocationAndRedirect('Patna')">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/patna.png" alt="Patna">
            <p>Patna</p>
        </div>
        <div class="city" onclick="updateLocationAndRedirect('Jaipur')">
            <img src="https://assets.winni.in/groot/2021/12/15/citypageicons/desktop/jaipur.png" alt="Jaipur">
            <p>Jaipur</p>
        </div>
    </div>

    <script>
    <script>
    function updateLocationAndRedirect(cityName) {
        localStorage.setItem('selectedCity', cityName);
        window.location.href = 'home.jsp';
    }
    </script>

    </script>
</body>
</html>