<%--
  Created by IntelliJ IDEA.
  User: Buddhi
  Date: 1/14/2025
  Time: 7:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Waggy Pet Shop</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400;700&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    <style>
        /* Applying the playful Baloo 2 font to key sections */
        body {
            font-family: 'Baloo 2', cursive;
        }

        .py-5 {
            padding-top: 0rem !important;
        }

        .hero-section {
            padding-top: 0;
            background-color: #f8f2eb;
        }

        .hero-section h1 {
            color: #6c757d;
            font-weight: lighter;
            font-size: 4rem;
        }

        .hero-section span {
            color: orange;
        }

        .hero-section img {
            max-width: 100%;
        }


        .navbar-brand img {
            width: 50px;
        }

        .nav-link {
            font-size: 1.1rem;
        }

        #text{
            margin-top: -20px;
        }

        footer {
            background-color: #f8f2eb;
        }

        footer p {
            font-size: 0.9rem;
        }

        /* Style for the navigation links */
        .nav-link {
            color: #888; /* Ash/gray color for non-active links */
            transition: color 0.3s ease;
        }

        /* Style for the active navigation link */
        .nav-link.active {
            color: #FFA500; /* Orange color for the active link */
        }

        /* Hover effect for non-active links */
        .nav-link:hover {
            color: #555; /* Darker shade of gray for hover effect */
        }

        #cardSec h1{
            margin-left: 100px;
        }
        .stats-section{
            padding-top: 50px;
        }
        .stats-section .stat-card {
            background-color: #f8f9fa;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .stats-section .stat-card h3 {
            font-size: 1.5rem;
            color: #6c757d;
            margin-bottom: 10px;
        }

        .stats-section .stat-card .stat-number {
            font-size: 2.5rem;
            font-weight: bold;
            color: #FF8C00;
        }

        /* Add hover effect for a more interactive feel */
        .stats-section .stat-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        /* Adjusting margins and padding for better spacing */
        .stats-section .col-md-3 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<!-- Header / Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="images/dog.png" height="40" width="40"/> Waggy Pet Shop
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="admin_dashboard.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addUser">User</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="saveCategory">Category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="productManagement.jsp">Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="orderView.jsp">Order</a>
                </li>
            </ul>
            <div class="d-flex align-items-center">
                <!-- Logout Icon -->
                <a href="#" class="nav-link"><i class="bi bi-box-arrow-right"></i></a>
            </div>
        </div>
    </div>
</nav>

<!-- Search Bar -->
<div class="container my-4">
    <div class="input-group">
        <input type="text" class="form-control" placeholder="Search For More Than 10,000 Products">
        <button class="btn btn-outline-secondary" type="button"><i class="bi bi-search"></i></button>
    </div>
</div>

<!-- Hero Section -->
<section class="hero-section py-5">
    <div class="container">
        <div class="row align-items-center">


            <div class="col-md-6" id="text">
                <br>
                <br>
                <h1>Welcome <span>Admin!</span></h1>
                <h2>Manage Your <span>Pet Shop</span> Effortlessly</h2>
                <p>Take control of products, users, orders, and categories in one place.</p>
            </div>

        </div>
    </div>
</section>

<section class="stats-section">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="stat-card">
                    <h3>Products</h3>
                    <p class="stat-number">150</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="stat-card">
                    <h3>Orders</h3>
                    <p class="stat-number">300</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="stat-card">
                    <h3>Users</h3>
                    <p class="stat-number">120</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="stat-card">
                    <h3>Categories</h3>
                    <p class="stat-number">12</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Footer -->
<footer class="text-center py-4">
    <div class="container">
        <p>&copy; 2025 Waggy Pet Shop. All Rights Reserved.</p>
    </div>
</footer>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
