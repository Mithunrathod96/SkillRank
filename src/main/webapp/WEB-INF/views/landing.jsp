<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SkillRank | Code. Practice. Get Hired.</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-bg: #0e141e;
            --secondary-bg: #1a2332;
            --accent-color: #007bff;
            --text-main: #e9ecef;
            --text-muted: #adb5bd;
            --card-bg: #212c3d;
        }

        body {
            background-color: var(--primary-bg);
            color: var(--text-main);
            font-family: 'Inter', sans-serif;
            scroll-behavior: smooth;
        }

        .navbar {
            background-color: var(--primary-bg);
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            padding: 1rem 0;
            transition: all 0.3s ease;
        }

        .navbar-brand {
            font-weight: 700;
            font-size: 1.5rem;
            color: var(--text-main) !important;
            letter-spacing: -0.5px;
        }

        .navbar-brand span {
            color: var(--accent-color);
        }

        .nav-link {
            color: var(--text-muted) !important;
            font-weight: 500;
            margin: 0 10px;
            transition: color 0.3s;
        }

        .nav-link:hover {
            color: var(--accent-color) !important;
        }

        .btn-outline-custom {
            border: 1px solid var(--accent-color);
            color: var(--accent-color);
            font-weight: 600;
            padding: 8px 20px;
            border-radius: 6px;
            transition: all 0.3s;
        }

        .btn-outline-custom:hover {
            background-color: var(--accent-color);
            color: #fff;
        }

        .btn-primary-custom {
            background-color: var(--accent-color);
            border: none;
            color: #fff;
            font-weight: 600;
            padding: 8px 10px;
            border-radius: 6px;
            transition: all 0.3s;
        }

        .btn-primary-custom:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        /* Hero Section */
        .hero-section {
            padding: 120px 0 80px;
            background: radial-gradient(circle at top right, rgba(0, 123, 255, 0.1), transparent);
        }

        .hero-title {
            font-size: 4rem;
            font-weight: 800;
            line-height: 1.1;
            margin-bottom: 20px;
        }

        .hero-subtitle {
            font-size: 1.25rem;
            color: var(--text-muted);
            margin-bottom: 40px;
            max-width: 600px;
        }

        /* Feature Cards */
        .section-title {
            font-weight: 700;
            margin-bottom: 50px;
            text-align: center;
        }

        .feature-card {
            background-color: var(--card-bg);
            border: 1px solid rgba(255, 255, 255, 0.05);
            padding: 40px;
            border-radius: 12px;
            height: 100%;
            transition: all 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-10px);
            border-color: var(--accent-color);
        }

        .feature-icon {
            font-size: 2.5rem;
            color: var(--accent-color);
            margin-bottom: 20px;
        }

        /* Domain Badges */
        .domain-card {
            background-color: var(--secondary-bg);
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            border: 1px solid transparent;
            cursor: pointer;
            transition: all 0.2s;
        }

        .domain-card:hover {
            border-color: var(--accent-color);
            background-color: var(--card-bg);
        }

        /* Stats */
        .stats-section {
            background-color: var(--secondary-bg);
            padding: 60px 0;
            margin: 80px 0;
        }

        .stat-number {
            font-size: 2.5rem;
            font-weight: 700;
            color: var(--accent-color);
        }

        .stat-label {
            color: var(--text-muted);
            text-transform: uppercase;
            font-size: 0.85rem;
            letter-spacing: 1px;
        }

        /* Footer */
        footer {
            padding: 60px 0 30px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
        }

        .footer-logo {
            font-weight: 700;
            font-size: 1.5rem;
            margin-bottom: 20px;
            display: inline-block;
        }

        .footer-link {
            display: block;
            color: var(--text-muted);
            text-decoration: none;
            margin-bottom: 10px;
            transition: color 0.3s;
        }

        .footer-link:hover {
            color: var(--accent-color);
        }

        @media (max-width: 768px) {
            .hero-title {
                font-size: 2.5rem;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg sticky-top">
        <div class="container">
            <a class="navbar-brand" href="/"><span>Skill</span>Rank</a>
            <button class="navbar-toggler navbar-dark" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="#">Prepare</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Compete</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Jobs</a></li>
                </ul>
                <div class="d-flex gap-2">
                    <a href="/login" class="btn btn-outline-custom">Log In</a>
                    <a href="/register" class="btn btn-primary-custom px-4">Sign Up</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <header class="hero-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <h1 class="hero-title">Code. Practice.<br><span>Get Hired.</span></h1>
                    <p class="hero-subtitle">The standard for assessing developer skills. Help companies find the best talent and help developers sharpen their skills.</p>
                    <div class="d-flex gap-3 mt-4">
                        <a href="/register" class="btn btn-primary-custom btn-lg px-5">Join the Community</a>
                        <a href="#" class="btn btn-outline-custom btn-lg px-4">Explore Problems</a>
                    </div>
                </div>
                <div class="col-lg-6 d-none d-lg-block text-center">
                    <img src="https://images.unsplash.com/photo-1555066931-4365d14bab8c?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" alt="Coding Image" class="img-fluid rounded-3 shadow-lg" style="transform: perspective(1000px) rotateY(-10deg);">
                </div>
            </div>
        </div>
    </header>

    <!-- Features Section -->
    <section class="py-5" id="features">
        <div class="container">
            <h2 class="section-title">Master Your Skills</h2>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="feature-card">
                        <i class="fas fa-keyboard feature-icon"></i>
                        <h3>Practice Coding</h3>
                        <p class="text-muted">Master data structures, algorithms, and 30+ programming languages through interactive exercises.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-card">
                        <i class="fas fa-trophy feature-icon"></i>
                        <h3>Compete</h3>
                        <p class="text-muted">Participate in worldwide coding contests, rank up, and showcase your skills to the world.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-card">
                        <i class="fas fa-briefcase feature-icon"></i>
                        <h3>Get Jobs</h3>
                        <p class="text-muted">Connect with top tech companies looking for talented developers like you.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Domains Section -->
    <section class="py-5 bg-dark-subtle">
        <div class="container">
            <h2 class="section-title">Popular Domains</h2>
            <div class="row g-3">
                <div class="col-6 col-md-3">
                    <div class="domain-card">
                        <i class="fab fa-java fa-2x mb-3 text-warning"></i>
                        <h5>Java</h5>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="domain-card">
                        <i class="fab fa-python fa-2x mb-3 text-primary"></i>
                        <h5>Python</h5>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="domain-card">
                        <i class="fas fa-database fa-2x mb-3 text-info"></i>
                        <h5>SQL</h5>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="domain-card">
                        <i class="fas fa-project-diagram fa-2x mb-3 text-success"></i>
                        <h5>DSA</h5>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- How It Works -->
    <section class="py-5">
        <div class="container">
            <h2 class="section-title">How It Works</h2>
            <div class="row text-center g-4">
                <div class="col-md-3">
                    <div class="p-3">
                        <div class="bg-primary rounded-circle d-inline-flex align-items-center justify-content-center mb-4" style="width: 60px; height: 60px;">1</div>
                        <h4>Register</h4>
                        <p class="text-muted">Create your skill profile</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="p-3">
                        <div class="bg-primary rounded-circle d-inline-flex align-items-center justify-content-center mb-4" style="width: 60px; height: 60px;">2</div>
                        <h4>Practice</h4>
                        <p class="text-muted">Solve curated challenges</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="p-3">
                        <div class="bg-primary rounded-circle d-inline-flex align-items-center justify-content-center mb-4" style="width: 60px; height: 60px;">3</div>
                        <h4>Compete</h4>
                        <p class="text-muted">Win global contests</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="p-3">
                        <div class="bg-primary rounded-circle d-inline-flex align-items-center justify-content-center mb-4" style="width: 60px; height: 60px;">4</div>
                        <h4>Get Job</h4>
                        <p class="text-muted">Land your dream career</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Stats Section -->
    <div class="stats-section">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-4">
                    <div class="stat-number">500+</div>
                    <div class="stat-label">Coding Problems</div>
                </div>
                <div class="col-md-4">
                    <div class="stat-number">2M+</div>
                    <div class="stat-label">Developers</div>
                </div>
                <div class="col-md-4">
                    <div class="stat-number">10M+</div>
                    <div class="stat-label">Submissions</div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-4">
                    <div class="footer-logo"><span>Skill</span>Rank</div>
                    <p class="text-muted">The developer skill community that helps you grow and find your next big opportunity.</p>
                    <div class="d-flex gap-3">
                        <a href="#" class="text-muted"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-muted"><i class="fab fa-linkedin"></i></a>
                        <a href="#" class="text-muted"><i class="fab fa-github"></i></a>
                    </div>
                </div>
                <div class="col-6 col-lg-2 offset-lg-2">
                    <h5>Product</h5>
                    <a href="#" class="footer-link">Practice</a>
                    <a href="#" class="footer-link">Compete</a>
                    <a href="#" class="footer-link">Events</a>
                </div>
                <div class="col-6 col-lg-2">
                    <h5>Community</h5>
                    <a href="#" class="footer-link">Discussions</a>
                    <a href="#" class="footer-link">Blog</a>
                    <a href="#" class="footer-link">Leaderboard</a>
                </div>
                <div class="col-lg-2">
                    <h5>Support</h5>
                    <a href="#" class="footer-link">Help Center</a>
                    <a href="#" class="footer-link">Contact Us</a>
                    <a href="#" class="footer-link">Terms</a>
                </div>
            </div>
            <hr class="mt-5 opacity-10">
            <div class="text-center text-muted mt-4">
                <small>&copy; 2026 SkillRank. All rights reserved.</small>
            </div>
        </div>
    </footer>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
