<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registeration Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(120deg, #84fab0 0%, #8fd3f4 100%);
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .register-container {
            background-color: white;
            padding: 40px 30px;
            border-radius: 15px;
            box-shadow: 0 8px 30px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 400px;
            animation: slide-in 0.6s ease;
        }

        @keyframes slide-in {
            from { opacity: 0; transform: translateY(40px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .register-container h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            outline: none;
            font-size: 15px;
            transition: border 0.3s;
        }

        input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus {
            border-color: #60c5f1;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background-color: #00b894;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #019875;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #555;
        }

        .footer a {
            color: #00b894;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="register-container">
    <h2>Create Account</h2>

    <form action="registerForm" method="post">
        <input type="text" name="name" placeholder="Full Name" required />
        <input type="email" name="email" placeholder="Email Address" required />
        <input type="text" name="username" placeholder="Username" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="text" name="phone" placeholder="Phone" required />

        <button class="btn" type="submit">Register</button>
    </form>
    <div class="footer">
        Already have an account? <a href="loginPage">Login</a>
    </div>
</div>

</body>
</html>
