<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SkillRank | Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            background-color: #0e141e;
            color: #e9ecef;
            font-family: 'Inter', sans-serif;
            min-height: 100vh;
        }

        .navbar {
            background-color: #1a2332;
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }

        .navbar-brand span {
            color: #007bff;
            font-weight: 700;
        }

        .dashboard-container {
            padding: 50px 0;
        }

        .welcome-card {
            background-color: #1a2332;
            padding: 40px;
            border-radius: 12px;
            border: 1px solid rgba(255,255,255,0.05);
            text-align: center;
        }

        .user-avatar {
            font-size: 4rem;
            color: #007bff;
            margin-bottom: 20px;
        }

        .role-badge {
            background-color: #007bff;
            color: white;
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 0.8rem;
            text-transform: uppercase;
            font-weight: 600;
        }

        .btn-logout {
            color: #ff4d4d;
            text-decoration: none;
            font-weight: 600;
        }

        .btn-logout:hover {
            color: #ff1a1a;
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand text-white" href="/"><span>Skill</span>Rank</a>
            <div class="ms-auto d-flex align-items-center">
                <span class="me-3 text-muted">Hi, ${user.username}</span>
                <a href="/logout" class="btn-logout"><i class="fas fa-sign-out-alt me-1"></i> Logout</a>
            </div>
        </div>
    </nav>

    <div class="container dashboard-container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="welcome-card">
                    <div class="user-avatar">
                        <i class="fas fa-user-circle"></i>
                    </div>
                    <h1 class="mb-2">Welcome to your Dashboard!</h1>
                    <p class="text-muted mb-4">Email: ${user.email}</p>
                    <div class="mb-4">
                        <span class="role-badge">${user.role}</span>
                    </div>
                    <hr class="opacity-10 my-4">
                    <p>Start practicing and competing to level up your ranking.</p>
                    <div class="d-flex gap-3 justify-content-center mt-4">
                        <button class="btn btn-outline-primary px-4">View Profile</button>
                        <button class="btn btn-primary px-4">Start Coding</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
