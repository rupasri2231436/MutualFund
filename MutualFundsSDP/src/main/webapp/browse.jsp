<%@ page contentType="text/html;charset=UTF-8" language="java" %>  
<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>Mutual Fund Finder</title>  
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        nav {
            background: #ffffff;
            display: flex;
            align-items: center;
            padding: 10px 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        nav .logo {
            margin-right: auto;
        }
        nav .logo img {
            height: 40px;
        }
        nav ul {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }
        nav ul li {
            margin: 0 15px;
        }
        nav ul li a {
            text-decoration: none;
            color: #0072bb;
            padding: 5px 10px;
        }
        nav .search-container {
            margin-left: auto;
            display: flex;
            align-items: center;
        }
        nav .search-container input {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        nav .search-container button {
            padding: 5px 10px;
            margin-left: 5px;
            background: #0072bb;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        nav .search-container button:hover {
            background: #005f8a;
        }
    </style>
</head>  
<body>  

    <!-- Navbar -->
    <nav>  
        <div class="logo">  
            <img src="templates/static/images/mutualfund.jpg" alt="SBI Mutual Fund Logo">  
        </div>  
        <ul>  
            <li><a href="home.jsp">Home</a></li>  
            <li><a href="invest.jsp">Learn to Invest</a></li>  
            <li><a href="plan.jsp">Plan Investments</a></li>  
            <li><a href="browse.jsp">Browse & Invest</a></li>  
            <li><a href="services.jsp">Investor Services</a></li>  
        </ul>  
        <div class="search-container">  
            <input type="text" placeholder="Search...">  
            <button>Search</button>  
            <button class="login" onclick="window.location.href='index.jsp'">Login</button>  
        </div>   
    </nav>

    <div style="text-align: center; margin-bottom: 30px;">  
        <h1 style="font-size: 2.5em; color: #333;">Find the right <br> mutual fund for you</h1>  
        <p style="color: #666;">Explore funds that meet your investment objective</p>  
        <input type="text" placeholder="Search for a scheme here..." style="padding: 10px; width: 300px; border: 1px solid #ccc; border-radius: 5px;">  
        <button style="padding: 10px 15px; background-color: #007bff; color: white; border: none; border-radius: 5px; cursor: pointer;">Search</button>  
    </div>  

    <div style="margin: 20px 0;">  
        <h2 style="color: #333;">Browse by Category</h2>  
        <div style="display: flex; justify-content: space-around; flex-wrap: wrap;">  
            <div style="background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); margin: 10px; text-align: center;">  
                <h3>Equity</h3>  
            </div>  
            <div style="background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); margin: 10px; text-align: center;">  
                <h3>Hybrid</h3>  
            </div>  
            <div style="background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); margin: 10px; text-align: center;">  
                <h3>Debt</h3>  
            </div>  
            <div style="background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); margin: 10px; text-align: center;">  
                <h3>Solution Oriented Schemes</h3>  
            </div>  
            <div style="background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); margin: 10px; text-align: center;">  
                <h3>Passive Solutions</h3>  
            </div>  
        </div>  
    </div>  

    <div style="margin: 20px 0;">  
        <h2 style="color: #333;">Not sure if you want to invest yet?</h2>  
        <p style="color: #666;">Keep track of scheme's performance, NAV and returns by adding them to your watchlist</p>  
        <button style="padding: 10px 15px; background-color: #007bff; color: white; border: none; border-radius: 5px; cursor: pointer;">Get Started</button>  
    </div>  

    <div style="margin: 20px 0;">  
        <h2 style="color: #333;">Trending Funds this month</h2>  
        <p style="color: #666;">Take a look at the funds that had maximum number of investments in the last one month</p>  
        <div style="background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); margin: 10px;">  
            <h3>SBI Contra Fund</h3>  
            <p>Return: 10% | Risk: Very High</p>  
            <button style="padding: 10px 15px; background-color: #007bff; color: white; border: none; border-radius: 5px; cursor: pointer;">View Details</button>  
            <button style="padding: 10px 15px; background-color: #28a745; color: white; border: none; border-radius: 5px; cursor: pointer;">Invest</button>  
        </div>  
        <div style="background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); margin: 10px;">  
            <h3>SBI PSU Fund</h3>  
            <p>Return: 8% | Risk: High</p>  
            <button style="padding: 10px 15px; background-color: #007bff; color: white; border: none; border-radius: 5px; cursor: pointer;">View Details</button>  
            <button style="padding: 10px 15px; background-color: #28a745; color: white; border: none; border-radius: 5px; cursor: pointer;">Invest</button>  
        </div>  
        <div style="background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); margin: 10px;">  
            <h3>SBI Long Term Equity Fund (ELSS)</h3>  
            <p>Return: 12% | Risk: High</p>  
            <button style="padding: 10px 15px; background-color: #007bff; color: white; border: none; border-radius: 5px; cursor: pointer;">View Details</button>  
            <button style="padding: 10px 15px; background-color: #28a745; color: white; border: none; border-radius: 5px; cursor: pointer;">Invest</button>  
        </div>  
    </div>  

</body>  
</html>
