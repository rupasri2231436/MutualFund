<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Direct Mutual Funds Platform</title>
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

        .hero {
            background: linear-gradient(to right, #0044cc, #002a80);
            color: #fff;
            padding: 50px 10%;
            text-align: center;
        }

        .hero h1 {
            font-size: 3em;
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 1.2em;
            margin-bottom: 20px;
        }

        .hero button {
            padding: 10px 20px;
            background: #f1c40f;
            color: #333;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
        }
        
        .about-us {
            padding: 50px 10%;
            text-align: center;
            background-color: #f4f4f4;
        }

        .about-us h2 {
            font-size: 2.5em;
            color: #0044cc;
            margin-bottom: 20px;
        }

        .about-us p {
            font-size: 1.2em;
            line-height: 1.8;
            color: #555;
        }
        
        .features {
            padding: 50px 10%;
        }

        .features h2 {
            font-size: 2.5em;
            margin-bottom: 20px;
            text-align: center;
            color: #0044cc;
        }

        .features .feature {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }

        .features .feature img {
            max-width: 40%;
            border-radius: 10px;
        }

        .features .feature div {
            flex: 1;
            margin-left: 20px;
        }

        .features .feature h3 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .features .feature p {
            font-size: 1.1em;
            line-height: 1.6;
            color: #555;
        }

        .features .feature.reverse {
            flex-direction: row-reverse;
        }

        .features .feature.reverse img {
            margin-left: 0;
            margin-right: 20px;
        }

        .gallery {
            padding: 50px 10%;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
        }

        .gallery img {
            max-width: 100%;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        .testimonials {
            background: #f4f4f4;
            color: #333;
            padding: 50px 10%;
            text-align: center;
        }

        .testimonials h2 {
            font-size: 2.5em;
            margin-bottom: 30px;
            color: #0044cc;
        }

        .testimonial-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
        }

        .testimonial {
            width: 45%;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            font-size: 1.2em;
            text-align: left;
            position: relative;
        }

        .testimonial:before {
            content: "“";
            font-size: 3em;
            position: absolute;
            top: -10px;
            left: -10px;
            color: #f1c40f;
        }

        .testimonial .author {
            margin-top: 15px;
            font-weight: bold;
            font-size: 1.3em;
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

    <section class="about-us">
        <h2>About Us</h2>
        <p>We, Star Mutual Funds, located at Malad West, Mumbai, Maharashtra, have a clear vision of providing professional services in the area of personal and corporate investments. We have created a niche segment over a period of time with an excellent quality client base with in-house capability of analyzing various mutual funds before suggesting them to our clients.</p>
    </section>

    <section class="features">
        <h2>Our Features</h2>
        <div class="feature">
            <img src="<%= request.getContextPath() %>/templates/static/images/zero.png" alt="Feature 1">
            <div>
                <h3>Zero Commission</h3>
                <p>Invest directly in mutual funds with zero commissions. Maximize your returns effortlessly.</p>
            </div>
        </div>
        <div class="feature reverse">
            <img src="<%= request.getContextPath() %>/templates/static/images/dashboard.webp" alt="Feature 2">
            <div>
                <h3>Easy Dashboard</h3>
                <p>Track your investments and make decisions with our intuitive and user-friendly dashboard.</p>
            </div>
        </div>
    </section>
     <section class="gallery">
        <img src="<%= request.getContextPath() %>/templates/static/images/im2.jpeg" alt="Mutual Funds Image 1">
        <img src="<%= request.getContextPath() %>/templates/static/images/i2.jpeg" alt="Mutual Funds Image 2">
        <img src="<%= request.getContextPath() %>/templates/static/images/im3.png" alt="Mutual Funds Image 3">
    </section>
    

    <section class="testimonials">
        <h2>What Our Clients Say</h2>
        <div class="testimonial-container">
            <div class="testimonial">
                <p>They consulted me with the best investment plan according to my necessity.</p>
                <div class="author">Rajesh Joshi</div>
            </div>
            <div class="testimonial">
                <p>The team was very professional and guided me at every step of my investment journey.</p>
                <div class="author">Sneha Kumar</div>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 Mutual Funds Platform. All rights reserved.</p>
    </footer>
</body>
</html>