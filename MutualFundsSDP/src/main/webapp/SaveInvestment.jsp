<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Investment Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            text-align: center;
            margin-top: 100px;
        }

        h2 {
            color: #333;
        }

        .success {
            color: #28a745;
        }

        .error {
            color: #dc3545;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            // Database connection parameters
            String dbURL = "jdbc:mysql://localhost:3306/jfsd";
            String dbUser = "root";
            String dbPassword = "Rupa@2005";

            // Variables to capture inputs
            String fundName = request.getParameter("fundName");
            String username = "demo_user"; // Replace with dynamic session value if implemented

            Connection con = null;
            PreparedStatement ps = null;

            try {
                // Load the JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish a connection
                con = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                // SQL query to insert investment data
                String query = "INSERT INTO investments (fund_name, username) VALUES (?, ?)";
                ps = con.prepareStatement(query);
                ps.setString(1, fundName);
                ps.setString(2, username);
               
                // Execute the query
                int result = ps.executeUpdate();

                // Display success or failure message
                if (result > 0) {
        %>
                    <h2 class="success">Investment successful!</h2>
                    <p>You have invested in <strong><%= fundName %></strong>.</p>
        <%
                } else {
        %>
                    <h2 class="error">Investment failed!</h2>
                    <p>Something went wrong. Please try again.</p>
        <%
                }
            } catch (Exception e) {
        %>
                <h2 class="error">Error occurred!</h2>
                <p><%= e.getMessage() %></p>
        <%
            } finally {
                try {
                    if (ps != null) ps.close();
                    if (con != null) con.close();
                } catch (SQLException e) {
                    out.println("<p>Error closing connection: " + e.getMessage() + "</p>");
                }
            }
        %>
        <a href="stocks.jsp">Go Back to Home</a>
    </div>
</body>
</html>
