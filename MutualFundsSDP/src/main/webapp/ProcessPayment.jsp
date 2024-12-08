<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            text-align: center;
            padding: 50px;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            String fundName = request.getParameter("fundName");
            String amount = request.getParameter("amount");
            String username = (String) session.getAttribute("username"); // Retrieve username from session

            String jdbcURL = "jdbc:mysql://localhost:3306/jfsd";
            String dbUser = "root";
            String dbPassword = "Rupa@2005";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

                String sql = "INSERT INTO investments (fund_name, amount, username) VALUES (?, ?, ?)";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, fundName);
                statement.setString(2, amount);
                statement.setString(3, username);

                int rows = statement.executeUpdate();
                if (rows > 0) {
                    out.println("<h2>Payment Successful!</h2>");
                    out.println("<p>Thank you for investing in <strong>" + fundName + "</strong>.</p>");
                    out.println("<p>Amount Invested: ₹" + amount + "</p>");
                } else {
                    out.println("<h2>Payment Failed</h2>");
                    out.println("<p>Please try again.</p>");
                }

                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<h2>Error Processing Payment</h2>");
                out.println("<p>" + e.getMessage() + "</p>");
            }
        %>
    </div>
</body>
</html>
