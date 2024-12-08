<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services</title>
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
    <!-- Navbar -->
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

    <!-- Services Section -->
    <section style="padding: 50px 10%; text-align: center;">
        <h2 style="font-size: 2.5em; color: #0044cc; margin-bottom: 30px;">Services</h2>
        <div style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 20px;">
            <!-- Money Market Funds Card -->
            <div style="width: 23%; background: #f9f9f9; padding: 20px; border-radius: 10px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); text-align: center;">
                <img src="<%= request.getContextPath() %>/templates/static/images/moneymarket.jpeg" alt="Money market funds" style="width: 100%; border-radius: 10px;">
                <h3 style="font-size: 1.5em; margin-top: 15px;">Money market funds</h3>
                <p style="font-size: 0.9em; color: #555;">Your funds can be invested in short-term fixed income securities such as government bonds, treasury bills, bankers’ acceptances, commercial paper, and certificates of deposit.</p>
                 <a href="https://www.etmoney.com/mutual-funds/debt/money-market/58" target="_blank" style="margin-top: 10px; padding: 10px 20px; background: #0044cc; color: #fff; border: none; border-radius: 5px; text-decoration: none; display: inline-block;">Enquire Now</a>
            </div>

            <!-- Additional Cards... -->
             <!-- Equity Funds Card -->
            <div style="width: 23%; background: #f9f9f9; padding: 20px; border-radius: 10px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); text-align: center;">
                <img src="<%= request.getContextPath() %>/templates/static/images/equityfunds.jpeg" alt="Equity funds" style="width: 100%; border-radius: 10px;">
                <h3 style="font-size: 1.5em; margin-top: 15px;">Equity funds</h3>
                <p style="font-size: 0.9em; color: #555;">Your funds aim to grow faster than money market or fixed income funds, but with a higher risk of potential losses. We offer equity funds at the best value.</p>
                <button style="margin-top: 10px; padding: 10px 20px; background: #0044cc; color: #fff; border: none; border-radius: 5px; cursor: pointer;">Enquire Now</button>
            </div>

            <!-- Fixed Income Funds Card -->
            <div style="width: 23%; background: #f9f9f9; padding: 20px; border-radius: 10px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); text-align: center;">
                <img src="<%= request.getContextPath() %>/templates/static/images/fixedincome.jpeg" alt="Fixed income funds" style="width: 100%; border-radius: 10px;">
                <h3 style="font-size: 1.5em; margin-top: 15px;">Fixed income funds</h3>
                <p style="font-size: 0.9em; color: #555;">You can invest for a fixed rate of return like government bonds, investment-grade corporate bonds, and high-yield corporate bonds at the best rates per your preference.</p>
                <button style="margin-top: 10px; padding: 10px 20px; background: #0044cc; color: #fff; border: none; border-radius: 5px; cursor: pointer;">Enquire Now</button>
            </div>

            <!-- Balanced Funds Card -->
            <div style="width: 23%; background: #f9f9f9; padding: 20px; border-radius: 10px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); text-align: center;">
                <img src="<%= request.getContextPath() %>/templates/static/images/balanced funds.jpeg" alt="Balanced funds" style="width: 100%; border-radius: 10px;">
                <h3 style="font-size: 1.5em; margin-top: 15px;">Balanced funds</h3>
                <p style="font-size: 0.9em; color: #555;">Our goal is to achieve higher returns while managing risks through a mixture of equities and fixed income securities.</p>
                <button style="margin-top: 10px; padding: 10px 20px; background: #0044cc; color: #fff; border: none; border-radius: 5px; cursor: pointer;">Enquire Now</button>
            </div>
            <div style="width: 23%; background: #f9f9f9; padding: 20px; border-radius: 10px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); text-align: center;">
                <img src="<%= request.getContextPath() %>/templates/static/images/hybrid.jpeg" alt="Equity funds" style="width: 100%; border-radius: 10px;">
                <h3 style="font-size: 1.5em; margin-top: 15px;">Hybrid funds</h3>
                <p style="font-size: 0.9em; color: #555;">Hybrid funds predominantly invest in two asset classes, equity, and debt. Equity as an asset class has the potential for generating good returns.</p>
                <button style="margin-top: 10px; padding: 10px 20px; background: #0044cc; color: #fff; border: none; border-radius: 5px; cursor: pointer;">Enquire Now</button>
            </div>
            <div style="width: 23%; background: #f9f9f9; padding: 20px; border-radius: 10px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); text-align: center;">
                <img src="<%= request.getContextPath() %>/templates/static/images/index.jpeg" alt="Equity funds" style="width: 100%; border-radius: 10px;">
                <h3 style="font-size: 1.5em; margin-top: 15px;">Index funds</h3>
                <p style="font-size: 0.9em; color: #555;">Index Mutual Fund invests in stocks that imitate a stock market index like the NSE Nifty, BSE Sensex, etc.</p>
                <button style="margin-top: 10px; padding: 10px 20px; background: #0044cc; color: #fff; border: none; border-radius: 5px; cursor: pointer;">Enquire Now</button>
            </div>
            <div style="width: 23%; background: #f9f9f9; padding: 20px; border-radius: 10px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); text-align: center;">
                <img src="<%= request.getContextPath() %>/templates/static/images/sector.jpg" alt="Equity funds" style="width: 100%; border-radius: 10px;">
                <h3 style="font-size: 1.5em; margin-top: 15px;">Sector funds</h3>
                <p style="font-size: 0.9em; color: #555;">Sector Mutual Funds are equity schemes that invest in a specific sector of the economy. These sectors can be utilities, energy, infrastructure.</p>
                <button style="margin-top: 10px; padding: 10px 20px; background: #0044cc; color: #fff; border: none; border-radius: 5px; cursor: pointer;">Enquire Now</button>
            </div>
            <div style="width: 23%; background: #f9f9f9; padding: 20px; border-radius: 10px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); text-align: center;">
                <img src="<%= request.getContextPath() %>/templates/static/images/elss.jpeg" alt="Equity funds" style="width: 100%; border-radius: 10px;">
                <h3 style="font-size: 1.5em; margin-top: 15px;">ELSS funds</h3>
                <p style="font-size: 0.9em; color: #555;">ELSS funds are equity funds that invest a major portion of their corpus into equity or equity-related instruments.</p>
                <button style="margin-top: 10px; padding: 10px 20px; background: #0044cc; color: #fff; border: none; border-radius: 5px; cursor: pointer;">Enquire Now</button>
            </div>
             <div style="width: 23%; background: #f9f9f9; padding: 20px; border-radius: 10px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); text-align: center;">
                <img src="<%= request.getContextPath() %>/templates/static/images/pension.jpeg" alt="Equity funds" style="width: 100%; border-radius: 10px;">
                <h3 style="font-size: 1.5em; margin-top: 15px;">Pension funds</h3>
                <p style="font-size: 0.9em; color: #555;">As per the provisions of the PFRDA Act, Rules and Regulations, the Pension Funds are responsible for: investing the contributions received.</p>
                <button style="margin-top: 10px; padding: 10px 20px; background: #0044cc; color: #fff; border: none; border-radius: 5px; cursor: pointer;">Enquire Now</button>
            </div>
        </div>
    </section>
    <footer>
        <p>&copy; 2024 Mutual Funds Platform. All rights reserved.</p>
    </footer>
</body>
</html>
