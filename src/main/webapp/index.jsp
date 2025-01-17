<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        #login_section {
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
            width: 20rem;
            height: 29rem;
            border-radius: 10px;
            box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;        }
        #left img{
            margin-top: 216px;
            margin-left: -227px;
        }
    </style>

</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<section id="login_section">
    <div id="right">
        <div class="card" style="width: 22rem; border-radius: 20px; padding: 20px; box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); border: none;">
            <div class="card-body text-center">
                <p class="card-text" style="color: #6c757d;">Welcome Back.</p>
                <h2 class="card-title" style="color: #dc5b22; font-weight: bold; margin-bottom: 15px;">Sign In</h2>
                <p class="card-text" style="color: #6c757d;">Please enter your login details below.</p>
                <form action="login" method="post">
                    <div class="mb-3 text-start">
                        <label  for="email" class="form-label" style="font-size: 14px; color: #6c757d; font-weight: bold;">Email address</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" style="border-radius: 10px;">
                    </div>
                    <div class="mb-3 text-start">
                        <label for="password" class="form-label" style="font-size: 14px; color: #6c757d; font-weight: bold;">Password</label>
                        <input name="password" type="password" class="form-control" id="password" placeholder="Enter your password" style="border-radius: 10px;">
                    </div>
                    <br>
                    <button type="submit" class="btn" style="background: #dc5b22; color: white; font-size: 16px; padding: 10px 30px; border-radius: 10px; border: none; transition: all 0.3s ease;">Sign in</button>
                </form>
                <br>
                <p style="color: #9f9797">You dont have an account? <a href="registration.jsp" style="color: #dc5b22">Sign Up</a></p>
            </div>
        </div>
    </div>
    <div id="left">
        <img src="images/img.png" alt="" />

    </div>

</section>

<%
String message =  request.getParameter("error");
    System.out.println("jjjjjj"+message);
%>

<% if (message != null) { %>
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Passwords do not match!',
        })
   </script>
<% } %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>