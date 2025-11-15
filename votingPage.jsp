<%-- 
    Document   : votingPage
    Created on : 5 Nov 2025, 16:52:30
    Author     : TAMANDANI
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voting Page</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #2aa3bb, #136b80);
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

        /* PAGE HEADER */
        .page-title {
            text-align: center;
            color: white;
            margin-top: 20px;
        }

        .page-title h2 {
            font-size: 32px;
            margin-bottom: 5px;
        }

        .page-title p {
            font-size: 18px;
            opacity: 0.9;
        }

        h3 {
            text-align: center;
            color: white;
            margin-top: 20px;
        }

        /* CANDIDATE GRID */
        .candidate-grid {
            display: flex;
            gap: 2rem;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 30px;
        }

        /* CANDIDATE CARD */
        .candidate-card {
            position: relative;
            width: 330px;
            background: white;
            padding: 20px;
            border-radius: 18px;
            display: flex;
            align-items: center;
            gap: 1rem;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.25);
            transition: 0.3s;
            cursor: pointer;
        }

        .candidate-card:hover {
            transform: scale(1.03);
            box-shadow: 0 16px 28px rgba(0, 0, 0, 0.3);
        }

        .candidate-img {
            width: 90px;
            height: 90px;
            border-radius: 10px;
            object-fit: cover;
        }

        .candidate-name {
            font-size: 20px;
            font-weight: 600;
            color: #136b80;
        }

        /* RADIO BUTTON (Styled) */
        .candidate-radio {
            width: 20px;
            height: 20px;
            accent-color: #f39c12; /* Gold color */
            cursor: pointer;
        }

        /* SUBMIT BUTTON */
        .submit-container {
            text-align: center;
            margin-top: 40px;
        }

        .submit-btn {
            width: 250px;
            height: 48px;
            background: #f39c12;
            color: white;
            font-size: 20px;
            font-weight: bold;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: 0.3s;
        }

        .submit-btn:hover {
            background: #d68910;
            transform: scale(1.05);
        }

        footer {
            text-align: center;
            padding: 20px;
            color: white;
            margin-top: 30px;
        }
    </style>

</head>

<body>

    <!-- NAVBAR -->
    <div class="links">
        <a href="index.html">HOME</a>
        <a href="login.jsp">LOG-IN</a>
    </div>

    <!-- PAGE HEADER -->
    <div class="page-title">
        <h2>Online Voting</h2>
        <p>Select your preferred presidential candidate below</p>
    </div>

    <h3>President — Select Only One Candidate</h3>

    <!-- VOTING FORM -->
    <form action="votingServlet" method="post">

        <div class="candidate-grid">

            <!-- Candidate 1 -->
            <label class="candidate-card">
                <input type="radio" name="candidate" value="johnson" class="candidate-radio" required>
                <img src="images/jay.jpg" alt="Candidate 1" class="candidate-img">
                <span class="candidate-name">Johnson Losuk Taban</span>
            </label>

            <!-- Candidate 2 -->
            <label class="candidate-card">
                <input type="radio" name="candidate" value="tamandani" class="candidate-radio" required>
                <img src="images/tama.jpg" alt="Candidate 2" class="candidate-img">
                <span class="candidate-name">Tamandani Dorothy Ngalauka</span>
            </label>

        </div>

        <!-- Submit Button -->
        <div class="submit-container">
            <button type="submit" class="submit-btn">Submit Vote</button>
        </div>

    </form>

    <!-- FOOTER -->
    <footer>&copy; All Rights Reserved @Fortress 2025</footer>

</body>

</html>

