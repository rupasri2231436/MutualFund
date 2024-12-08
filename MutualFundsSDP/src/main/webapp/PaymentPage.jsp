<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .payment-container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        .payment-container h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .payment-container form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .payment-container input[type="number"] {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
        }
        .payment-container button {
            padding: 10px 15px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .payment-container button:hover {
            background-color: #218838;
        }
        .qr-code-container {
            margin-top: 20px;
            display: none;
        }
        .qr-code-container img {
            width: 150px;
            height: 150px;
            margin-bottom: 20px;
        }
        .pay-button {
            display: none;
            margin-top: 10px;
        }
        .success-message {
            display: none;
            color: #28a745;
            font-size: 18px;
            margin-top: 10px;
        }
    </style>
    <script>
        function showQRCode(event) {
            event.preventDefault();

            // Hide the form and display the QR code and Pay button
            document.querySelector('form').style.display = 'none';
            document.querySelector('.qr-code-container').style.display = 'block';
            document.querySelector('.pay-button').style.display = 'inline-block';
        }

        function completePayment() {
            // Hide QR code and pay button, show success message
            document.querySelector('.qr-code-container').style.display = 'none';
            document.querySelector('.pay-button').style.display = 'none';
            document.querySelector('.success-message').style.display = 'block';
        }
    </script>
</head>
<body>
    <div class="payment-container">
        <h2>Invest in Fund</h2>
        <%
            // Retrieve the fund name from the request
            String fundName = request.getParameter("fundName");
        %>
        <p>Fund Name: <strong><%= fundName %></strong></p>
        <form onsubmit="showQRCode(event)">
            <input type="hidden" name="fundName" value="<%= fundName %>">
            <label for="amount">Investment Amount (₹):</label>
            <input type="number" id="amount" name="amount" min="100" placeholder="Enter amount to invest" required>
            <button type="submit">Proceed to Pay</button>
        </form>
        <div class="qr-code-container">
            <p>Scan the QR Code to complete your payment:</p>
            <img src="templates/static/images/qr.webp" alt="QR Code">
        </div>
        <button class="pay-button" onclick="completePayment()">Pay</button>
        <p class="success-message">Payment Successful! Thank you for your investment.</p>
    </div>
</body>
</html>
