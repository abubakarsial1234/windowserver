
<!DOCTYPE html>
<html>
<head>
    <title>Backend Response</title>
     <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .container { padding: 20px; border: 1px solid #ccc; border-radius: 8px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>ASP.NET Backend Response</h1>
        <p>Salaam from the backend server!</p>
        <p>Server Time (Pakistan Standard Time): 
            <% 
                // Set the time zone to Pakistan Standard Time
                TimeZoneInfo pstZone = TimeZoneInfo.FindSystemTimeZoneById("Pakistan Standard Time");
                DateTime pstTime = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, pstZone);
                Response.Write(pstTime.ToString("F"));
            %>
        </p>
        <a href="/frontend/index.html">Go back to Frontend</a>
    </div>
</body>
</html>
