<%-- 
    Document   : LLmessage
    Created on : Jun 13, 2025, 3:33:27 PM
    Author     : USER
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #fafafa;
                margin: 0;
                padding: 40px;
                color: #333;
            }

            h1 {
                color: #2c3e50;
                margin-bottom: 20px;
                text-align: center;
            }

            p {
                font-size: 18px;
                text-align: center;
                margin-bottom: 30px;
            }

            table.message-table {
                width: 90%;
                margin: 20px auto;
                border-collapse: collapse;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
                background-color: white;
                border-radius: 8px;
                overflow: hidden;
            }

            table.message-table td {
                padding: 10px 15px;
                vertical-align: top;
            }

            table.message-table tr:first-child td {
                font-weight: 600;
                color: #007bff;
            }

            textarea {
                width: 100%;
                height: 120px;
                margin-top: 10px;
                border: 1px solid #ccc;
                border-radius: 8px;
                padding: 10px;
                font-size: 15px;
                resize: vertical;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f9f9f9;
            }

            form {
                width: 90%;
                margin: 30px auto 0 auto;
                text-align: center;
            }

            input[type="submit"] {
                background-color: #dc3545;
                color: white;
                border: none;
                padding: 12px 30px;
                font-size: 18px;
                border-radius: 8px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            input[type="submit"]:hover {
                background-color: #b52a37;
            }
        </style>
    </head>
    <body>
         <h1>All Messages</h1>
        <%
          List<Message> allMessages  = (List<Message>)request.getAttribute("LLMessages");
          Message ms = new Message();
          HttpSession sess = (HttpSession)request.getSession();
          String name = (String)sess.getAttribute("name");
          String pc_name = (String)sess.getAttribute("pc_name");
        %>
       
        <p>Hey <%=name%>, I'm <%=pc_name%>. Below are all decrypted messages.</p>
        <%
         for(int x =  0 ; x < allMessages.size(); x++) {
             ms = allMessages.get(x);
        %>
        <table class="message-table">
            <tr>
                <td>Agent Name:</td>
                <td><%=ms.getAgentName()%></td>
                <td>Date:</td>
                <td><%=ms.getDateCreation()%></td>
            </tr>
            <tr>
                <td colspan="4">
                    <textarea readonly><%=ms.getCipherText()%></textarea>
                </td>
            </tr>
        </table>
        <% } %>
        
        <form action="EndSession.do" method="POST">
            <input type="submit" value="END"/>
        </form>
    </body>
</html>
