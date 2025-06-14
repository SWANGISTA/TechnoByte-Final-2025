<%-- 
    Document   : bye
    Created on : Jun 13, 2025, 2:31:50 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Goodbye</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f0f8ff;
                margin: 0;
                padding: 50px;
                text-align: center;
            }

            h1 {
                color: #ff4c4c;
                font-size: 36px;
                margin-bottom: 20px;
            }

            p {
                font-size: 20px;
                color: #333;
                margin-bottom: 30px;
            }

            a {
                text-decoration: none;
                color: #fff;
                background-color: #007bff;
                padding: 10px 20px;
                border-radius: 8px;
                font-size: 16px;
                transition: background-color 0.3s ease;
            }

            a:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <%
            String name = (String) request.getAttribute("name");
        %>
        <h1>End of Session</h1>
        <p>Bye!! Bye!! <%= name != null ? name : "Guest" %></p>
        <p>
            Click <a href="start.jsp">here</a> to start again
        </p>
    </body>
</html>
