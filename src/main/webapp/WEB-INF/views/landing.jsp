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
            background-color: #ffffff;
            border-bottom: 1px solid #e1e4e8;
            padding: 0.75rem 0;
            transition: all 0.3s ease;
            box-shadow: 0 2px 4px rgba(0,0,0,0.04);
            position: relative;
        }

        .navbar-brand {
            font-weight: 800;
            font-size: 1.6rem;
            color: #000000 !important;
            letter-spacing: -1px;
            display: flex;
            align-items: center;
        }

        .navbar-toggler {
            border: none;
            padding: 0;
        }

        .navbar-toggler:focus {
            box-shadow: none;
        }

        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%280, 0, 0, 0.75%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e") !important;
        }

        .navbar-brand .logo-box {
            width: 14px;
            height: 14px;
            background-color: #27ab6b;
            margin-left: 4px;
            margin-top: -2px;
            border-radius: 1px;
            display: inline-block;
        }

        .nav-link {
            color: #39424e !important;
            font-weight: 500;
            margin: 0 15px;
            font-size: 0.95rem;
            transition: color 0.2s;
        }

        .nav-link:hover {
            color: #27ab6b !important;
        }

        .btn-login {
            color: #39424e;
            font-weight: 600;
            text-decoration: none;
            font-size: 0.95rem;
            margin-right: 20px;
            transition: color 0.2s;
        }

        .btn-login:hover {
            color: #27ab6b;
        }

        .btn-demo {
            border: 1px solid #e1e4e8;
            color: #000000;
            font-weight: 600;
            padding: 10px 24px;
            border-radius: 4px;
            font-size: 0.95rem;
            transition: all 0.2s;
        }

        .btn-demo:hover {
            background-color: #f3f7f7;
            border-color: #000000;
        }

        .btn-signup {
            background-color: #000000;
            color: #ffffff;
            font-weight: 600;
            padding: 10px 24px;
            border-radius: 4px;
            font-size: 0.95rem;
            border: none;
            transition: all 0.2s;
            margin-left: 10px;
        }

        .btn-signup:hover {
            background-color: #333333;
            color: #ffffff;
            transform: translateY(-1px);
        }

        /* Mega Menu Styles */
        .nav-item.dropdown-mega {
            position: static;
        }

        .mega-menu {
            position: absolute;
            top: calc(100% + 15px);
            left: 50%;
            transform: translateX(-50%) translateY(10px);
            width: 850px;
            background: #ffffff;
            border: 1px solid rgba(0,0,0,0.08);
            box-shadow: 0 15px 40px rgba(0,0,0,0.12);
            border-radius: 14px;
            padding: 40px;
            display: none;
            z-index: 1000;
            transition: all 0.35s cubic-bezier(0.2, 1, 0.3, 1);
            opacity: 0;
            pointer-events: none;
        }

        .mega-menu::before {
            display: none; 
        }

        /* Triangle on the Products link itself */
        .nav-item.dropdown-mega .nav-link {
            position: relative;
        }

        .nav-item.dropdown-mega .nav-link::after {
            content: '';
            position: absolute;
            bottom: -22px;
            left: 50%;
            transform: translateX(-50%) rotate(45deg);
            width: 14px;
            height: 14px;
            background: #ffffff;
            border-top: 1px solid rgba(0,0,0,0.1);
            border-left: 1px solid rgba(0,0,0,0.1);
            z-index: 1002;
            display: none;
        }

        @media (min-width: 992px) {
            .nav-item.dropdown-mega:hover .nav-link::after {
                display: block;
            }
            
            .nav-item.dropdown-mega:hover .mega-menu {
                display: block;
                opacity: 1;
                transform: translateX(-50%) translateY(0);
                pointer-events: auto;
            }
        }

        /* Add a small invisible bridge to prevent losing hover */
        .nav-item.dropdown-mega::after {
            content: '';
            position: absolute;
            top: 100%;
            left: 0;
            width: 100%;
            height: 20px;
            display: none;
        }

        .nav-item.dropdown-mega:hover::after {
            display: block;
        }

        .mega-menu-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            width: 100%;
        }

        .mega-menu-section {
            display: flex;
            flex-direction: column;
            gap: 25px;
        }

        .mega-menu-title {
            color: #727b84;
            text-transform: uppercase;
            font-size: 0.8rem;
            font-weight: 700;
            letter-spacing: 1px;
            margin-bottom: 10px;
        }

        .mega-menu-item {
            text-decoration: none;
            display: block;
            transition: all 0.2s;
        }

        .mega-menu-item:hover .mega-menu-item-title {
            color: #27ab6b;
        }

        .mega-menu-item-title {
            color: #000000;
            font-weight: 600;
            font-size: 1.05rem;
            margin-bottom: 4px;
            display: block;
        }

        .mega-menu-item-desc {
            color: #727b84;
            font-size: 0.9rem;
            font-weight: 400;
            line-height: 1.4;
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
            font-weight: 800;
            font-size: 1.6rem;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
        }

        .footer-logo .logo-box {
            width: 14px;
            height: 14px;
            background-color: #27ab6b;
            margin-left: 4px;
            margin-top: -2px;
            border-radius: 1px;
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
            <a class="navbar-brand" href="/">SkillRank<div class="logo-box"></div></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown-mega">
                        <a class="nav-link" href="#">Products</a>
                        <div class="mega-menu">
                            <div class="mega-menu-content">
                                <!-- Products Section -->
                                <div class="mega-menu-section">
                                    <div class="mega-menu-title">Products</div>
                                    <a href="#" class="mega-menu-item">
                                        <span class="mega-menu-item-title">Screen</span>
                                        <span class="mega-menu-item-desc">Save time and accelerate your hiring</span>
                                    </a>
                                    <a href="#" class="mega-menu-item">
                                        <span class="mega-menu-item-title">Interview</span>
                                        <span class="mega-menu-item-desc">Conduct stellar technical interviews</span>
                                    </a>
                                    <a href="#" class="mega-menu-item">
                                        <span class="mega-menu-item-title">Engage</span>
                                        <span class="mega-menu-item-desc">Promote your tech brand</span>
                                    </a>
                                    <a href="#" class="mega-menu-item">
                                        <span class="mega-menu-item-title">SkillUp</span>
                                        <span class="mega-menu-item-desc">Mobilize your tech talent</span>
                                    </a>
                                    <a href="#" class="mega-menu-item">
                                        <span class="mega-menu-item-title">Chakra</span>
                                        <span class="mega-menu-item-desc">Pre-screen with AI interviews</span>
                                    </a>
                                </div>
                                <!-- Features Section -->
                                <div class="mega-menu-section">
                                    <div class="mega-menu-title">Features</div>
                                    <a href="#" class="mega-menu-item">
                                        <span class="mega-menu-item-title">Certified Assessments</span>
                                        <span class="mega-menu-item-desc">Launch standardized, role-based tests in minutes</span>
                                    </a>
                                    <a href="#" class="mega-menu-item">
                                        <span class="mega-menu-item-title">Plagiarism Detection</span>
                                        <span class="mega-menu-item-desc">Ensure fairness with AI-powered plagiarism detection</span>
                                    </a>
                                    <a href="#" class="mega-menu-item">
                                        <span class="mega-menu-item-title">Real-World Questions</span>
                                        <span class="mega-menu-item-desc">Assess technical hires with real-world coding questions</span>
                                    </a>
                                    <a href="#" class="mega-menu-item">
                                        <span class="mega-menu-item-title">Integrations</span>
                                        <span class="mega-menu-item-desc">Seamlessly connect with your favorite tools</span>
                                    </a>
                                    <a href="#" class="mega-menu-item">
                                        <span class="mega-menu-item-title">AI Add-on</span>
                                        <span class="mega-menu-item-desc">Redefine hiring with integrity, depth and speed.</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="#">Solutions</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Resources</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Human Data</a></li>
                </ul>
                <div class="d-flex align-items-center">
                    <a href="/login" class="btn-login">Log In</a>
                    <a href="#" class="btn btn-demo">Request Demo</a>
                    <a href="/register" class="btn btn-signup">Create a free account</a>
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
                    <div class="footer-logo">SkillRank<div class="logo-box"></div></div>
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
