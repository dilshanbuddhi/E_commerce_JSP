<%--
  Created by IntelliJ IDEA.
  User: Buddhi
  Date: 1/14/2025
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        #registration_section {
            background: #9f9797;
            border-radius: 30px;
            height: 100vh;
            display: grid;
            grid-template-columns: 5fr 3fr;
        }

        #left {
            background-color: #ffeede;
            color: #fff;
            padding: 20px;
        }

        #right {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #fff;
            padding: 20px;
        }

        .card {
            width: 25rem;
            border-radius: 20px;
            padding: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border: none;
        }

        #left img {
            margin-top: 216px;
            margin-left: -227px;
        }
    </style>

</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


<section id="registration_section">
    <div id="right">
        <div class="card">
            <div class="card-body text-center">
                <p class="card-text" style="color: #6c757d;">Welcome!</p>
                <h2 class="card-title" style="color: #dc5b22; font-weight: bold; margin-bottom: 15px;">Sign Up</h2>
                <p class="card-text" style="color: #6c757d;">Please enter your details below to create an account.</p>
                <form action="registration" method="post">
                    <div class="mb-3 text-start">
                        <label for="name" class="form-label" style="font-size: 14px; color: #6c757d; font-weight: bold;">Full Name</label>
                        <input type="text" name="name" class="form-control" id="name" placeholder="Enter your full name" style="border-radius: 10px;">
                    </div>
                    <div class="mb-3 text-start">
                        <label for="email" class="form-label" style="font-size: 14px; color: #6c757d; font-weight: bold;">Email address</label>
                        <input type="email"name="email" class="form-control" id="email" placeholder="Enter your email" style="border-radius: 10px;">
                    </div>
                    <div class="mb-3 text-start">
                        <label for="password" class="form-label" style="font-size: 14px; color: #6c757d; font-weight: bold;">Password</label>
                        <input type="password"name="password" class="form-control" id="password" placeholder="Enter your password" style="border-radius: 10px;">
                    </div>
                    <div class="mb-3 text-start">
                        <label for="confirm_password" class="form-label" style="font-size: 14px; color: #6c757d; font-weight: bold;">Confirm Password</label>
                        <input type="password" name="confirm_password" class="form-control" id="confirm_password" placeholder="Confirm your password" style="border-radius: 10px;">
                    </div>
                    <br>
                    <button type="submit" class="btn" style="background: #dc5b22; color: white; font-size: 16px; padding: 10px 30px; border-radius: 10px; border: none; transition: all 0.3s ease;">Sign Up</button>
                </form>
                <br>
                <p style="color: #9f9797">Already have an account? <a href="index.jsp" style="color: #dc5b22">Sign In</a></p>
            </div>
        </div>
    </div>
    <div id="left">
        <img src="images/img.png" height="460" width="522"/>
    </div>
</section>



<%
    String msg = request.getParameter("errorpassword");
    if (msg != null) {
%>

<script>
    Swal.fire({
        icon: 'error',
        title: 'Oops...',
        text: 'Passwords do not match!',
    })
    document.getElementById("confirm_password").style.borderColor = "red";
</script>
<%
    }
%>



<script src="JQ/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>
