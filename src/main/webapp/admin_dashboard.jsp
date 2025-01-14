<%--
  Created by IntelliJ IDEA.
  User: Buddhi
  Date: 1/14/2025
  Time: 7:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: #ffeede;
        }

        .navbar {
            background-color: #f5d5b2;
        }

        .card {
            border-radius: 15px;
            transition: transform 0.3s ease-in-out;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .card-title {
            font-weight: bold;
        }

        .card-text {
            color: #6c757d;
        }

        .btn-custom {
            background-color: #ef7f4b;
            color: white;
            border: none;
        }

        .btn-custom:hover {
            background-color: #dc5b22;
        }

        .container {
            margin-top: 50px;
        }

        .icon {
            font-size: 40px;
            color: #ef7f4b;
        }

        .card-footer {
            margin-top: auto;
        }

        #set{
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            flex-direction: row;
        }
        #set div{
            padding: 20px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#" style="color: #dc5b22; font-weight: bold; font-size: 20px">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">User </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Product </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Category </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Order </a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
                <button id="logout" class="btn btn-outline-danger" type="submit" style="margin-left: 10px">Logout</button>
            </form>
        </div>
    </div>
</nav>

<div class="container">
    <div id="set">
        <!-- Product Management Card -->
        <div class="col-md-4 mb-4">
            <div class="card h-100 d-flex flex-column text-center p-3">
                <div class="card-body">
                    <i class="icon bi bi-box-seam"></i>
                    <h5 class="card-title">Product Management</h5>
                    <p class="card-text">Add, update, view, or delete products in the store.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-custom">Manage Products</a>
                </div>
            </div>
        </div>

        <!-- Category Management Card -->
        <div class="col-md-4 mb-4">
            <div class="card h-100 d-flex flex-column text-center p-3">
                <div class="card-body">
                    <i class="icon bi bi-tags"></i>
                    <h5 class="card-title">Category Management</h5>
                    <p class="card-text">Add, view, update, or delete product categories.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-custom">Manage Categories</a>
                </div>
            </div>
        </div>

        <!-- Order Management Card -->
        <div class="col-md-4 mb-4">
            <div class="card h-100 d-flex flex-column text-center p-3">
                <div class="card-body">
                    <i class="icon bi bi-receipt"></i>
                    <h5 class="card-title">Order Management</h5>
                    <p class="card-text">View and manage customer orders.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-custom">View Orders</a>
                </div>
            </div>
        </div>

        <!-- User Management Card -->
        <div class="col-md-4 mb-4">
            <div class="card h-100 d-flex flex-column text-center p-3">
                <div class="card-body">
                    <i class="icon bi bi-person"></i>
                    <h5 class="card-title">User Management</h5>
                    <p class="card-text">Activate, deactivate, or view customer accounts.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-custom">Manage Users</a>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script src="JQ/jquery-3.7.1.min.js"></script>

<script>
    $("#logout").on("click", function (e) {
        e.preventDefault(); // Prevent default action (if it's a link)
        Swal.fire({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Yes, logout !"
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = "index.jsp"; // Replace 'login.html' with the actual login page URL
            }
        });
    });
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
