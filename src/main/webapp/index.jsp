<%@ page import="org.example.ecommerrce_web.entity.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.ecommerrce_web.entity.Category" %>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    <style>
        body {
            font-family: 'Baloo 2', cursive !important;
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
            margin-left: 30%;
            margin-top: 54px;
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
            padding-left:50px;
            padding-right:50px;
            display: flex;
            justify-content: center;
            flex-direction: row;
            flex-wrap: wrap;
        }
        #cardSec h1{
            margin-left: 100px;
        }

        #cardset {
            padding-left: 50px;
            padding-right: 50px;
            display: flex;
            justify-content: center;
            flex-direction: row;
            flex-wrap: wrap;
        }

        .card {
            margin: 30px;
            width: 14rem;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 15px;
            font-family: 'Baloo 2', cursive !important;
            transition: transform 0.3s ease, box-shadow 0.3s ease;

        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card h5 {
            font-size: 2.2rem;
            color: #333;
            font-family: 'Baloo 2', cursive !important;
        }

        .card-price {
            color: #c2973b;
            font-size: 1.4rem;
            font-family: 'Baloo 2', cursive !important;
        }

        .btn-add-cart {
            width: 50%;
            padding: 10px 0;
            font-weight: lighter;
            border-radius: 5px;
            border: 2px solid #333;
            background-color: transparent;
            color: #333;
            transition: transform 0.3s ease, background-color 0.3s ease, color 0.3s ease;
            margin-bottom: 10px;
        }

        .btn-add-cart:hover {
            background-color: #e58f48; /* Orange color on hover */
            color: #fff; /* White text on hover */
            border-color: #592e0f; /* Border changes to match the button color */
            transform: scale(1.2);
        }


        .btn-heart {
            border-radius: 50%;
            width: 50px;
            height: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
            border: 2px solid #333;
            background-color: transparent;
            transition: transform 0.3s ease, background-color 0.3s ease, color 0.3s ease;
        }

        /* Heart Icon Default Style */
        .btn-heart i {
            color: #554e57; /* Initial heart color */
            font-size: 2.4rem;
            transition: transform 0.3s ease, color 0.3s ease;
        }

        /* Hover Effects */
        .btn-heart:hover {
            border-color: #ffffff;
            background-color: #d6aaec; /* Orange background on hover */
            transform: scale(1.2); /* Scale button up on hover */
        }

        .btn-heart:hover i {
            color: #f108e6; /* Change heart color to white on hover */
            transform: scale(1.2); /* Slightly scale up the heart icon */
        }
        .categoryName {
            font-size: 60px;
            color: #443e30;
            border-radius: 30px;
            background: linear-gradient(90deg, rgba(244,225,176,1) 0%, rgba(255,225,198,1) 35%, rgba(252,245,238,1) 62%, rgba(255,255,255,1) 100%);        }

    </style>
</head>
<body>
<%
    String userId = request.getParameter("userId");
    System.out.println(userId + " :User ID");
    boolean isLoggedIn = (userId != null);
    System.out.println(isLoggedIn + " : isLoggedIn");
    if (userId != null) {
        System.out.println("logged in");
%>
<script>
    console.log("Script loaded.");

    // Pass the isLoggedIn value as a string to JS
    let loggedIn = "<%= isLoggedIn ? "true" : "false" %>";
    console.log(loggedIn + " : loggedIn status");

    window.addEventListener('DOMContentLoaded', function () {

        var loginLink = document.getElementById("loginLink");
        var profileLink = document.getElementById("profileLink");

        if (loginLink && profileLink) {
            loginLink.style.display = "none";
            profileLink.style.display = "block";
        }
    });
</script>
<%
} else {
    System.out.println("not logged in");
%>
<script>
    window.addEventListener('DOMContentLoaded', function () {
        var loginLink = document.getElementById("loginLink");
        var profileLink = document.getElementById("profileLink");

        if (loginLink && profileLink) {
            loginLink.style.display = "block";
            profileLink.style.display = "none";
        }
    });
</script>
<%
    }
%>

<!-- Header / Navbar -->
<nav class="navbar navbar-expand-lg navbar-light " style="background-color:#bfbfbf;">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="images/dog.png" height="40" width="40"/>  Waggy Pet Shop
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="getAllProductForCustomer">Home</a>
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
                <a href="#" id="profileLink" class="nav-link" style="display: none;"><i class="bi bi-person"></i></a>
                <a href="registration.jsp" id="loginLink" class="nav-link" style="display: block;">
                    <i class="bi bi-box-arrow-in-right"></i>
                </a>
                <a href="#" class="nav-link"><i class="bi bi-heart"></i></a>
                <a href="#" class="nav-link position-relative" onclick="ifnavigate()">
                    <i class="bi bi-cart"></i></a>

            </div>
        </div>
    </div>
</nav>

<!-- Search Bar -->
<div class="container my-4">
    <%
        List<Category> categoriess = (List<Category>) request.getAttribute("categories");
    %>

    <!-- Dropdown for category names -->
    <div class="input-group mb-3">
        <!-- Dropdown to select category -->
        <form action="getProductViceCategory" id="searchForm">
            <select name="categoryId" id="categoryDropdown" class="form-select mb-4" onchange="handleCategoryChange()">
                <option value="all">All Categories</option>
                <%
                    if (categoriess != null) {
                        for (Category category : categoriess) {
                %>
                <option value="<%= category.getId() %>"><%= category.getName() %></option>
                <%
                        }
                    }
                %>
            </select>
        </form>

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


<%--
<Section id="cardSec">
    <div id="cardset" class="row g-4">
        <%
            List<Category> categories = (List<Category>) request.getAttribute("categories");
            List<Product> products = (List<Product>) request.getAttribute("products");

            if (categories != null) {
                for (Category category : categories) {
        %>

        <!-- Category Name -->
        <h1 class="categoryName mb-4"><%= category.getName() %></h1>

        <%
            if (products != null) {
                for (Product product : products) {
                    if (product.getCategory().getId() == category.getId()) {
        %>

        <div class="card" style="width: 15rem; border-radius: 15px; overflow: hidden; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); padding: 15px;">
            <img src="<%= request.getContextPath() %>/uploads/<%= product.getImageUrl() %>" alt="Product Image" class="card-img-top" style="border-radius: 15px; height: 180px; object-fit: cover; margin-bottom: 15px;">

            <h5 class="card-title" style="font-size: 2.2rem; color: #333;"><%= product.getName() %></h5>
            <h5 class="card-title" style="font-size: 1.0rem; color: #333;"><%= product.getDescription() %></h5>

            <p class="card-price" style="color: #c4874a; font-size: 1.4rem;">Rs <%= product.getPrice() %>/=</p>

            <div style="display: flex; justify-content: space-between;">
                <form class="productForm" style="display: none;" method="get" action="getSingleProduct">
                    <input type="hidden" name="productId" value="<%= product.getId() %>">
                    <input type="hidden" name="userId" value="<%= userId %>">
                </form>
                <button class="btn btn-add-cart" onclick="submitForm(this)" >Add to Cart</button>
                <button class="btn-heart" data-bs-toggle="modal" data-bs-target="#addToCartModal<%= product.getId() %>">
                    <i class="bi bi-cart"></i>
                </button>
            </div>
        </div>

        <div class="modal fade" id="addToCartModal<%= product.getId() %>" tabindex="-1" aria-labelledby="addToCartModalLabel<%= product.getId() %>" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addToCartModalLabel<%= product.getId() %>">Add <%= product.getName() %> to Cart</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                            <!-- Hidden field for product ID -->
                            <input type="hidden" name="productId" value="<%= product.getId() %>">

                            <!-- Input field for quantity -->
                            <div class="mb-3">
                                <label for="quantity<%= product.getId() %>" class="form-label">Quantity</label>
                                <input type="number" class="form-control" id="quantity<%= product.getId() %>" name="quantity" value="1" min="1" required>
                            </div>

                            <!-- Price information (optional) -->
                            <div class="mb-3">
                                <label class="form-label">Unit Price:</label>
                                <p>$<%= product.getPrice() %></p>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary" onclick="addCart(this)">Add to Cart</button>
                            </div>
                    </div>
                </div>
            </div>
        </div>


        <%
                    }
                }
            }
        %>

        <%
                }
            }
        %>
    </div>
</Section>
--%>

<Section id="cardSec">
    <div id="cardset" class="row g-4">
        <%
            List<Category> categories = (List<Category>) request.getAttribute("categories");
            List<Product> products = (List<Product>) request.getAttribute("products");
            if (categories != null) {
                for (Category category : categories) {
        %>

        <h1 class="categoryName mb-4"><%= category.getName() %></h1>

        <%
            if (products != null) {
                for (Product product : products) {
                    if (product.getCategory().getId() == category.getId()) {
        %>

        <div class="card" style="width: 15rem; padding: 15px;">
            <img src="<%= request.getContextPath() %>/uploads/<%= product.getImageUrl() %>" alt="Product Image" class="card-img-top" style="height: 180px; object-fit: cover; margin-bottom: 15px;">
            <h5 class="card-title"><%= product.getName() %></h5>
            <p class="card-price">Rs <%= product.getPrice() %>/=</p>

            <div style="display: flex; justify-content: space-between;">
                <form class="productForm" style="display: none;" method="get" action="getSingleProduct">
                    <input type="hidden" name="productId" value="<%= product.getId() %>">
                    <input type="hidden" name="userId" value="<%= userId %>">
                </form>
                <button class="btn btn-add-cart" onclick="submit(this,'.productForm')">Get Now</button>
                <button class="btn-heart" data-bs-toggle="modal" data-bs-target="#addToCartModal<%= product.getId() %>">
                    <i class="bi bi-cart"></i>
                </button>
            </div>
        </div>

        <!-- Modal for Adding to Cart -->
        <div class="modal fade" id="addToCartModal<%= product.getId() %>" tabindex="-1" aria-labelledby="addToCartModalLabel<%= product.getId() %>" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addToCartModalLabel<%= product.getId() %>">Add <%= product.getName() %> to Cart</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <!-- Hidden field for product ID -->
                            <input type="hidden" name="productId" value="<%= product.getId() %>">

                            <!-- Quantity input -->
                            <div class="mb-3">
                                <label for="quantity<%= product.getId() %>" class="form-label">Quantity</label>
                                <input type="number" class="form-control" id="quantity<%= product.getId() %>" name="quantity" value="1" min="1" required>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" onclick="addCart(this)">Add to Cart</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <%
                    }
                }
            }
        %>

        <%
                }
            }
        %>
    </div>
</Section>

<footer class="text-center py-4">
    <div class="container">
        <p>&copy; 2025 Waggy Pet Shop. All Rights Reserved.</p>
    </div>
</footer>


<script src="JQ/jquery-3.7.1.min.js"></script>

<script>

    function ifnavigate() {
        let userid = <%= userId %>;  // Initialize userid here before using it
        console.log(userid, 'cart ekata yanawa nadda kiyna eka');

        if (userid == null || userid === "") {
            alert("Please login first");
        } else {
            window.location.href = "getCartData";
        }
    }

    function addCart(button) {
        let loginId = <%= userId %>;
        console.log(loginId, ' login id for add cart')
        if (loginId != null) {
            var form = $(button).closest('form');
            var productId = form.find('input[name="productId"]').val();
            var quantity = form.find('input[name="quantity"]').val();

            $.ajax({
                url: '/addToCart', // Your server endpoint
                type: 'POST',
                data: {
                    productId: productId,
                    quantity: quantity
                },
                success: function (response) {
                    // Handle success (e.g., show a message or update cart UI)
                    alert('Product added to cart successfully!');
                    // Optionally, close the modal
                    $(form).closest('.modal').modal('hide');
                },
                error: function (xhr, status, error) {
                    // Handle error
                    alert('Error adding product to cart: ' + error);
                }
            });
        } else {
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Please login first",
            });         }

    }

    function submit(button, link) {
        let loginId = <%= userId %>;
        console.log(loginId, "awa")
        console.log(link, "link eka")
        if (loginId != null) {
            console.log("null na")
            $(button).siblings(link).submit();
        } else {
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Please login first",
            });        }
    }

    function handleCategoryChange() {
        let dropdown = document.getElementById('categoryDropdown');
        let selectedValue = dropdown.value;

        if (selectedValue !== 'all') {
        document.getElementById('searchForm').submit();
    } else {
        console.log('All categories selected, not submitting the form.');
    }
    }


</script>

<!-- Footer -->
<script>
    function addCart(button) {
        var form = $(button).closest('form');
        var productId = form.find('input[name="productId"]').val();
        var quantity = form.find('input[name="quantity"]').val();

        console.log("Adding to cart:", productId, quantity);

        $.ajax({
            url: 'http://localhost:8080/E_Commerrce_Web_war_exploded/cartSave',
            method: 'POST',
            data: {
                productId: productId,
                quantity: quantity,
                userId : '<%= userId %>'
            },
            success: function(response) {
                console.log('Success:', response);
                alert('Product added to cart successfully!');
                $(form).closest('.modal').modal('hide');
            },
            error: function(xhr, status, error) {
                console.log('Error:', xhr.responseText);
                alert('Error adding product to cart: ' + error);
            }
        });
    }

    function submitForm(button) {
        var form = button.parentElement.querySelector('.productForm');
        form.submit();
    }
    function isloggin() {
        var loginLink = <%=isLoggedIn%>
        if (loginLink) {
            console.log("add to cart");
        }else {
            console.log('logging first')

        }
    }
</script>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
