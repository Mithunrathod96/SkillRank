<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SkillRank | Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #0e141e;
            color: #e9ecef;
            font-family: 'Inter', sans-serif;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-card {
            background-color: #1a2332;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.5);
            width: 100%;
            max-width: 400px;
            border: 1px solid rgba(255,255,255,0.1);
        }

        .brand {
            font-weight: 700;
            font-size: 1.5rem;
            margin-bottom: 30px;
            text-align: center;
        }

        .brand span {
            color: #007bff;
        }

        .form-control {
            background-color: #212c3d;
            border: 1px solid #334155;
            color: #fff;
            padding: 12px;
        }

        .form-control:focus {
            background-color: #212c3d;
            border-color: #007bff;
            box-shadow: none;
            color: #fff;
        }

        .btn-login {
            background-color: #007bff;
            border: none;
            color: #fff;
            font-weight: 600;
            padding: 12px;
            width: 100%;
            margin-top: 20px;
        }

        .btn-login:hover {
            background-color: #0056b3;
        }

        .link-text {
            text-align: center;
            margin-top: 20px;
            color: #adb5bd;
        }

        .link-text a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>

    <div class="login-card">
        <div class="brand"><span>Skill</span>Rank</div>
        <h4 class="text-center mb-4">Login to Your Account</h4>
        
        <c:if test="${not empty error}">
            <div class="alert alert-danger" role="alert">
                ${error}
            </div>
        </c:if>

        <c:if test="${not empty success}">
            <div class="alert alert-success" role="alert">
                ${success}
            </div>
        </c:if>
        
        <form action="/login" method="post">
            <div class="mb-3">
                <label for="email" class="form-label text-muted small">Email Address</label>
                <input type="email" class="form-control" id="email" name="username" required placeholder="Enter your email">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label text-muted small">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            
            <button type="submit" class="btn btn-login">Log In</button>
        </form>

        <div class="link-text">
            Don't have an account? <a href="/register">Sign Up Free</a>
        </div>
        <div class="link-text mt-2">
            <a href="/" class="small text-muted"><i class="fas fa-arrow-left me-1"></i> Back to Home</a>
        </div>
    </div>

</body>
</html>
