<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Investments</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
        }
        header {
            background: #0066ff;
            color: #fff;
            padding: 20px 10%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        header .logo {
            font-size: 1.5em;
            font-weight: bold;
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
            color: #fff;
            font-weight: bold;
            transition: color 0.3s ease;
        }
        nav ul li a:hover {
            color: #f1c40f;
        }
        .investment-container {
            margin: 20px auto;
            width: 80%;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .investment-card {
            background-color: #f0f0f0;
            margin: 10px 0;
            padding: 10px;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .investment-name {
            font-size: 18px;
            color: #333;
        }
        .investment-actions {
            display: flex;
            gap: 10px;
        }
        .investment-actions button {
            padding: 10px 15px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .investment-actions button:hover {
            background-color: #0056b3;
        }
        .withdraw-btn {
            background-color: #dc3545;
        }
        .withdraw-btn:hover {
            background-color: #c82333;
        }
        footer {
            background: #333;
            color: #fff;
            padding: 20px 10%;
            text-align: center;
        }
        footer p {
            margin: 0;
        }
    </style>
    <script>
        function confirmWithdraw(investmentId) {
            if (confirm("Are you sure you want to withdraw your investment?")) {
                window.location.href = "withdraw.jsp?id=" + investmentId;
            }
        }
    </script>
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
                <li><a href="viewinvestment.jsp">View</a></li>
                <li><a href="userreport.jsp">View Reports</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </header>
    <div class="investment-container">
        <h2>All Investments</h2>
        <%
            String jdbcURL = "jdbc:mysql://localhost:3306/jfsd";
            String dbUser = "root";
            String dbPassword = "Rupa@2005";
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                
                // SQL query to fetch all investment records (no filtering by username)
                String sql = "SELECT * FROM investments";
                PreparedStatement statement = connection.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery();

                if (!resultSet.isBeforeFirst()) {
                    out.println("<p>No investments found.</p>");
                } else {
                    while (resultSet.next()) {
                        int investmentId = resultSet.getInt("id");
                        String fundName = resultSet.getString("fund_name");
        %>
                        <div class="investment-card">
                            <span class="investment-name"><%= fundName %></span>
                            <div class="investment-actions">
                                <button type="button" onclick="alert('Investment details: <%= fundName %>')">View Details</button>
                                <button type="button" class="withdraw-btn" onclick="confirmWithdraw(<%= investmentId %>)">Withdraw</button>
                            </div>
                        </div>
        <%
                    }
                }
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }
        %>
    </div>
    <footer>
        <p>&copy; 2024 Mutual Funds Platform. All rights reserved.</p>
    </footer>
</body>
</html>
