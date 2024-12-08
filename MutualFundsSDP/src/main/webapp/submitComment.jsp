<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Comment Submitted</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            text-align: center;
        }
        .container {
            margin-top: 50px;
        }
        .message {
            font-size: 24px;
            color: #4CAF50;
            font-weight: bold;
        }
        .details {
            margin-top: 20px;
            font-size: 18px;
            color: #555;
        }
        a {
            margin-top: 30px;
            display: inline-block;
            padding: 10px 20px;
            background-color: #0066ff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background-color: #0056cc;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">Thank you for your feedback!</div>
        <div class="details">
            <p>Username: <%= request.getParameter("username") %></p>
            <p>Rating: <%= request.getParameter("rating") %></p>
            <p>Comment: <%= request.getParameter("comment") %></p>
        </div>
        <a href="contact.jsp">Go Back to Contact Page</a>
    </div>
</body>
</html>
