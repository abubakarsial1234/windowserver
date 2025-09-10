<%@ Page Language="C#" %>
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
                // Get the current universal time (UTC)
                DateTime utcTime = DateTime.UtcNow;
                // Add 5 hours to convert it to Pakistan Standard Time (UTC+5)
                DateTime pstTime = utcTime.AddHours(5);
                Response.Write(pstTime.ToString("F"));
            %>
        </p>
        <a href="/frontend/index.html">Go back to Frontend</a>
    </div>
</body>
</html>

