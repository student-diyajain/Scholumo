<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SchoLumo | AI-powered Textbooks</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #f7fafe 0%, #e4f0ff 100%);
        }

        .hero-section {
            padding: 80px 0;
        }

        .ai-badge {
            background-color: #e9f0ff;
            color: #3366ff;
            font-weight: bold;
            border-radius: 20px;
            padding: 5px 15px;
            font-size: 0.9rem;
            display: inline-block;
            margin-bottom: 15px;
        }

        .hero-heading {
            font-size: 3rem;
            font-weight: 700;
            line-height: 1.2;
        }

        .hero-subtext {
            font-size: 1.1rem;
            color: #555;
            margin-bottom: 30px;
        }

        .btn-primary {
            background-color: #2156f2;
            border-color: #2156f2;
        }

        .btn-primary:hover {
            background-color: #1d4ed8;
        }

        .navbar-brand img {
            height: 40px;
        }

        .navbar-dark .navbar-nav .nav-link {
            color: #fff;
        }

        .navbar-dark .navbar-nav .nav-link:hover {
            color: #ddd;
        }

        .btn-buy {
            background-color: #111c44;
            color: #fff;
            font-weight: bold;
        }

        .btn-buy:hover {
            background-color: #F5F5F5;
        }

        /* Image card styles */
        .image-card {
            position: relative;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s, box-shadow 0.3s;
            background: white;
        }

        .image-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.2);
        }

        .image-card img {
            width: 100%;
            border-radius: 20px;
        }

        /* Decorative shapes */
        .decorative-circle {
            position: absolute;
            border-radius: 50%;
            background: #e9f0ff;
            z-index: 0;
        }

        .circle1 { width: 100px; height: 100px; top: -30px; right: -30px; }
        .circle2 { width: 50px; height: 50px; bottom: -20px; left: -20px; }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4">
    <a class="navbar-brand" href="#">
        <img src="/images/logo.png" alt="Lumo Logo" height=50px />
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav me-3">
            <li class="nav-item">
                <a class="nav-link" href="https://lumo.study/#featureofbook">Features</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="https://lumo.study/#testimonials">Testimonials</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="https://lumo.study/#faqs">FAQs</a>
            </li>
        </ul>
        <a href="productPage" class="btn btn-buy">Buy Now!</a>
    </div>
</nav>

<!-- Hero Section -->
<div class="container hero-section position-relative">
    <div class="row align-items-center">
        <!-- Left content -->
        <div class="col-md-6">
            <div class="ai-badge">🚀 AI-powered Textbook</div>
            <h1 class="hero-heading">Crack Boards<br>with Lumo</h1>
            <p class="hero-subtext">
                Lumo combines expertly crafted books with an AI app to help students Learn, Understand, Master, and Outperform.
            </p>
            <a href="productPage" class="btn btn-primary btn-lg">Start Learning</a>
        </div>

        <!-- Right image -->
        <div class="col-md-6 text-center position-relative">
            <div class="image-card mx-auto">
                <img src="/images/book.png" alt="Lumo Books">
                <div class="decorative-circle circle1"></div>
                <div class="decorative-circle circle2"></div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

