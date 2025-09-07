<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>LUMO | Sign In</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f7f7f7;
        }
        .login-card {
            max-width: 400px;
            margin: 80px auto;
            background: #fff;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        .login-card img {
            max-width: 150px;
            margin-bottom: 20px;
        }
        .btn-continue {
            background: #0056D2;
            border: none;
            font-size: 16px;
        }
        .btn-continue:hover {
            background: #0041a8;
        }
    </style>
</head>
<body>
    <div class="login-card">
        <!-- Logo -->
        <img src="images/logo.png" alt="LUMO Logo">
        
        <!-- Sign in form -->
        <h4 class="mb-3">Sign in</h4>
        <p class="text-muted">Enter your email and we'll send you a verification code</p>
        
        <form action="sendCode" method="post">
            <div class="mb-3">
                <input type="email" name="email" class="form-control" placeholder="Email" required>
            </div>
            <button type="submit" class="btn btn-continue w-100 py-2">Continue</button>
        </form>
        
        <div class="mt-3">
            <a href="https://lumostudy.com/60628434999/policies/28664823863.html?locale=en-IN" class="text-decoration-none">Privacy policy</a>
        </div>
    </div>
</body>
</html>
