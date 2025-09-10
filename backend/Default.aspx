<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
    <title>Backend Response</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body { 
            font-family: 'Poppins', sans-serif; 
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            color: #333;
        }
        .container { 
            padding: 40px; 
            background-color: white;
            border-radius: 15px; 
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 500px;
            width: 90%;
            transition: transform 0.3s ease;
        }
        .container:hover {
            transform: translateY(-5px);
        }
        h1 {
            color: #2c3e50;
            margin-bottom: 10px;
            font-weight: 600;
        }
        p {
            color: #555;
            font-size: 1.1rem;
            line-height: 1.6;
        }
        .time-display {
            font-size: 1.2rem;
            font-weight: 600;
            color: #3498db;
            margin: 20px 0;
            padding: 15px;
            background-color: #ecf0f1;
            border-radius: 8px;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }
        .time-display svg {
            width: 24px;
            height: 24px;
            stroke: #3498db;
        }
        .back-link {
            display: inline-block;
            margin-top: 30px;
            padding: 12px 25px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 50px;
            font-weight: 600;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .back-link:hover {
            background-color: #2980b9;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>ASP.NET Backend Response</h1>
        <p>Salaam from the backend server!</p>
        <div class="time-display">
            <!-- Clock Icon SVG -->
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
            <span>
            <% 
                // Get the current universal time (UTC)
                DateTime utcTime = DateTime.UtcNow;
                // Add 5 hours to convert it to Pakistan Standard Time (UTC+5)
                DateTime pstTime = utcTime.AddHours(5);
                Response.Write(pstTime.ToString("F"));
            %>
            </span>
        </div>
        <br>
        <a href="/frontend/index.html" class="back-link">Go back to Frontend</a>
    </div>
</body>
</html>

