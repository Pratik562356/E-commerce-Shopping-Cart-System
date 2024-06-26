<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ecommerce Entry Page</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        overflow-x: hidden;
        background-color: #f8f9fa;
    }
    .bg-animation {
        position: fixed;
        width: 100%;
        height: 100%;
        z-index: -1;
        top: 0;
        left: 0;
        background: linear-gradient(to right, #f064b9, #fb8b24);
        animation: gradient 15s ease infinite;
    }
    @keyframes gradient {
        0% {
            background-position: 0% 50%;
        }
        50% {
            background-position: 100% 50%;
        }
        100% {
            background-position: 0% 50%;
        }
    }
    .content {
        padding: 20px;
    }
    .heading {
        font-size: 3rem;
        color: #ffffff;
        text-align: center;
        margin-top: 100px;
    }
    .btn-group {
        text-align: center;
        margin-top: 30px;
    }
</style>
</head>
<body>
<div class="bg-animation"></div>
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-6 content">
            <h1 class="heading">${message}</h1>
            <div class="btn-group">
                <a href="addcustomer" class="btn btn-primary btn-lg mr-3">Register Customer</a>
                <a href="customerloginform.jsp" class="btn btn-success btn-lg">LogIn Customer</a>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap JS (optional) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
