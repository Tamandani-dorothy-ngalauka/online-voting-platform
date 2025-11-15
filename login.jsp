<%-- 
    Document   : login
    Created on : 3 Nov 2025, 20:52:20
    Author     : TAMANDANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fortress Login</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #2aa3bb, #136b80);
            font-family: Arial, sans-serif;
        }

        /* NAVIGATION */
        .links {
            text-align: right;
            padding: 20px 40px;
        }

        .links a {
            color: white;
            margin-left: 25px;
            text-decoration: none;
            font-size: 18px;
            font-weight: 600;
        }

        .links a:hover {
            text-decoration: underline;
        }

        /* LOGO */
        .logo {
            text-align: center;
            margin-top: 20px;
        }

        .logo img {
            width: 150px;
            height: 100px;
            border-radius: 12px;
            object-fit: cover;
        }

        /* LOGIN CARD */
        .login-container {
            width: 380px;
            margin: 40px auto;
            padding: 30px;
            background: rgba(255, 255, 255, 0.90);
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.25);
            backdrop-filter: blur(10px);
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }

        label {
            display: block;
            text-align: left;
            margin: 10px 0 5px 5px;
            font-weight: 600;
            color: #333;
        }

        input {
            width: 100%;
            height: 36px;
            margin-bottom: 15px;
            border: 1px solid #aaa;
            border-radius: 10px;
            padding-left: 10px;
            font-size: 14px;
        }

        input:focus {
            outline: none;
            border: 1px solid #2aa3bb;
            box-shadow: 0 0 5px #2aa3bb;
        }

        /* BUTTONS */
        .btn-submit {
            width: 100%;
            height: 45px;
            background: #f39c12;
            color: white;
            border: none;
            border-radius: 30px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 10px;
        }

        .btn-submit:hover {
            background: #d68910;
            transform: scale(1.03);
        }

        footer {
            text-align: center;
            color: white;
            padding: 20px;
            margin-top: 20px;
        }

        /* ERROR MESSAGE */
        .error {
            color: red;
            margin-top: 10px;
            font-weight: bold;
        }
    </style>
</head>

<body>

    <!-- NAVIGATION -->
    <div class="links">
        <a href="index.html">HOME</a>
    </div>

    <!-- LOGO -->
    <div class="logo">
        <img src="images/logo.jpg" alt="Fortress Logo">
    </div>

    <!-- LOGIN CARD -->
    <div class="login-container">
        <h2>Voter Login</h2>

        <form action="loginServlet1" method="get">

            <label for="name">Name</label>
            <input type="text" name="NAME" placeholder="Enter your full name" required>

            <label for="id">Identity No</label>
            <input type="text" name="IDNO" placeholder="Enter your Voter ID No." required>

            <label for="dob">Date of Birth</label>
            <input type="date" name="DOB" required>

            <label for="password">Password</label>
            <input type="password" name="PWD" placeholder="Enter password" required>

            <button type="submit" class="btn-submit">Login</button>
        </form>

        <!-- JSP error message shown here -->
        <c:if test="${not empty errorMessage}">
            <div class="error">${errorMessage}</div>
        </c:if>
    </div>

    <!-- FOOTER -->
    <footer>
        &copy; All Rights Reserved @Fortress 2025
    </footer>

</body>
</html>
