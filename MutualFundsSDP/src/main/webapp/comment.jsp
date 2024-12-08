<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
        }</style>
</head>
<body>
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
</body>
</html>