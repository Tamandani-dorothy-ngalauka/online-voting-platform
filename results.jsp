<%-- 
    Document   : results
    Created on : 8 Nov 2025, 18:55:06
    Author     : johns
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <title>Document</title>
  
    <style>
        body {
            background-color: #f5f7fa;
            font-family: Arial, sans-serif;
        }
        header {
            background-color: #0a6c91;
            padding: 20px;
            color: white;
            font-size: 2rem;
            font-weight: bold;
            display: flex;
            align-items: center;
            gap: 20px;
        }
        .top-stats {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin: 20px;
        }
        .stat-card {
            background-color: white;
            width: 280px;
            padding: 20px;
            border-radius: 20px;
            box-shadow: 0 3px 8px rgba(0,0,0,0.15);
            text-align: center;
        }
        .stat-value {
            font-size: 2rem;
            font-weight: bold;
            color: #0a6c91;
        }
        .chart-section {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin: 20px;
        }
        .chart-box {
            background: white;
            width: 600px;
            height: 300px;
            padding: 20px;
            border-radius: 20px;
            box-shadow: 0 3px 8px rgba(0,0,0,0.15);
        }
        .bottom-section {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin: 20px;
        }
        .bottom-box {
            background: white;
            width: 750px;
            height: 350px;
            border-radius: 25px;
            padding: 20px;
            box-shadow: 0 3px 8px rgba(0,0,0,0.15);
        }
        .division-box {
            width: 450px;
            height: 350px;
            padding: 20px;
            background: white;
            border-radius: 25px;
            box-shadow: 0 3px 8px rgba(0,0,0,0.15);
        }
    </style>
</head>
<body>

<header>♨️ Election Dashboard</header>

<div class="top-stats">
    <div class="stat-card">
        <div class="stat-value">65,893</div>
        <div>Total Voters</div>
        <small>Total Voters Registered: 34,030</small>
    </div>
    <div class="stat-card">
        <div class="stat-value">2  Candidates</div>
        <div>1. <b>Tamandani</b></div>
        <small>2.<b> Johnson</b></small>
    </div>
    <div class="stat-card">
        <div class="stat-value">T&A Limit</div>
        <div>Serve only TWO Terms</div>
        <small>Age limit 70 years</small>
    </div>
</div>

<div class="chart-section">
    <div class="chart-box">
        <canvas id="payerChart"></canvas>
    </div>

    <div class="chart-box">
        <canvas id="caseChart"></canvas>
    </div>
</div>

<div class="bottom-section">
    <div class="bottom-box">
        <canvas id="profitChart"></canvas>
    </div>

    <div class="division-box">
        <canvas id="staffChart"></canvas>
    </div>
</div>

<script>

new Chart(document.getElementById("payerChart"), {
    type: "pie",
    data: {
        labels: ["Votes for candidate1", "Votes for candidate2", "Invalid votes"],
        datasets: [{
            data: [85, 70, 40],
            backgroundColor: ["#0a6c91", "#1976d2", "Red"]
        }]
    },
    options: { responsive: true }
});


new Chart(document.getElementById("caseChart"), {
    type: "bar",
    data: {
        labels: ["Candidate1", "Candidate2", "Candidate1", "Candidate2", "Candidate1", "Candidate2"],
        datasets: [{
            label: "Females",
            data: [2.8, 1.4, 0.7, 1.1, 0.9, 2.2],
            backgroundColor: "#1976d2"
        }, {
            label: "Male",
            data: [2, 0.5, 0.5, 0.5, 0.6, 0.5],
            backgroundColor: "#64b5f6"
        }]
    },
    options: { responsive: true }
});

new Chart(document.getElementById("profitChart"), {
    type: "bar",
    data: {
        labels: ["18-24", "25-30", "31-40", "41-50", "51-60", "61+"],
        datasets: [{
            label: "Age Groups",
            data: [60, 90, 55, 75, 15, 85, 40, 70, 55],
            backgroundColor: "#0a6c91"
        }]
    }
});

new Chart(document.getElementById("staffChart"), {
    type: "radar",
    data: {
        labels: ["18-24", "25-30", "31-40", "41-50", "51-60", "61+"],
        datasets: [{
            label: "VOTERS AGE GROUP",
            data: [20, 30, 40, 50, 60, 70, 80, 90],
            backgroundColor: "rgba(25,118,210,0.3)",
            borderColor: "#1976d2",
            borderWidth: 2
        }]
    },
    options: { responsive: true }
});
</script>
<div>
        <footer>&copy;All Rights Reserved @Fortress 2025</footer>
     </div>
</body>
</html>
