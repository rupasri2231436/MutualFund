<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: url('') no-repeat;
            background-size: cover;
            background-position: center;
        }
        .wrapper {
            width: 420px;
            background: rgba(255, 255, 255, 0.8);
            border: 1px solid #000;
            box-shadow: 0 0 10px rgba(0, 0, 0, .2);
            color: #000;
            padding: 40px 50px;
            border-radius: 20px;
        }
        .wrapper h1 {
            font-size: 40px;
            text-align: center;
            color: #000;
        }
        .input-box {
            position: relative;
            width: 100%;
            height: 60px;
            margin: 30px 0;
        }
        .input-box input {
            width: 100%;
            height: 100%;
            background: transparent;
            font-size: 18px;
            color: #000;
            padding: 20px 50px 20px 20px;
            border: 1px solid #000;
            outline: none;
            border-radius: 40px;
        }
        .input-box input::placeholder {
            color: #000;
        }
        .input-box i {
            position: absolute;
            right: 20px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 24px;
            color: #000;
        }
        .btn {
            width: 100%;
            height: 50px;
            background: #000;
            border: none;
            outline: none;
            border-radius: 40px;
            box-shadow: 0 0 10px rgba(0, 0, 0, .1);
            cursor: pointer;
            color: #fff;
            font-size: 18px;
            font-weight: 600;
        }
        .btn:hover {
            background: rgba(0, 0, 0, .8);
            color: #fff;
        }
        .register-link {
            margin-top: 20px;
            text-align: center;
        }
        .register-link a {
            color: #000;
            text-decoration: none;
            font-weight: 600;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <h1>Login</h1>
        <div class="input-box">
            <input type="text" placeholder="Username" id="un"> <i class='bx bxs-user'></i>
        </div>
        <div class="input-box">
            <input type="password" placeholder="Password" id="pw"> <i class='bx bxs-lock-alt'></i>
        </div>
        <button onclick="login()" class="btn">Login</button>
        <div class="register-link">
            <p>Don't have an account? <a href="/signup.jsp">Register</a></p>
        </div>
    </div>
    <script>
        function login() {
            var username = document.getElementById("un").value;
            var password = document.getElementById("pw").value;

            // Check if the credentials are for admin
            if (username === "admin" && password === "rupa") {
                window.location.href = "/admin.jsp"; // Admin dashboard
                return;
            }

            // Prepare user data
            var data = JSON.stringify({ username: username, password: password });
            var url = "http://localhost:8080/user/validate";

            // Call API for user authentication
            callApi("POST", url, data, function(response) {
                if (response === "Authorized User") {
                    sessionStorage.setItem("username", username);
                    window.location.href = "/home.jsp"; // User dashboard
                } else {
                    alert("Invalid username or password!");
                    window.location.href = "/index.jsp"; // Stay on login page
                }
            });
        }

        function callApi(method, url, data, callback) {
            fetch(url, {
                method: method,
                headers: { 'Content-Type': 'application/json' },
                body: data
            })
            .then(response => response.text())
            .then(callback)
            .catch(error => alert("Error: " + error));
        }
    </script>
</body>
</html>
