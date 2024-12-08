<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Investment Plans</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f9f9f9;
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

       

        form {
            background-color: #fff;
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 0 auto;
        }

        form input, form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        form button {
            background-color: #4a90e2;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px;
            font-size: 16px;
        }
         footer {
            background: #333;
            color: #fff;
            padding: 20px 10%;
            text-align: center;
        }

        footer p {
            margin: 50px;
        }
    </style>
    <script>
        async function addPlan() {
            const planName = document.getElementById('planName').value;
            const description = document.getElementById('description').value;
            const minimumInvestment = document.getElementById('minimumInvestment').value;
            const riskLevel = document.getElementById('riskLevel').value;

            try {
                const response = await fetch('http://localhost:8080/investment-plans', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ planName, description, minimumInvestment, riskLevel })
                });
                if (!response.ok) throw new Error('Failed to add plan');
                alert('Plan added successfully!');
                document.getElementById('planName').value = '';
                document.getElementById('description').value = '';
                document.getElementById('minimumInvestment').value = '';
                document.getElementById('riskLevel').value = '';
            } catch (error) {
                console.error('Error adding plan:', error);
                alert('Error adding plan. Please try again later.');
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
                <li><a href="userreport.jsp">View Reports</a></li>
                <li><a href="viewinvestment.jsp">View</a></li>
                
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
        </nav>
        <div class="auth-buttons">
            <a href="home1.jsp" class="logout" onclick="return confirm('Are you sure you want to logout?');">Logout</a>
        </div>
    </header>

    <h1 style="text-align: center; color: #4a90e2;">Add New Investment Plan</h1>
    <form onsubmit="event.preventDefault(); addPlan();">
        <label for="planName">Plan Name:</label>
        <input type="text" id="planName" required>
        <label for="description">Description:</label>
        <textarea id="description" required></textarea>
        <label for="minimumInvestment">Minimum Investment:</label>
        <input type="number" id="minimumInvestment" required>
        <label for="riskLevel">Risk Level:</label>
        <input type="text" id="riskLevel" required>
        <button type="submit">Add Plan</button>
    </form>

    <footer>
        <p>&copy; 2024 Mutual Funds Platform. All rights reserved.</p>
    </footer>
</body>
</html>
