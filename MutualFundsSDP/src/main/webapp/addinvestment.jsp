<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Investments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        form {
            max-width: 400px;
            margin: auto;
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
            font-weight: bold;
        }
        input, select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
        #successMessage {
            color: green;
            text-align: center;
            margin-top: 15px;
            display: none;
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

    <h2>Add New Investment</h2>
    <form id="investmentForm">
        <div>
            <label for="investmentName">Investment Name</label>
            <input type="text" id="investmentName" name="investmentName" required>
        </div>
        <div>
            <label for="amount">Amount</label>
            <input type="number" id="amount" name="amount" required>
        </div>
        <div>
            <label for="type">Investment Type</label>
            <select id="type" name="type" required>
                <option value="mutual fund">Mutual Fund</option>
                <option value="stock">Stock</option>
                <option value="bond">Bond</option>
                <option value="real estate">Real Estate</option>
            </select>
        </div>
        <div>
            <label for="date">Investment Date</label>
            <input type="date" id="date" name="date" required>
        </div>
        <button type="submit">Add Investment</button>
    </form>
    <p id="successMessage">Investment successfully added!</p>

    <script>
        document.getElementById('investmentForm').addEventListener('submit', function(e) {
            e.preventDefault();

            // Get form data
            const investmentName = document.getElementById('investmentName').value;
            const amount = document.getElementById('amount').value;
            const type = document.getElementById('type').value;
            const date = document.getElementById('date').value;

            // Simulate adding investment (for testing purposes)
            console.log(`Investment Added: 
                Name: ${investmentName}, 
                Amount: ${amount}, 
                Type: ${type}, 
                Date: ${date}`);

            // Display success message
            const successMessage = document.getElementById('successMessage');
            successMessage.style.display = 'block';

            // Hide the message after 3 seconds
            setTimeout(() => {
                successMessage.style.display = 'none';
            }, 3000);

            // Reset the form after submission
            e.target.reset();

            // Optionally, send data to the backend (e.g., using fetch or axios)
            // fetch('/api/addInvestment', {
            //     method: 'POST',
            //     headers: {
            //         'Content-Type': 'application/json',
            //     },
            //     body: JSON.stringify({ investmentName, amount, type, date }),
            // }).then(response => response.json())
            // .then(data => console.log(data));
        });
    </script>
</body>
</html>
