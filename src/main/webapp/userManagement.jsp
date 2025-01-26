<%@ page import="java.util.List" %>
<%@ page import="org.example.ecommerrce_web.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/19/2025
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>user management</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400;700&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

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
<%
    String isSuccess=request.getParameter("userSaved");
    System.out.println("isSuccess"+isSuccess);
    if (isSuccess!=null){
%>
        <script>
            Swal.fire({
                position: 'center',
                icon: 'success',
                title: 'User Saved Successfully',
                showConfirmButton: false,
                timer: 1500
            });
        </script>
<%
    }
%>



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
                    <a class="nav-link active" href="admin_dashboard.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addUser">User</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="saveCategory">Category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="getProductList">Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="getAllOrders">Order</a>
                </li>
            </ul>
            <div class="d-flex align-items-center">
                <!-- Logout Icon -->
                <a href="#" id="logoutLink" class="nav-link"><i class="bi bi-box-arrow-right"></i></a>
            </div>
        </div>
    </div>
</nav>

<!-- Search Bar -->
<br><br>

<!-- Hero Section -->
<section class="hero-section py-5">
    <div class="container">
        <div class="row align-items-center">

            <div class="col-md-6" id="text">
                <br>
                <br>
                <h1>User <span>Management!</span></h1>
                <h2>Manage All <span>Users from here</span></h2>
                <p>you can add/update/delete all users</p>
            </div>

        </div>
    </div>
</section>
<br><br>

<section class="user-management-section py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- Add User Button -->
                <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#addUserModal">
                    <i class="bi bi-person-plus"></i> Add New User
                </button>

                <table class="table table-bordered table-hover">
                    <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        List<User> users = (List<User>) request.getAttribute("users");
                        if (users != null && !users.isEmpty()) {
                            for (User user : users) {
                    %>
                    <tr>
                        <td><%= user.getUserId() %></td>
                        <td><%= user.getUserName() %></td>
                        <td><%= user.getEmail() %></td>
                        <td><%= user.getRole() %></td>
                        <td>
                            <button id="edit-btn" class="btn btn-sm btn-success"
                                    data-bs-toggle="modal"
                                    data-bs-target="#editUserModal"
                                    data-id="<%= user.getUserId() %>"
                                    data-username="<%= user.getUserName() %>"
                                    data-email="<%= user.getEmail() %>"
                                    data-role="<%= user.getRole() %>">
                                <i class="bi bi-pencil"></i> Edit
                            </button>
                            <button id="delete-btn" class="btn btn-sm btn-danger"
                                    data-bs-toggle="modal"
                                    data-bs-target="#deleteUserModal"
                                    data-id="<%= user.getUserId() %>">
                                <i class="bi bi-trash"></i> Delete
                            </button>

                        </td>
                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="5" class="text-center">No users found</td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<!-- Add User Modal -->
<div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="addUserModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addUserModalLabel">Add New User</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="addUser" method="post">
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input name="name" type="text" class="form-control" id="username" required>
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input name="email" type="email" class="form-control" id="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input name="password" type="password" class="form-control" id="password">
                    </div>
                    <div class="mb-3">
                        <label for="role" class="form-label">Role</label>
                        <select class="form-select" id="role" name="role" required>
                            <option value="Admin">Admin</option>
                            <option value="User">User</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Add User</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Edit User Modal -->
<div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="editUserModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editUserModalLabel">Edit User</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="updateUser" method="post">
                    <div class="mb-3">
                        <label for="editid" class="form-label">UserID</label>
                        <input name="id" type="text" class="form-control" id="editid" required>
                    </div>
                    <div class="mb-3">
                        <label for="editUsername" class="form-label">Username</label>
                        <input name="name" type="text" class="form-control" id="editUsername"  required>
                    </div>
                    <div class="mb-3">
                        <label for="editEmail" class="form-label">Email</label>
                        <input name="email" type="email" class="form-control" id="editEmail"  required>
                    </div>
                    <div class="mb-3">
                        <label for="editRole" class="form-label">Role</label>
                        <select class="form-select" id="editRole" name="role" required>
                            <option value="Admin">Admin</option>
                            <option value="User">User</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-success">Update User</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Delete User Confirmation Modal -->
<div class="modal fade" id="deleteUserModal" tabindex="-1" aria-labelledby="deleteUserModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteUserModalLabel">Confirm Delete</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Are you sure you want to delete this user?</p>
            </div>
            <div class="modal-footer">
                <form id="deleteUserForm" action="deleteUser" method="post">
                    <input type="hidden" name="id" id="deleteUserId">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="text-center py-4">
    <div class="container">
        <p>&copy; 2025 Waggy Pet Shop. All Rights Reserved.</p>
    </div>
</footer>

<!-- Include jQuery -->
<script src="JQ/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
    // Add an event listener to the logout link
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
    // jQuery event listener for edit button click
    $(document).on('click', '#edit-btn', function () {
        // Get user data from the data attributes of the clicked button
        var userId = $(this).data('id');
        var username = $(this).data('username');
        var email = $(this).data('email');
        var role = $(this).data('role');

        // Set the form fields with the user data
        $('#editid').val(userId);
        $('#editUsername').val(username);
        $('#editEmail').val(email);
        $('#editRole').val(role);
    });


        // Get the delete modal element
        const deleteUserModal = document.getElementById('deleteUserModal');

        // Add an event listener to the modal when it is about to be shown
        deleteUserModal.addEventListener('show.bs.modal', function (event) {
        // Button that triggered the modal
        const button = event.relatedTarget;

        // Extract user ID from data-* attribute
        const userId = button.getAttribute('data-id');

        // Get the delete modal hidden input
        const deleteUserIdInput = document.getElementById('deleteUserId');

        // Set the hidden input value with the user ID
        deleteUserIdInput.value = userId;
    });

</script>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
