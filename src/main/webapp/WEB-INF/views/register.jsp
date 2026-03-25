<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SkillRank | Sign Up</title>
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
            max-width: 450px;
            border: 1px solid rgba(255,255,255,0.1);
        }

        .brand {
            font-weight: 700;
            font-size: 1.5rem;
            margin-bottom: 20px;
            text-align: center;
        }

        .brand span {
            color: #007bff;
        }

        .form-control, .form-select {
            background-color: #212c3d;
            border: 1px solid #334155;
            color: #fff !important;
            padding: 10px;
        }

        .form-control:focus, .form-select:focus {
            background-color: #212c3d;
            border-color: #007bff;
            box-shadow: none;
            color: #fff;
        }

        .btn-register {
            background-color: #007bff;
            border: none;
            color: #fff;
            font-weight: 600;
            padding: 12px;
            width: 100%;
            margin-top: 20px;
        }

        .btn-register:hover {
            background-color: #0056b3;
        }

        .form-label {
            color: #adb5bd;
            font-size: 0.85rem;
            margin-bottom: 5px;
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
        <h4 class="text-center mb-4">Create Your Profile</h4>

        <c:if test="${not empty error}">
            <div class="alert alert-danger" role="alert">
                ${error}
            </div>
        </c:if>
        
        <form:form action="/register" method="post" modelAttribute="user">
            <div class="mb-3">
                <label for="username" class="form-label">Full Name</label>
                <form:input path="username" class="form-control" id="username" placeholder="Enter your name" required="required" />
            </div>
            
            <div class="mb-3">
                <label for="email" class="form-label">Email Address</label>
                <form:input type="email" path="email" class="form-control" id="email" placeholder="example@gmail.com" required="required" />
            </div>
            
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <form:password path="password" class="form-control" id="password" required="required" />
            </div>

            <div class="mb-3">
                <label for="role" class="form-label">I am a</label>
                <form:select path="role" class="form-select" id="role">
                    <option value="USER">Developer</option>
                    <option value="RECRUITER">Hiring Manager</option>
                    <option value="ADMIN">Administrator</option>
                </form:select>
            </div>
            
            <button type="submit" class="btn btn-register">Create Account</button>
        </form:form>

        <div class="link-text">
            Already have an account? <a href="/login">Log In</a>
        </div>
        <div class="link-text mt-2">
            <a href="/" class="small text-muted"><i class="fas fa-arrow-left me-1"></i> Back to Home</a>
        </div>
    </div>

</body>
</html>
