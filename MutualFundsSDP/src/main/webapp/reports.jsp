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
 <!-- Sidebar -->
    <div class="sidebar" style="width: 250px; background-color: #333; color: #fff; padding: 20px; box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1); height: 100%; position: fixed;">
        <h2 style="text-align: center; margin-bottom: 20px; font-size: 20px; text-transform: uppercase; border-bottom: 2px solid #555; padding-bottom: 10px;">Admin Dashboard</h2>
        <ul style="list-style-type: none; padding: 0;">
            <li style="margin: 15px 0;"><a href="#" onclick="showSection('dashboard')" style="color: #fff; text-decoration: none; font-size: 16px; display: block; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s;">Dashboard</a></li>
            <li style="margin: 15px 0;"><a href="#" onclick="showSection('funds')" style="color: #fff; text-decoration: none; font-size: 16px; display: block; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s;">Manage Funds</a></li>
            <li style="margin: 15px 0;"><a href="#" onclick="showSection('investors')" style="color: #fff; text-decoration: none; font-size: 16px; display: block; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s;">Investors</a></li>
            <li style="margin: 15px 0;"><a href="addinvestment.jsp" onclick="showSection('Add Investment Plans')" style="color: #fff; text-decoration: none; font-size: 16px; display: block; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s;">Add Investment Plans</a></li>
            <li style="margin: 15px 0;"><a href="reports.jsp" onclick="showSection('reports')" style="color: #fff; text-decoration: none; font-size: 16px; display: block; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s;">Reports</a></li>
            <li style="margin: 15px 0;"><a href="#" onclick="logout()" style="color: #fff; text-decoration: none; font-size: 16px; display: block; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s;">Logout</a></li>
        </ul>
    </div>
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
