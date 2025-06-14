<%-- 
    Document   : menu
    Created on : Jun 13, 2025, 12:12:35 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f2f6fc;
                color: #333;
                display: flex;
                flex-direction: column;
                align-items: center;
                padding-top: 50px;
                margin: 0;
            }

            h1 {
                color: #007bff;
                font-size: 36px;
            }

            p {
                font-size: 20px;
                margin-bottom: 30px;
            }

            ol {
                list-style-type: decimal;
                padding-left: 0;
                width: 300px;
            }

            li {
                background-color: #ffffff;
                margin: 10px 0;
                padding: 12px 20px;
                border-radius: 8px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                transition: background-color 0.3s ease;
            }

            li:hover {
                background-color: #e6f0ff;
            }

            a {
                text-decoration: none;
                color: #007bff;
                font-weight: bold;
            }

            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <h1>Menu</h1>
        <%
            String name = (String) request.getAttribute("name");
            String pc_name = (String) request.getAttribute("pc_name");
        %>
        <p>
            Hello <%= (name != null) ? name : "Guest" %>, my name is <%= (pc_name != null) ? pc_name : "SPY_C" %>. Nice to meet you.
        </p>
        <ol>
            <li>
                <a href="addMessage.jsp">Send Encrypted Message</a>
            </li>
            <li>
                <a href="viewAllDecryptedMessage.jsp">View All Decrypted Messages</a>
            </li>
            <li>
                <a href="viewLongMessage.jsp">View Details of Long Message</a>
            </li>
        </ol>
    </body>
</html>
