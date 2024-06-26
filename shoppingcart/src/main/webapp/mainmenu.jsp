<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form Selection</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        h1 {
            text-align: center;
            margin-top: 50px;
            font-size: 26px; /* Increase font size */
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 60%; /* Adjust the width as needed */
            margin: auto; /* Center horizontally */
        }
        .form-link {
            text-decoration: none;
            color: #fff;
            background-color: #007bff; /* Blue color */
            border: 1px solid #007bff;
            padding: 20px 40px;
            border-radius:20px;
            display: block;
            text-align: center;
            transition: background-color 0.3s ease;
            margin: 10px; /* Adjust margin as needed */
            font-size: 18px; /* Increase font size */
            width: 500px; /* Adjust width */
            height: 50px; /* Adjust height */
            line-height: 60px; /* Center align text vertically */
        }
        .form-link:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        /* Responsive styles */
        @media screen and (max-width: 600px) {
            .container {
                flex-direction: column;
            }
            .form-container {
                flex-direction: column;
                width: 80%;
            }
            .form-link {
                width: 100%;
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div>
            <h1>WELCOME TO SHOPPING CART</h1>
            <div class="form-container">
                <a href="menu.jsp" class="form-link">MERCHANT FORM</a>
                <a href="customermenu.jsp" class="form-link">CUSTOMER FORM</a>
            </div>
        </div>
    </div>
</body>
</html>
