<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
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

        .badge-warning {
            background-color: #f0ad4e;
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

        .btn-primary {
            margin-left: 15px;
            border-color: #6f6565;
            background-color: #bfb6a8;

        }

        .btn-primary:hover {
            background-color: #f8c78b;
        }

        footer {
            background-color: #f8f2eb;
        }

        footer p {
            font-size: 0.9rem;
        }

        #cardSec{
            padding:20px;
        }
        #cardset{
            padding-left:120px;
            padding-right:120px;
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
        }
        #cardSec h1{
            margin-left: 100px;
        }
        .card{
            margin:30px;
        }
    </style>
</head>
<body>

<!-- Header / Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">

            <img src="images/dog.png" height="40" width="40"/>  Waggy Pet Shop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Shop</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Blog</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
            <div class="d-flex align-items-center">
                <a href="registration.jsp" class="nav-link"><i class="bi bi-person"></i></a>
                <a href="#" class="nav-link"><i class="bi bi-heart"></i></a>
                <a href="#" class="nav-link position-relative">
                    <i class="bi bi-cart"></i></a>
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
                <h1 class="display-4">Best Destination For <span>Your Pets</span></h1>
                <p>Save 10 - 20% off</p>
                <a href="#" class="btn btn-primary">Shop Now</a>
            </div>

            <div class="col-md-6">
                <img src="images/banner-img.png" alt="Dog with toy" height="450" width="350" />
            </div>
        </div>
    </div>
</section>

<Section id="cardSec">
    <h1>Pet Clothes</h1>
    <div id="cardset">
        <div class="card" style="width: 12rem;">
            <img src="images/item1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Dog Clothes</h5>
                <p class="card-text">Description id here ..............................</p>
                <a href="#" class="btn btn-primary">Add To Cart</a>
            </div>
        </div>
        <div class="card" style="width: 12rem;">
            <img src="images/item1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Dog Clothes</h5>
                <p class="card-text">Description id here ..............................</p>
                <a href="#" class="btn btn-primary">Add To Cart</a>
            </div>
        </div>
        <div class="card" style="width: 12rem;">
            <img src="images/item1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Dog Clothes</h5>
                <p class="card-text">Description id here ..............................</p>
                <a href="#" class="btn btn-primary">Add To Cart</a>
            </div>
        </div>
        <div class="card" style="width: 12rem;">
            <img src="images/item1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Dog Clothes</h5>
                <p class="card-text">Description id here ..............................</p>
                <a href="#" class="btn btn-primary">Add To Cart</a>
            </div>
        </div>
        <div class="card" style="width: 12rem;">
            <img src="images/item1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Dog Clothes</h5>
                <p class="card-text">Description id here ..............................</p>
                <a href="#" class="btn btn-primary">Add To Cart</a>
            </div>
        </div>
    </div>


</Section>

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
