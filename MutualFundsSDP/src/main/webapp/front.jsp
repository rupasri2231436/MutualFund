<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f7f7f7;
        }

        .container {
            text-align: center;
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 400px;
            padding: 20px;
        }

        .container img {
            width: 100%;
            border-radius: 12px;
        }

        .title {
            font-size: 24px;
            font-weight: bold;
            margin-top: 20px;
            margin-bottom: 10px;
            color: #333;
        }

        .description {
            font-size: 16px;
            color: #666;
            margin-bottom: 20px;
        }

        .btn {
            background-color: #6A0DAD;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #5d0099;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="templates/static/images/start.jpeg" alt="Mutual Fund Image"> <!-- Replace with your image path -->
        <div class="title">MUTUAL FUNDS</div>
        <div class="description">
            Reap the Rewards of Wise Investments – modern approach to investing, making complex financial decisions
            easier for users by blending innovation.
        </div>
        <a href="home1.jsp" class="btn">Get Started</a>
    </div>
</body>
</html>
