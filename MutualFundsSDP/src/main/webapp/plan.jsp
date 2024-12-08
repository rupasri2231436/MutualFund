<%@ page contentType="text/html;charset=UTF-8" language="java" %>  
<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <style>  
        body {  
            font-family: Arial, sans-serif;  
            margin: 0;  
            padding: 0;  
            background-color: #f4f4f4;  
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
            position: relative;  
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

        .container {  
            width: 80%;  
            margin: auto;  
            overflow: hidden;  
            background-color: skyblue;  
            padding: 20px;  
            border-radius: 5px;  
        }  

        header {  
            display: flex;  
            justify-content: space-between;  
            align-items: center;  
            background: #007bff;  
            color: #fff;  
            padding: 20px 0;  
        }  

        header h1 {  
            margin: 0;  
        }  

        header p {  
            margin: 10px 0;  
        }  

        .buttons {  
            margin: 20px 0;  
        }  

        button {  
            background: #fff;  
            color:  #00BFFF;  
            border: none;  
            padding: 10px 20px;  
            margin: 5px;  
            cursor: pointer;  
            border-radius: 5px;  
        }  

        .plan-button {  
            background: #28a745;  
            color: #fff;  
            font-size: 16px;  
        }  

        .solutions {  
            background: #007bff;  
            color: #fff;  
            padding: 20px;  
            margin: 20px 0;  
        }  

        .solutions h2 {  
            margin: 0 0 10px;  
        }  

        .calculator {  
            margin: 10px 0;  
        }  

        .investment-ideas {  
            margin: 20px 0;  
        }  

        .investment-ideas h2 {  
            margin: 0 0 10px;  
        }  

        .investment-ideas ul {  
            list-style-type: none;  
            padding: 0;  
        }  

        .calculators {  
            display: flex;  
            justify-content: space-between;  
            margin: 20px 0;  
        }  

        .calculator-card {  
            background: #fff;  
            border: 1px solid #ddd;  
            border-radius: 5px;  
            padding: 20px;  
            width: 48%;  
            text-align: center;  
        }  

        .calculator-card h3 {  
            margin: 0 0 10px;  
        }  

        .calculator-card button {  
            background: #007bff;  
            color: #fff;  
            border: none;  
            padding: 10px 20px;  
            cursor: pointer;  
            border-radius: 5px;  
        }  

        .header-image {  
            max-width: 300px;  
            height: auto;  
            margin-left: 20px;  
        }  
    </style>  
    <title>Investment Planning</title>  
</head>  
<body>  

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

    <div class="container">  
        <header>  
            <div>  
                <h1>A plan for every goal</h1>  
                <p>Build a portfolio to meet your goals through Systematic Investment Plans (SIPs)</p>  
                <div class="buttons">  
                    <button>Retirement</button>  
                    <button>Vacation</button>  
                    <button>Children's Education</button>  
                    <button>Other</button>  
                </div>  
                <button class="plan-button">Plan a Goal</button>  
            </div>  
            <img src="templates/static/images/download (1).jpeg" alt="Investment Planning" class="header-image">  
        </header>  

        <section class="solutions">  
            <h2>We have solutions for every life stage</h2>  
            <div class="calculator">  
                <h3>Children Benefit Calculator</h3>  
                <p>Discover solutions to plan for your child's treasured dreams</p>  
            </div>  
            <div class="calculator">  
                <h3>Retirement Benefit Calculator</h3>  
                <p>Discover solutions to keep up with your lifestyle even after retirement</p>  
            </div>  
        </section>  

        <nav class="investment-ideas">  
            <h2>Get ideas for your next investment</h2>  
            <ul>  
                <li>All Weather Investing</li>  
                <li>Beginner's Kit</li>  
                <li>India's Leaders</li>  
            </ul>  
        </nav>  

        <section class="calculators">  
            <div class="calculator-card">  
                <h3>SIP Calculator</h3>  
                <p>Understand the returns from a SIP and plan for a future goal</p>  
                <button>Calculate</button>  
            </div>  
            <div class="calculator-card">  
                <h3>Returns Calculator</h3>  
                <p>Find out the future returns on your current investments</p>  
                <button>Calculate</button>  
            </div>  
        </section>  
    </div>  
</body>  
</html>
