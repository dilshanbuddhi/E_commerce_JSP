<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/19/2025
  Time: 8:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Category Management</title>
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

    .stats-section {
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

    .stats-section .stat-card:hover {
      transform: translateY(-10px);
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

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
          <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">User</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#">Category</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Product</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Order</a>
        </li>
      </ul>
      <div class="d-flex align-items-center">
        <a href="#" class="nav-link"><i class="bi bi-box-arrow-right"></i></a>
      </div>
    </div>
  </div>
</nav>
<br><br>
<!-- Hero Section -->
<section class="hero-section py-5">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-md-6" id="text">
        <br>
        <br>
        <h1>Category <span>Manage!</span></h1>
        <h2>Manage All <span>Categories from here</span></h2>
        <p>You can add, update, or delete product categories.</p>
      </div>
    </div>
  </div>
</section>

<br><br>
<section class="category-management-section py-5">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <!-- Add Category Button -->
        <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#addCategoryModal"><i class="bi bi-plus-square"></i> Add New Category</button>

        <!-- Category Table -->
        <table class="table table-bordered table-hover">
          <thead class="table-dark">
          <tr>
            <th>ID</th>
            <th>Category Name</th>
            <th>Description</th>
            <th>Actions</th>
          </tr>
          </thead>
          <tbody>
          <!-- Sample category data; replace with dynamic data -->
          <tr>
            <td>1</td>
            <td>Pet Food</td>
            <td>All types of pet food products</td>
            <td>
              <button class="btn btn-sm btn-success" data-bs-toggle="modal" data-bs-target="#editCategoryModal"><i class="bi bi-pencil"></i> Edit</button>
              <button class="btn btn-sm btn-danger"><i class="bi bi-trash"></i> Delete</button>
            </td>
          </tr>
          <!-- More categories can be dynamically added here -->
          </tbody>
        </table>
      </div>
    </div>
  </div>
</section>

<!-- Add Category Modal -->
<div class="modal fade" id="addCategoryModal" tabindex="-1" aria-labelledby="addCategoryModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addCategoryModalLabel">Add New Category</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label for="categoryName" class="form-label">Category Name</label>
            <input type="text" class="form-control" id="categoryName" required>
          </div>
          <div class="mb-3">
            <label for="categoryDescription" class="form-label">Description</label>
            <textarea class="form-control" id="categoryDescription" rows="3"></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Add Category</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Edit Category Modal -->
<div class="modal fade" id="editCategoryModal" tabindex="-1" aria-labelledby="editCategoryModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editCategoryModalLabel">Edit Category</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label for="editCategoryName" class="form-label">Category Name</label>
            <input type="text" class="form-control" id="editCategoryName" value="Pet Food" required>
          </div>
          <div class="mb-3">
            <label for="editCategoryDescription" class="form-label">Description</label>
            <textarea class="form-control" id="editCategoryDescription" rows="3">All types of pet food products</textarea>
          </div>
          <button type="submit" class="btn btn-success">Update Category</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="text-center py-4">
  <div class="container">
    <p class="mb-0">&copy; 2025 Waggy Pet Shop. All Rights Reserved.</p>
  </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
