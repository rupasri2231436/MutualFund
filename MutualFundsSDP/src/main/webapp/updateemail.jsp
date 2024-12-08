<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Email ID - SBI Mutual Fund</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background: #0072bb;
            color: white;
            padding: 10px 20px;
            text-align: center;
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
        nav ul li:hover .dropdown {
            display: block;
        }
        .dropdown {
            display: none;
            position: absolute;
            background: white;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            margin-top: 5px;
            padding: 10px;
        }
        .dropdown a {
            display: block;
            padding: 5px 10px;
            color: #0072bb;
            text-decoration: none;
        }
        .dropdown a:hover {
            background: #f4f4f4;
        }
        .search-container {
            margin-left: auto;
            display: flex;
            align-items: center;
        }
        .search-container input {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .search-container button {
            padding: 5px 10px;
            margin-left: 5px;
            background: #0072bb;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .search-container button:hover {
            background: #005f8a;
        }
        footer {
            text-align: center;
            padding: 20px;
            background: #0072bb;
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
        }
        section {
            margin: 20px;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .form-container {
            display: flex;
            flex-direction: column;
            width: 60%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .form-container input {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
        }
        .form-container button {
            padding: 10px;
            background-color: #0072bb;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .form-container button:hover {
            background-color: #005f8a;
        }
        .captcha-container {
            display: flex;
            align-items: center;
        }
        .captcha-container img {
            margin-right: 10px;
        }
        .captcha-container input {
            width: 200px;
        }
        .form-footer {
            text-align: right;
        }
    </style>
</head>
<body>
    <header>
        <h1>SBI Mutual Fund Investor Services</h1>
    </header>

    <nav>
        <div class="logo">
            <img src="logo-url.png" alt="SBI Mutual Fund Logo">
        </div>
        <ul>
	        <li>  
	                <a href="home.jsp">Home</a>  
	                  
	            </li> 
            <li>
                <a href="invest.jsp">Learn to Invest</a>
            </li>
            <li>
                <a href="plan.jsp">Plan Investments</a>
               
            </li>
            <li>
                <a href="browse.jsp">Browse & Invest</a>
               
            </li>
            <li>
                <a href="services.jsp">Investor Services</a>
            </li>
        </ul>
        <div class="search-container">
            <input type="text" placeholder="Search...">
            <button>Search</button>
            <button class="login" onclick="window.location.href='index.jsp'">Login</button>
        </div>
    </nav>

    <section>
        <h2>Update Email ID Linked to Your Folio</h2>
        <div class="form-container">
            <form action="updateEmail.jsp" method="post">
                <label for="pan">PAN</label>
                <input type="text" id="pan" name="pan" required>

                <label for="folio-number">Folio Number</label>
                <input type="text" id="folio-number" name="folio-number" required>

                <div class="captcha-container">
                    <img src="captcha-url.png" alt="Captcha">
                    <input type="text" placeholder="Enter Captcha Here" required>
                </div>

                <button type="submit">Submit</button>
            </form>

            <div class="form-footer">
                <p>Already submitted an application? <a href="checkStatus.jsp">Click here to check the status.</a></p>
            </div>
        </div>
    </section>

    <footer>
        <p>Our customers trust us with ₹3,82,00,00,000</p>
        <p>33 Years of performance | 450K+ happy investors | 100 cities across India</p>
        <p>Invest on the go: <a href="app-download-link">Download the app</a></p>
    </footer>
</body>
</html>
