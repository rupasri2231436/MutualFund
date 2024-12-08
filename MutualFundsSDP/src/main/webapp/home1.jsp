<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mutual Funds</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background-color: #fff;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px solid #ddd;
        }

        .container {
            width: 90%;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
           
        }

        nav ul {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            margin-right: 20px;
        }

        nav ul li a {
            text-decoration: none;
            color: #000;
            font-weight: bold;
        }

        .auth-buttons a {
            margin-left: 10px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }

        .sign-in {
            background-color: #eee;
            color: #000;
        }

        .sign-up {
            background-color: #d32f2f;
            color: #fff;
        }

        main {
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
            padding: 50px;
            flex-grow: 1;
            background: linear-gradient(to right, #fff, #f7f7f7);
        }

        .content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            margin-right: 190px;
        }

        .text-section {
            max-width: 50%;
            margin-left: 50px; /* Moved content to the right */
        }

        .text-section h1 {
            font-size: 3em;
            color: #b71c1c;
        }

        .text-section p {
            font-size: 1.2em;
            color: #555;
        }

        .search {
            margin-top: 50px;
        }

        .search input {
            padding: 10px;
            width: 200px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .search button {
            padding: 10px 20px;
            margin-left: 10px;
            background-color: #b71c1c;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .image-section {
            margin-right: 50px; /* Moved image to the left */
        }

        .image-section img {
            
            max-width: 100%;
            height: auto;
            width: 350px;
            margin-left: 150px;
            border: 5px solid #b71c1c; /* Added border */
            border-radius: 20px; /* Rounded corners */
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); /* Added shadow */
        }

        footer {
            background-color: #fff;
            padding: 10px;
            text-align: center;
            border-top: 2px solid #ddd;
        }

        .social-media {
            margin-top: 20px;
        }

        .social-media .icons i {
            font-size: 1.5em;
            margin-right: 10px;
            color: #b71c1c;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div class="logo">Logo</div>
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </nav>
            <div class="auth-buttons">
                <a href="index.jsp" class="sign-in">Sign In</a>
                <a href="signup.jsp" class="sign-up">Sign Up</a>
            </div>
        </div>
    </header>
    <main>
        <div class="content">
            <div class="image-section">
                <img src="templates/static/images/man.jpeg" alt="Character Illustration">
            </div>
            <div class="text-section">
                <h1>Mutual Funds</h1>
                <p>Rs. 1 Crore Life Cover @ less than Rs. 15 per day*</p>
                <p>Protect your family now!</p>
                <div class="search">
                    <input type="text" placeholder="Type here...">
                    <button>Know More</button>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div class="social-media">
            <p>Follow us on social media</p>
            <div class="icons">
                <i class="fa fa-facebook"></i>
                <i class="fa fa-twitter"></i>
                <i class="fa fa-instagram"></i>
            </div>
        </div>
    </footer>
</body>
</html>
