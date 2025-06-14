<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f4f8;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .login-container {
                background-color: #ffffff;
                padding: 30px;
                border-radius: 12px;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                width: 320px;
            }
            h1 {
                text-align: center;
                color: #333333;
                margin-bottom: 20px;
            }
            table {
                width: 100%;
            }
            td {
                padding: 8px 0;
            }
            input[type="text"], input[type="password"] {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 6px;
                box-sizing: border-box;
            }
            input[type="submit"] {
                background-color: #007bff;
                color: white;
                border: none;
                padding: 10px;
                width: 100%;
                border-radius: 6px;
                cursor: pointer;
                font-weight: bold;
                margin-top: 10px;
            }
            input[type="submit"]:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="login-container">
            <h1>Login</h1>
            <form action="j_security_check" method="POST">
                <table>
                    <tr>
                        <td>Username</td>
                        <td>
                            <input type="text" name="j_username" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <input type="text" name="j_password" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="LOGIN"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
