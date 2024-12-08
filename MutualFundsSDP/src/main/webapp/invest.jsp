<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Process of Investing in Mutual Funds</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: white;
            padding: 0;
            margin: auto;
        }

        /* Navbar Styles */
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

        /* Process Box Styles */
        .process-container {
            max-width: 1000px;
            margin: 20px auto;
            border: 2px solid #ffbb33; /* Border around the entire process box */
            border-radius: 20px;
            background-color: #1c1c1c;
            padding: 20px;
            display: flex;
            justify-content: flex-start; /* Left align content */
            align-items: flex-start;
            position: relative; /* For positioning the image */
        }

        /* Heading outside the box */
        h1 {
            text-align: center;
            margin-bottom: 20px;
            width: 100%;
        }

        /* Flexbox for side-by-side phases */
        .phases-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            width: 60%; /* Adjusting to leave space for the image */
        }

        .phase {
            padding: 10px 20px;
            cursor: pointer;
            transition: color 0.3s;
            font-size: 18px;
            margin-bottom: 20px;
            border-bottom: 2px solid transparent;
            background-color: #2a2a2a;
            border-radius: 8px;
            width: 48%; /* Two phases side by side */
        }

        .phase:hover {
            color: #ffbb33;
            border-color: #ffbb33;
        }

        .details {
            display: none;
            margin-top: 10px;
            font-size: 14px;
        }

        .details.open {
            display: block;
        }

        /* Image Styles */
        .image-container {
            position: absolute; /* Position image outside the box */
            top: 20px;
            right: 0;
            width: 35%; /* Adjust the width of the image container */
            height: calc(100% - 40px); /* Adjust height to match the container height, subtracting padding */
            z-index: 1; /* Place the image above the content */
            padding: 0; /* Remove any padding to avoid gap */
            display: flex;
            align-items: stretch; /* Ensure the image stretches to fill the height */
        }

        .image-container img {
            width: 100%; /* Make the image responsive to fill container width */
            height: 100%; /* Ensure the image fills the height of the container */
            object-fit: cover; /* Maintain aspect ratio while filling the container */
            border-radius: 10px;
            padding: 0; /* Remove padding */
        }

        @media screen and (max-width: 768px) {
            .phase {
                font-size: 16px;
                width: 100%; /* Full width for small screens */
            }

            .process-container {
                flex-direction: column; /* Stack phases and image vertically on small screens */
            }

            .image-container {
                width: 100%; /* Make the image take full width on small screens */
                margin-top: 20px;
            }
        }

        .phase p {
            margin: 0;
            padding: 10px;
            font-weight: bold;
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

    <!-- Process of Investing Section -->
    <h1>Process of Investing in Mutual Funds</h1>

    <section class="process-container">
        <div class="phases-container">
            <!-- 1. Researching and Selecting Mutual Funds -->
            <div class="phase" onclick="toggleDetails(this)">
                <p>1. Researching and Selecting Mutual Funds</p>
                <div class="details">
                    <p>The first step in investing in mutual funds is to research and select the funds that align with your financial goals, risk tolerance, and investment horizon. You should consider factors like the fund’s past performance, the fund manager’s track record, fees, and the underlying assets in the portfolio.</p>
                </div>
            </div>

            <!-- 2. Setting Investment Goals -->
            <div class="phase" onclick="toggleDetails(this)">
                <p>2. Setting Investment Goals</p>
                <div class="details">
                    <p>Before investing, define your financial goals, such as saving for retirement, buying a home, or funding your child’s education. The more specific and clear your goals are, the easier it will be to choose the right mutual fund that meets your needs.</p>
                </div>
            </div>

            <!-- 3. Opening an Investment Account -->
            <div class="phase" onclick="toggleDetails(this)">
                <p>3. Opening an Investment Account</p>
                <div class="details">
                    <p>To invest in mutual funds, you need to open an investment account through a broker, bank, or mutual fund company. You’ll need to provide some personal and financial information to open your account, and then deposit funds into the account to begin investing.</p>
                </div>
            </div>

            <!-- 4. Making Your First Investment -->
            <div class="phase" onclick="toggleDetails(this)">
                <p>4. Making Your First Investment</p>
                <div class="details">
                    <p>Once your account is set up, you can make your first investment by purchasing shares of the selected mutual fund. You can start with a small investment and gradually increase it as you become more comfortable with the process.</p>
                </div>
            </div>

            <!-- 5. Monitoring Your Investment -->
            <div class="phase" onclick="toggleDetails(this)">
                <p>5. Monitoring Your Investment</p>
                <div class="details">
                    <p>After investing, it’s essential to monitor the performance of your mutual funds. You can review your investment returns, the fund’s performance against its benchmark, and make adjustments if necessary to stay aligned with your goals.</p>
                </div>
            </div>

            <!-- 6. Redeeming or Rebalancing -->
            <div class="phase" onclick="toggleDetails(this)">
                <p>6. Redeeming or Rebalancing</p>
                <div class="details">
                    <p>Over time, your financial goals or risk tolerance may change. At this point, you may need to redeem some of your mutual fund investments or rebalance your portfolio by purchasing other funds that better match your new objectives.</p>
                </div>
            </div>
        </div>

        <!-- Image Section -->
        <div class="image-container">
            <img src="templates/static/images/teacher.jpeg" alt="Investing in Mutual Funds" />
        </div>
    </section>

    <script>
        function toggleDetails(element) {
            const details = element.querySelector('.details');
            details.classList.toggle('open');
        }
    </script>
</body>
</html>
