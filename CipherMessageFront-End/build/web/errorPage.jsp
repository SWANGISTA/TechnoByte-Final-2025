<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Failed</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f8d7da;
                color: #721c24;
                margin: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .error-container {
                background-color: #ffffff;
                padding: 30px 40px;
                border-radius: 12px;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                border: 1px solid #f5c6cb;
                text-align: center;
            }

            h1 {
                color: #dc3545;
                margin-bottom: 20px;
            }

            a {
                color: #0056b3;
                text-decoration: none;
                font-weight: bold;
            }

            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="error-container">
            <h1>Login Failed</h1>
            <p>
                Login failed. Click <a href="start.jsp">here</a> to try again.
            </p>
        </div>
    </body>
</html>
