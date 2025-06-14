<%-- 
    Document   : viewAllDecryptedMessage
    Created on : Jun 13, 2025, 2:38:10 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Messages</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f0f8ff;
                margin: 0;
                padding: 50px;
                text-align: center;
            }

            h1 {
                color: #2c3e50;
                font-size: 36px;
                margin-bottom: 20px;
            }

            p {
                font-size: 18px;
                color: #333;
                margin-bottom: 30px;
            }

            form {
                display: inline-block;
            }

            input[type="submit"] {
                background-color: #28a745;
                color: white;
                border: none;
                padding: 10px 25px;
                font-size: 16px;
                border-radius: 8px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            input[type="submit"]:hover {
                background-color: #218838;
            }

            table {
                margin: 0 auto;
            }
        </style>
    </head>
    <body>
        <%
            HttpSession sess = (HttpSession)request.getSession();
            String name = (String)sess.getAttribute("name");
            String pc_name = (String)sess.getAttribute("pc_name");
        %>
        <h1>View All Messages</h1>
        <p>Hey <%=name%>, I'm <%=pc_name%>. Click the button below to view all your decrypted messages.</p>

        <form action="viewAllDecrytedMessage.do" method="POST">
            <input type="submit" value="View All Messages"/>
        </form>
    </body>
</html>
