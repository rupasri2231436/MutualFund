<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Withdraw Investment</title>
</head>
<body>
    <%
        String investmentId = request.getParameter("id");

        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/jfsd";
        String dbUser = "root";
        String dbPassword = "Rupa@2005";

        try {
            // Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Prepare the SQL query to delete the investment
            String sql = "DELETE FROM investments WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, Integer.parseInt(investmentId));

            // Execute the query
            int rows = statement.executeUpdate();

            if (rows > 0) {
                out.println("<script>alert('Investment withdrawn successfully!'); window.location.href = 'viewinvestment.jsp';</script>");
            } else {
                out.println("<script>alert('Error withdrawing investment.'); window.location.href = 'viewinvestment.jsp';</script>");
            }

            // Close the connection
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error withdrawing investment.'); window.location.href = 'viewinvestment.jsp';</script>");
        }
    %>
</body>
</html>
