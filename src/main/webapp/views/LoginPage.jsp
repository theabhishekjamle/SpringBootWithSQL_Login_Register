<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - Cool UI</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #74ebd5, #9face6);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: white;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            animation: slide-in 0.5s ease;
        }

        @keyframes slide-in {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .login-container h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            transition: border 0.3s;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #6c5ce7;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background-color: #6c5ce7;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background-color: #4834d4;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #555;
        }

        .footer a {
            color: #6c5ce7;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Login</h2>
    <form action="loginForm" method="post">
        <input type="text" name="email" placeholder="Email" required />
        <input type="password" name="password" placeholder="Password" required />
        <button class="btn" type="submit">Login</button>
    </form>
    <div class="footer">
        Don’t have an account? <a href="registrationPage">Register</a>
    </div>
</div>

</body>
</html>
