<%@ page import="org.example.ecommerrce_web.entity.Category" %>
<%@ page import="java.util.List" %><%--
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
  <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css" rel="stylesheet">

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
          <a class="nav-link" href="admin_dashboard.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addUser">User</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="saveCategory">Category</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="getProductList">Product</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="orderView.jsp">Order</a>
        </li>
      </ul>
      <div class="d-flex align-items-center">
        <!-- Logout Icon -->
        <a href="# " id="logoutLink" class="nav-link"><i class="bi bi-box-arrow-right"></i></a>
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

          <%
            List<Category> categories = (List<Category>) request.getAttribute("categories");
            if (categories != null && !categories.isEmpty()) {
                for (Category category : categories) {
          %>
          <tr>
            <td><%= category.getId() %></td>
            <td><%= category.getName() %></td>
            <td><%= category.getDescription() %></td>
            <td>
              <button class="btn btn-sm btn-success"
                      data-bs-toggle="modal"
                      data-bs-target="#editCategoryModal"
                      data-id="<%= category.getId() %>"
                      data-name="<%= category.getName() %>"
                      data-description="<%= category.getDescription() %>">
                <i class="bi bi-pencil"></i> Edit
              </button>
              <button class="btn btn-sm btn-danger"
                      data-bs-toggle="modal"
                      data-bs-target="#deleteCategoryModal"
                      data-id="<%= category.getId() %>">
                <i class="bi bi-trash"></i> Delete
              </button>
            </td>
          </tr>
          <% } } %>

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
        <form action="saveCategory" method="post">
          <div class="mb-3">
            <label for="categoryName" class="form-label">Category Name</label>
            <input name="name" type="text" class="form-control" id="categoryName" required>
          </div>
          <div class="mb-3">
            <label for="categoryDescription" class="form-label">Description</label>
            <textarea name="description" class="form-control" id="categoryDescription" rows="3"></textarea>
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
        <form action="updateCategory" method="post">
          <div class="mb-3">
            <label for="editCategoryId" class="form-label">Category Id</label>
            <input name="id" type="text" class="form-control" id="editCategoryId"  required>
          </div>

          <div class="mb-3">
            <label for="editCategoryName" class="form-label">Category Name</label>
            <input name="name" type="text" class="form-control" id="editCategoryName" required>
          </div>
          <div class="mb-3">
            <label for="editCategoryDescription" class="form-label">Description</label>
            <textarea name="description" class="form-control" id="editCategoryDescription" rows="3">All types of pet food products</textarea>
          </div>
          <button type="submit" class="btn btn-success">Update Category</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Delete Confirmation Modal -->
<div class="modal fade" id="deleteCategoryModal" tabindex="-1" aria-labelledby="deleteCategoryModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="deleteCategoryModalLabel">Confirm Deletion</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Are you sure you want to delete this category?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <form id="deleteCategoryForm" action="deleteCategory" method="post">
          <!-- Hidden input to store the category ID -->
          <input type="hidden" id="deleteCategoryId" name="id">
          <button type="submit" class="btn btn-danger">Delete</button>
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
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
  // Get the edit modal element
  const editCategoryModal = document.getElementById('editCategoryModal');

  // Add event listener to the modal when it is about to be shown
  editCategoryModal.addEventListener('show.bs.modal', function (event) {
    // Button that triggered the modal
    const button = event.relatedTarget;

    // Extract info from data-* attributes
    const categoryId = button.getAttribute('data-id');
    const categoryName = button.getAttribute('data-name');
    const categoryDescription = button.getAttribute('data-description');

    // Get the input fields in the modal
    const editCategoryNameInput = document.getElementById('editCategoryName');
    const editCategoryDescriptionInput = document.getElementById('editCategoryDescription');
    const editCategoryIdInput = document.getElementById('editCategoryId'); // if you want to pass the ID

    // Update the modal's fields with the selected category data
    editCategoryIdInput.value = categoryId;
    editCategoryNameInput.value = categoryName;
    editCategoryDescriptionInput.value = categoryDescription;

    // Optional: If you have a hidden field for category ID
    if (editCategoryIdInput) {
      editCategoryIdInput.value = categoryId;
    }
  });
</script>

<script>
  document.getElementById("logoutLink").addEventListener("click", function(event) {
    // Prevent the default link behavior
    event.preventDefault();

    // Use SweetAlert2 for confirmation
    Swal.fire({
      title: 'Are you sure?',
      text: "You will be logged out!",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Yes, log out!'
    }).then((result) => {
      // If the user confirms, redirect to index.jsp
      if (result.isConfirmed) {
        // Redirect after showing success message
        window.location.href = "index.jsp";
      }
    });
  });
</script>
<script>
  // Get the delete modal element
  const deleteCategoryModal = document.getElementById('deleteCategoryModal');

  // Add event listener to the modal when it is about to be shown
  deleteCategoryModal.addEventListener('show.bs.modal', function (event) {
    // Button that triggered the modal
    const button = event.relatedTarget;

    // Extract category ID from data-id attribute
    const categoryId = button.getAttribute('data-id');

    // Get the hidden input field in the delete form
    const deleteCategoryIdInput = document.getElementById('deleteCategoryId');

    // Set the category ID in the hidden input field
    deleteCategoryIdInput.value = categoryId;
  });
</script>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
