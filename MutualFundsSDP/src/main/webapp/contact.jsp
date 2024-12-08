<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
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
        .contact-container {
            text-align: center;
            width: 80%;
            max-width: 800px;
            margin: 20px auto;
        }
        .contact-header {
            font-size: 24px;
            font-weight: bold;
            color: #4a90e2;
            margin-bottom: 20px;
        }
        .contact-grid {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 20px;
        }
        .contact-item {
            flex: 1 1 calc(25% - 20px);
            min-width: 150px;
            text-align: center;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #fff;
        }
        .contact-item-icon {
            font-size: 30px;
            color: #4a90e2;
            margin-bottom: 10px;
        }
        .contact-item-title {
            font-weight: bold;
            font-size: 16px;
            margin-bottom: 5px;
        }
        .contact-item-content {
            font-size: 14px;
            color: #555;
        }
         .contact-container {
            text-align: center;
            width: 80%;
            max-width: 800px;
            margin: 20px auto;
        }
        .contact-header {
            font-size: 24px;
            font-weight: bold;
            color: #4a90e2;
            margin-bottom: 20px;
        }
        .contact-form {
            margin-top: 20px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 0 auto;
        }
        .contact-form label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .contact-form textarea {
            resize: vertical;
            height: 120px;
        }
        .contact-form button {
            padding: 10px 20px;
            background-color: #0066ff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .contact-form button:hover {
            background-color: #0056cc;
        }
         footer {
            background: #333;
            color: #fff;
            padding: 20px 10%;
            text-align: center;
            margin: 0;
        }

        footer p {
            margin-bottom: 190px;
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

    <div class="contact-container">
        <div class="contact-header">Contact Us</div>
        <div class="contact-grid">
            <div class="contact-item">
                <div class="contact-item-icon">📍</div>
                <div class="contact-item-title">Our Office Address</div>
                <div class="contact-item-content">
                    Palm Court Bldg M, 501/B, 5th Floor, New Link Road,<br>
                    Beside Goregaon Sports Complex, Malad West,<br>
                    Mumbai, Maharashtra 400064
                </div>
            </div>
            <div class="contact-item">
                <div class="contact-item-icon">✉️</div>
                <div class="contact-item-title">General Enquiries</div>
                <div class="contact-item-content">
                    websupport@justdial.com
                </div>
            </div>
            <div class="contact-item">
                <div class="contact-item-icon">📞</div>
                <div class="contact-item-title">Call Us</div>
                <div class="contact-item-content">
                    +91-8888888888
                </div>
            </div>
            <div class="contact-item">
                <div class="contact-item-icon">⏰</div>
                <div class="contact-item-title">Our Timings</div>
                <div class="contact-item-content">
                    Mon - Sun: 10:00 AM - 07:00 PM
                </div>
            </div>
        </div>
    </div>
    <!-- Comment form -->
        <div class="contact-form">
            <h3>Leave a Comment</h3>
            <form action="submitComment.jsp" method="POST">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>

                <label for="rating">Rating (1-5):</label>
                <input type="number" id="rating" name="rating" min="1" max="5" required>

                <label for="comment">Comment:</label>
                <textarea id="comment" name="comment" required></textarea>

                <button type="submit">Submit Comment</button>
            </form>
        </div>
    </div>
     <footer>
        <p>&copy; 2024 Mutual Funds Platform. All rights reserved.</p>
    </footer>
</body>

<script>
function register() {
    var data = JSON.stringify({
    	username: document.getElementById("username").value,
    	rating: document.getElementById("rating").value,
    	comment: document.getElementById("comment").value,
    	
        
    });
    
    var url = "http://localhost:8080/comment";
    callApi("POST", url, data, handleRegisterResponse);
}

function handleRegisterResponse(response) {
    alert(response);
    if (response ==="Data Added Successful") {
        window.location.href = "/contact.jsp";
    }
}

function callApi(method, url, data, callback) {
    fetch(url, {
        method: method,
        headers: { 'Content-Type': 'application/json' },
        body: data
    })
    .then(response => response.text())
    .then(callback)
    .catch(error => alert("Error: " + error));
}
</script>
</html>
