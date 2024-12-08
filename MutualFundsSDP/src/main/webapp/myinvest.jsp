<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Investments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .investment-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        .investment-card {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            margin: 10px 0;
            padding: 15px;
            width: 80%;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .investment-logo {
            width: 50px;
            height: 50px;
            margin-right: 15px;
        }

        .investment-details {
            flex-grow: 2;
        }

        .investment-details h3 {
            margin: 0;
            font-size: 18px;
            color: #333;
        }

        .actions {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
        }

        .view-btn {
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
            margin-bottom: 5px;
        }

        .view-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">Mutual Funds Platform</div>
        <nav>
            <ul>
                <li><a href="invest.jsp">Learn to Invest</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="services.jsp">Services</a></li>
                <li><a href="investform.jsp">Plan Investment</a></li>
                <li><a href="stocks.jsp">Stocks</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
        </nav>
        <div class="auth-buttons">
            <a href="home1.jsp" class="logout" onclick="return confirm('Are you sure you want to logout?');">Logout</a>
        </div>
    </header>

    <div class="investment-container">
        <h2>My Investments</h2>
        <% 
            // Database connection details
            String jdbcURL = "jdbc:mysql://localhost:3306/jfsd";
            String dbUser = "root";
            String dbPassword = "Rupa@2005";

            try {
                // Connect to the database
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

                // Retrieve investments from the database
                String sql = "SELECT fund_name FROM investments";
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery(sql);

                // Check if there are investments
                while (resultSet.next()) {
                    String fundName = resultSet.getString("fund_name");
                    // Display each investment in a card format
        %>
                    <div class="investment-card">
                        <img src="<%= request.getContextPath() %>/templates/static/images/logo-placeholder.png" alt="Fund Logo" class="investment-logo">
                        <div class="investment-details">
                            <h3><%= fundName %></h3>
                        </div>
                        <div class="actions">
                            <a href="viewInvestmentDetails.jsp?fundName=<%= fundName %>" class="view-btn">View Details</a>
                        </div>
                    </div>
        <%
                }
                
                // Close the database connection
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </div>
</body>
</html>
