<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mutual Fund Comparison</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        } header {
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
        
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        canvas {
            max-width: 800px;
            margin: 0 auto;
            display: block;
        }
        form {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        form div {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input, select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
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
    <h2>Mutual Fund Comparison</h2>
    <canvas id="mutualFundChart"></canvas>

    <form id="dataForm">
        <h3>Enter Mutual Fund Data</h3>
        <div>
            <label for="fundName">Fund Name</label>
            <input type="text" id="fundName" placeholder="Enter fund name" required>
        </div>
        <div>
            <label for="returns">Returns (%)</label>
            <input type="number" id="returns" placeholder="Enter returns percentage" required>
        </div>
        <div>
            <label for="risk">Risk Level (1-10)</label>
            <input type="number" id="risk" placeholder="Enter risk level (1 to 10)" required>
        </div>
        <button type="submit">Add Data</button>
    </form>

    <script>
        // Initialize chart
        const ctx = document.getElementById('mutualFundChart').getContext('2d');
        const mutualFundChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: [], // Fund names
                datasets: [
                    {
                        label: 'Returns (%)',
                        data: [], // Returns percentages
                        backgroundColor: 'rgba(54, 162, 235, 0.5)',
                        borderColor: 'rgba(54, 162, 235, 1)',
                        borderWidth: 1,
                    },
                    {
                        label: 'Risk Level',
                        data: [], // Risk levels
                        backgroundColor: 'rgba(255, 99, 132, 0.5)',
                        borderColor: 'rgba(255, 99, 132, 1)',
                        borderWidth: 1,
                    }
                ]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true,
                        title: {
                            display: true,
                            text: 'Values'
                        }
                    },
                    x: {
                        title: {
                            display: true,
                            text: 'Mutual Funds'
                        }
                    }
                },
                plugins: {
                    tooltip: {
                        mode: 'index',
                        intersect: false
                    }
                }
            }
        });

        // Add data dynamically
        const dataForm = document.getElementById('dataForm');
        dataForm.addEventListener('submit', function (e) {
            e.preventDefault();

            // Get input values
            const fundName = document.getElementById('fundName').value.trim();
            const returns = parseFloat(document.getElementById('returns').value);
            const risk = parseFloat(document.getElementById('risk').value);

            // Add data to chart
            if (fundName && !isNaN(returns) && !isNaN(risk)) {
                mutualFundChart.data.labels.push(fundName); // Add fund name
                mutualFundChart.data.datasets[0].data.push(returns); // Add returns
                mutualFundChart.data.datasets[1].data.push(risk); // Add risk level
                mutualFundChart.update(); // Update the chart
            }

            // Reset form
            dataForm.reset();
        });
    </script>
</body>
</html>
