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
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .fund-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        .fund-card {
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

        .fund-logo {
            width: 50px;
            height: 50px;
            margin-right: 15px;
        }

        .fund-details {
            flex-grow: 2;
        }

        .fund-details h3 {
            margin: 0;
            font-size: 18px;
            color: #333;
        }

        .rank {
            color: #007BFF;
            font-weight: bold;
        }

        .lock {
            color: #777;
        }

        .fund-size {
            color: #555;
            font-weight: bold;
        }

        .return {
            color: #28a745;
            font-weight: bold;
        }

        .actions {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
        }

        .invest-btn {
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
            margin-bottom: 5px;
        }

        .invest-btn:hover {
            background-color: #218838;
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

        .auth-buttons {
            display: flex;
            gap: 10px;
        }

        .auth-buttons .logout {
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 5px;
            font-size: 0.9em;
            font-weight: bold;
            background-color: #f1c40f;
            color: #333;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .auth-buttons .logout:hover {
            background-color: #ffd700;
            color: #333;
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
</head>
<body>
    <!-- Navbar Section -->
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
        <div class="auth-buttons">
            <a href="home1.jsp" class="logout" onclick="return confirm('Are you sure you want to logout?');">Logout</a>
        </div>
    </header>

    <!-- Fund Investment Cards -->
    <div class="fund-container">
        <!-- First Fund Card -->
        <div class="fund-card">
            <img src="tata-logo.png" alt="Tata Logo" class="fund-logo">
            <div class="fund-details">
                <h3>Tata Money Market Fund</h3>
                <p>ETM Rank: <span class="rank">Genius only</span> <span class="lock">🔒</span></p>
                <p>Fund Size: <span class="fund-size">₹27,483 Crs</span></p>
                 <p>Amount to
                 
                 
                  be invested: <span class="amount">₹5,834</span></p>
                <p>Return (p.a): <span class="return">+ 6.68%</span></p>
            </div>
            <div class="actions">
                <!-- Form for Invest Button -->
                <form method="POST" action="PaymentPage.jsp">
                    <input type="hidden" name="fundName" value="Tata Money Market Fund">
                    <button type="submit" class="invest-btn">Invest</button>
                </form>
            </div>
        </div>

        <!-- Duplicate Fund Card -->
        <div class="fund-card">
            <img src="aditya-birla-logo.png" alt="Aditya Birla Logo" class="fund-logo">
            <div class="fund-details">
                <h3>Aditya Birla Sun Life Mo
                
                ney Manager Fund</h3>
                <p>ETM Rank: <span class="rank">Genius only</span> <span class="lock">🔒</span></p>
                <p>Fund Size: <span class="fund-size">₹25,834 Crs</span></p>
                <p>Amount to be invested: <span class="amount">₹5,834</span></p>
                <p>Return (p.a): <span class="return">+ 6.59%</span></p>
            </div>
            <div class="actions">
                <form method="POST" action="PaymentPage.jsp">
                    <input type="hidden" name="fundName" value="Aditya Birla Sun Life Money Manager Fund">
                    <button type="submit" class="invest-btn">Invest</button>
                </form>
            </div>
        </div>

        <div class="fund-card">
            <img src="aditya-birla-logo.png" alt="Aditya Birla Logo" class="fund-logo">
            <div class="fund-details">
                <h3>Axis Money Market Fund</h3>
                <p>ETM Rank: <span class="rank">Genius only</span> <span class="lock">🔒</span></p>
                <p>Fund Size: <span class="fund-size">₹15,834 Crs</span></p>
                 <p>Amount to be invested: <span class="amount">₹5,834</span></p>
                <p>Return (p.a): <span class="return">+ 6.49%</span></p>
            </div>
            <div class="actions">
                <form method="POST" action="PaymentPage.jsp">
                    <input type="hidden" name="fundName" value="Axis Money Market Fund">
                    <button type="submit" class="invest-btn">Invest</button>
                </form>
            </div>
        </div>

        <!-- More Fund Cards can follow similarly -->
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Mutual Funds Platform. All rights reserved.</p>
    </footer>
</body>
</html>
