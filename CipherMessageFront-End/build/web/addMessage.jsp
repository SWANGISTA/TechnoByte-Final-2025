<%-- 
    Document   : addMessage
    Created on : Jun 13, 2025, 12:43:49 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Message</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f5f9ff;
                margin: 0;
                padding: 40px;
                text-align: center;
            }

            h1 {
                color: #007acc;
            }

            p {
                font-size: 18px;
                margin-bottom: 30px;
            }

            textarea {
                width: 80%;
                height: 200px;
                padding: 15px;
                font-size: 16px;
                border: 1px solid #ccc;
                border-radius: 8px;
                resize: vertical;
                margin-bottom: 20px;
            }

            input[type="submit"] {
                background-color: #007bff;
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 6px;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            input[type="submit"]:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <h1>Send Message</h1>
        <p>Type your message below and click send to encrypt it.</p>
        <form action="EncrypteMessage.do" method="POST">
            <textarea name="message" placeholder="Type your message here..."></textarea> 
            <br/>
            <input type="submit" value="Send"/>
        </form>
    </body>
</html>
