<%-- 
    Document   : start
    Created on : Jun 13, 2025, 11:21:44 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Start Session</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f7f8;
                color: #333;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 100vh;
                margin: 0;
            }

            h1 {
                color: #007bff;
            }

            form {
                background-color: #ffffff;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            table {
                width: 100%;
            }

            td {
                padding: 10px;
            }

            input[type="text"] {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            input[type="submit"] {
                background-color: #007bff;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            input[type="submit"]:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <h1>Personal Information</h1>
        <form action="startSession.do" method="POST">
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" required /></td>
                </tr>
                <tr>
                    <td>Unique ID:</td>
                    <td><input type="text" name="uniqueID" required /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="submit" value="Start Session" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
