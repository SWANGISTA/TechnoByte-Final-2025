<%-- 
    Document   : EncrypteMessage
    Created on : Jun 13, 2025, 12:50:10 PM
    Author     : USER
--%>

<%@page import="za.ac.tut.entity.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Encrypted Message</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f5f9ff;
                margin: 0;
                padding: 40px;
                text-align: center;
            }

            h1 {
                color: #0056b3;
            }

            p {
                font-size: 18px;
                margin-bottom: 30px;
            }

            textarea {
                width: 80%;
                padding: 15px;
                border: 1px solid #ccc;
                border-radius: 8px;
                resize: none;
                margin-bottom: 20px;
                font-size: 16px;
            }

            form {
                margin: 20px auto;
                width: 80%;
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

            table {
                margin: 0 auto;
            }

            td {
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <%
            String name = (String) request.getAttribute("name");
            String pc_name = (String) request.getAttribute("pc_name");
            Message ms = (Message) request.getAttribute("message");
        %>
        <h1>Encrypted Message</h1>
        <p>
            Okay <%= name %>, your message has been encrypted successfully by <%= pc_name %>.
        </p>

        <textarea readonly rows="5">
<%= ms != null ? ms.getCipherText() : "No message encrypted." %>
        </textarea>

        <form action="MidEncrypter.do" method="POST">
            <textarea name="message" cols="30" rows="8" placeholder="Enter another message to encrypt..."></textarea> 
            <br/>
            <input type="submit" value="Send"/>
        </form>

        <form action="EndSession.do" method="POST">
            <table>
                <tr>
                    <td>DONE</td>
                    <td>
                        <input type="submit" value="END"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
