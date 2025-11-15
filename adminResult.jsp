<%-- 
    Document   : adminResult
    Created on : 8 Nov 2025, 16:56:28
    Author     : johns
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Election Results</title>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700;800&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Inter', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #0ea5e9, #0284c7);
            color: #fff;
            min-height: 100vh;
        }

        .header {
            text-align: center;
            padding: 40px 20px;
        }

        .header h2 {
            font-size: 36px;
            font-weight: 800;
            margin-bottom: 10px;
        }

        .container {
            width: 90%;
            max-width: 1100px;
            background: #ffffff10;
            margin: auto;
            padding: 25px;
            border-radius: 18px;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        .tab-head {
            display: flex;
            justify-content: space-between;
            gap: 10px;
            margin-bottom: 25px;
            flex-wrap: wrap;
        }

        .tab {
            background: #ffffff15;
            padding: 12px 20px;
            border-radius: 10px;
            cursor: pointer;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: 0.3s;
        }

        .tab:hover {
            background: #ffffff30;
            transform: translateY(-2px);
        }

        svg {
            stroke: white;
        }

        /* Results Box */
        .results-box {
            margin-top: 20px;
            padding: 20px;
            background: white;
            color: #0f172a;
            border-radius: 14px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
        }

        .result-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 14px 0;
            border-bottom: 1px solid #e2e8f0;
            font-size: 18px;
        }

        .result-item:last-child {
            border-bottom: none;
        }

        .candidate-name {
            font-weight: 600;
        }

        .votes {
            font-weight: 700;
            color: #0284c7;
        }

        .footer {
            text-align: center;
            margin-top: 40px;
            padding-bottom: 20px;
            font-size: 14px;
            opacity: 0.8;
        }

    </style>
</head>
<body>

    <div class="header">
        <h2>THE 2026 PRESIDENTIAL ELECTION RESULTS</h2>
        <p>Admin Dashboard ? Final Count Overview</p>
    </div>

    <div class="container">
        <div class="tab-head">
            <div class="tab"><label>
                <svg width="18" height="18" viewBox="0 0 24 24"><path d="M3 13l6-6 5 5 7-7"/></svg>
                Overview
            </label></div>

            <div class="tab"><label>
                <svg width="18" height="18" viewBox="0 0 24 24"><path d="M4 16V8m6 8V4m6 12V10"/></svg>
                Statistics
            </label></div>

            <div class="tab"><label>
                <svg width="18" height="18" viewBox="0 0 24 24"><path d="M4 20a8 8 0 0 1 16 0M12 12a4 4 0 1 0 0-8"/></svg>
                Voters
            </label></div>

            <div class="tab"><label>
                <svg width="18" height="18" viewBox="0 0 24 24"><path d="M4 7h16M4 12h16M4 17h10"/></svg>
                Ballots
            </label></div>

            <div class="tab"><label>
                <svg width="18" height="18" viewBox="0 0 24 24"><path d="M12 3v12m0 0 4-4m-4 4-4-4M4 19h16"/></svg>
                Export
            </label></div>
        </div>

        <!-- Results Panel -->
        <div class="results-box">
            <div class="result-item">
                <span class="candidate-name">Johnson Losuk Taban</span>
                <span class="votes">1,284 Votes</span>
            </div>
            <div class="result-item">
                <span class="candidate-name">Tamandani Dorothy</span>
                <span class="votes">1,109 Votes</span>
            </div>
            <div class="result-item">
                <span class="candidate-name">Other Candidates</span>
                <span class="votes">432 Votes</span>
            </div>
        </div>
    </div>

    <div class="footer">&copy; Fortress Electoral Commission 2025</div>

</body>
</html>
