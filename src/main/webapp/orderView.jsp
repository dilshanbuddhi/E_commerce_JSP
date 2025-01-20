<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/20/2025
  Time: 8:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Management System</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400;700&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    <style>
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

        .navbar-brand img {
            width: 50px;
        }

        .nav-link {
            font-size: 1.1rem;
        }

        #text {
            margin-top: -20px;
        }

        footer {
            background-color: #f8f2eb;
        }

        footer p {
            font-size: 0.9rem;
        }

        .nav-link {
            color: #888;
            transition: color 0.3s ease;
        }

        .nav-link.active {
            color: #FFA500;
        }

        .nav-link:hover {
            color: #555;
        }

        #cardSec h1 {
            margin-left: 100px;
        }

        .product-management-section {
            padding-top: 50px;
        }

        .product-management-section .btn-primary {
            margin-bottom: 20px;
        }

        .table th, .table td {
            vertical-align: middle;
        }


        .modal-header {
            background-color: #FF8C00;
            color: white;
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
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">User</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Order</a>
                </li>
            </ul>
            <div class="d-flex align-items-center">
                <a href="#" class="nav-link"><i class="bi bi-box-arrow-right"></i></a>
            </div>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero-section py-5">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6" id="text">
                <br>
                <br>
                <h1>order <span>view!</span></h1>
                <h2>view All <span>orders here</span></h2>

            </div>
        </div>
    </div>
</section>

<br><br>
<section class="product-management-section py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <!-- Items Table -->
                <table class="table table-bordered table-hover">
                    <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Customer ID</th>
                        <th>Product ID</th>
                        <th>Price</th>
                        <th>Quantity</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>Sample Item</td>
                        <td>Category 1</td>
                        <td>$10.00</td>
                        <td>50</td>

                    </tr>
                    <!-- More items can be dynamically added here -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

</body>