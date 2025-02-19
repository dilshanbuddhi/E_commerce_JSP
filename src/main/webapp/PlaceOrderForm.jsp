<%@ page import="java.util.List" %>
<%@ page import="org.example.ecommerrce_web.entity.Product" %><%--
  Created by IntelliJ IDEA.
  User: Buddhi
  Date: 1/23/2025
  Time: 7:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400;700&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

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
            margin-top: 30px;
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
            width: 23%;
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

        .img-fluid {
            max-width: 61%;
            height: auto;
        }

        .btn-heart {
            margin-left: 20px;
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
            font-size: 75px;
            color: #443e30;
            border-radius: 30px;
            background: linear-gradient(90deg, rgba(244,225,176,1) 0%, rgba(255,225,198,1) 35%, rgba(252,245,238,1) 62%, rgba(255,255,255,1) 100%);        }

        #mainSet{
            display: flex;
            flex-direction: row;
            justify-content: center;
        }
    </style>

</head>

<body>
<%
    // Check if the userId is already in the session
    String userId = (String) session.getAttribute("userId");
    System.out.println(userId + " : User ID placeorder.jsp");

    boolean isLoggedIn = (userId != null);
    if (isLoggedIn) {
        System.out.println("User is logged in");
%>
<script>
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
    System.out.println("User is not logged in");
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

<section class="hero-section py-5">
    <div class="container">
        <div class="row align-items-center">


            <div class="col-md-6" id="text">
                <h1 class="display-4">Single <span>Product</span></h1>
                <p>Home/Pages/Single product</p>
            </div>

        <%--    <div class="col-md-6">
                <img src="images/banner-img.png" alt="Dog with toy" height="450" width="350" />
            </div>--%>
        </div>
    </div>
</section>


<%
    Product product = (Product) request.getAttribute("product");
    System.out.println(product);
%>

<div class="container my-5">
    <div class="row align-items-center" id="mainSet">
        <!-- Product Image Section -->
        <div class="col-md-6">
            <img src="<%= request.getContextPath() %>/uploads/<%= product.getImageUrl() %>" alt="Product Image" class="img-fluid shadow-sm rounded" style="border-radius: 16px;">
        </div>

        <!-- Product Details Section -->
        <div class="col-md-6">
            <!-- Product Title -->
            <h1 class="display-4 fw-bold" style="color: #2c3e50;"><%= product.getName() %></h1>


            <!-- Product Description -->
            <p class="lead text-muted" style="font-size: 1.2rem;"><%= product.getDescription() %></p>

            <!-- Product Price -->
            <p class="text-primary" style="font-size: 2rem; font-weight: 600;">
                Rs <%= product.getPrice() %>/=
            </p>

            <!-- Stock Information -->
            <p class="text-muted" style="font-size: 1rem;">Only <%= product.getQuantity() %> left in stock</p>

            <!-- Add to Cart and Wishlist Buttons Below -->
            <div class="d-flex mt-4">
                <!-- Add to Cart Button -->
                <button class="btn btn-add-cart" data-bs-toggle="modal" data-bs-target="#orderModal" style="font-size: 1rem;">
                    Place Order
                </button>

                <!-- Wishlist Button -->
                <button class="btn-heart" data-bs-toggle="modal" data-bs-target="#addToCartModal<%= product.getId() %>">
                    <i class="bi bi-cart"></i>
                </button>
            </div>
        </div>
    </div>
</div>

<!-- Order Modal -->

<div class="modal fade" id="orderModal" tabindex="-1" aria-labelledby="orderModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content rounded-3 shadow-lg">
            <div class="modal-header border-0" style="background-color: #2c3e50; color: #fff;">
                <h5 class="modal-title" id="orderModalLabel">🛒 Confirm Your Order</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <!-- Order Summary Section -->
                <h6 class="fw-bold" style="color: #34495e;">Product: <%= product.getName() %></h6>
                <p style="color: #7f8c8d;">Description: <%= product.getDescription() %></p>
                <p class="fw-bold text-primary">Price: Rs <%= product.getPrice() %>/=</p>

                <!-- Quantity Control -->

                <div class="d-flex align-items-center justify-content-between">
                    <p style="color: #95a5a6;">Quantity: <span id="orderQuantity" class="fw-bold">In Stock : <%= product.getQuantity() %></span></p>
                    <button class="btn btn-outline-secondary btn-sm" id="decreaseQty" style="border-radius: 50%; width: 32px; height: 32px;" onclick="updateQuantity(-1)">-</button>
                    <input type="text" id="quantityInput" class="form-control text-center" value="1" style="width: 50px;" readonly>
                    <button class="btn btn-outline-secondary btn-sm" id="increaseQty" style="border-radius: 50%; width: 32px; height: 32px;" onclick="updateQuantity(1)">+</button>
                </div>
                <hr>
                <p class="fw-bold" style="color: #16a085;">Total: Rs <span id="orderTotal"><%= product.getPrice() %></span>/=</p>
            </div>

            <div class="modal-footer border-0 d-flex justify-content-between">
                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" onclick="document.getElementById('placeOrderForm').submit()">Place Order</button>
            </div>
            <form action="placeOrder" method="post" id="placeOrderForm">
                <input type="hidden" name="qty" value="1" id="qty">
                <input type="hidden" name="pid" value="<%= product.getId() %>">
                <input type="hidden" name="uid" value="<%= userId %>">
                <input type="hidden" name="total" value="1" id="totalinput">
                <input type="hidden" name="price" value="<%= product.getPrice() %>">

            </form>

        </div>
    </div>
</div>
<footer class="text-center py-4">
    <div class="container">
        <p>&copy; 2025 Waggy Pet Shop. All Rights Reserved.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<!-- JavaScript to Handle Quantity and Total Calculation -->
<script>
    var pricePerUnit = <%= product.getPrice() %>;
    var quantity = 1;
    var maxQuantity = <%= product.getQuantity() %>; // Maximum stock available

    function updateQuantity(amount) {
        quantity += amount;
        if (quantity < 1) {
            quantity = 1;
        } else if (quantity >= maxQuantity) {
            quantity = maxQuantity;
            alert("Only " + maxQuantity + " items in stock.");
        }

        document.getElementById('quantityInput').value = quantity;
        document.getElementById('qty').value = quantity;

        var total = pricePerUnit * quantity;

        document.getElementById('orderTotal').innerText = total;
        document.getElementById('totalinput').value = total;
    }


</script>
<script>
    // JavaScript to dynamically update modal content
    const quantityInput = document.getElementById('quantityInput');
    const orderQuantity = document.getElementById('orderQuantity');
    const orderTotal = document.getElementById('orderTotal');
    const productPrice = parseFloat(<%= product.getPrice() %>);

    quantityInput.addEventListener('input', function() {
        const quantity = parseInt(quantityInput.value) || 1;
        const totalPrice = productPrice * quantity;
        console.log(totalPrice , " total eka")


        document.getElementById("totalinput").value = totalPrice;

        if (orderTotal) {
            orderTotal.textContent = totalPrice;
        }

        // Optional: log the updated total for debugging
        console.log("Updated total:", totalPrice);
    });

    function confirmOrder() {
        // Add the logic for placing the order, such as submitting a form or making an API call
        alert('Order confirmed!');
    }
</script>
<script>
    document.getElementById("decreaseQty").addEventListener("click", function() {
        var qtyInput = document.getElementById("quantityInput");
        var currentQty = parseInt(qtyInput.value);
        if (currentQty > 1) { // Make sure quantity doesn't go below 1
            qtyInput.value = currentQty - 1;
        }
    });

</script>
<script>
    function submitForm(button) {
        const form = button.closest('.container').querySelector('.productForm');
        form.submit();
    }
</script>
</body>
</html>
