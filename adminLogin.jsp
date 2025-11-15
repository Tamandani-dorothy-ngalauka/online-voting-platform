<%-- 
    Document   : adminLogin
    Created on : 8 Nov 2025, 16:43:52
    Author     : johns
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(135deg, #1ea3c9, #0c4f60);
            color: #fff;
        }

        .navbar {
            width: 100%;
            padding: 20px 40px;
            display: flex;
            justify-content: flex-end;
            gap: 40px;
            font-size: 20px;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
        }

        .navbar a:hover {
            color: #ffeb3b;
        }

        .container {
            width: 100%;
            display: flex;
            justify-content: center;
            margin-top: 40px;
        }

        .logo {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .logo img {
            width: 160px;
            height: auto;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.4);
        }

        .form-box {
            background: rgba(255, 255, 255, 0.15);
            padding: 40px 50px;
            border-radius: 20px;
            width: 380px;
            backdrop-filter: blur(8px);
            margin-top: 30px;
            box-shadow: 0 0 20px rgba(0,0,0,0.3);
            animation: slideDown 0.8s ease-out;
        }

        @keyframes slideDown {
            from { transform: translateY(-30px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        .form-box h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #ffeb3b;
        }

        label {
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 10px;
            border-radius: 10px;
            border: none;
            margin-top: 5px;
            margin-bottom: 15px;
        }

        input:focus {
            outline: 2px solid #ffeb3b;
        }

        button {
            width: 100%;
            padding: 12px;
            border-radius: 25px;
            border: none;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            background: #ffeb3b;
            color: #000;
            transition: 0.3s;
        }

        button:hover {
            background: #fff;
        }

        .error-box {
            text-align: center;
            margin-top: 15px;
            color: #ff4444;
            font-weight: bold;
        }

        footer {
            text-align: center;
            margin-top: 60px;
            padding: 20px;
            color: #e0e0e0;
        }
    </style>
</head>

<body>

    <!-- NAVIGATION BAR -->
    <div class="navbar">
        <a href="login.jsp">VOTERS</a>
    </div>

    <!-- LOGO -->
    <div class="logo">
        <img src="images/logo.jpg" alt="System Logo">
    </div>

    <div class="container">
        <div class="form-box">
            <h2>Admin Login</h2>

            <form action="adminLoginServlet" method="get">
                <label for="uname">Username</label>
                <input type="text" id="uname" name="UNAME" placeholder="Enter username" required>

                <label for="pwd">Password</label>
                <input type="password" id="pwd" name="PASSWORD" placeholder="Enter password" required>

                <button type="submit">Login</button>
            </form>

            <c:if test="${not empty errorMessage}">
                <div class="error-box">${errorMessage}</div>
            </c:if>
        </div>
    </div>

    <footer>
        &copy; Fortress 2025. All Rights Reserved.
    </footer>

</body>
</html>
