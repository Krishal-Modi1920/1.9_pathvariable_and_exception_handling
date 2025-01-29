<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error - Something Went Wrong</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
            color: #721c24;
            text-align: center;
            padding: 50px;
        }
        .error-container {
            display: inline-block;
            padding: 30px;
            border-radius: 8px;
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
        }
        h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            margin-bottom: 30px;
        }
        .btn {
            padding: 10px 20px;
            background-color: #f44336;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }
        .btn:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Oops! Something Went Wrong</h1>
        <h2>${msg}</h2>
        <p>We encountered an issue while processing your request. Please try again later.</p>
        <a href="javascript:history.back()" class="btn">Go Back</a>
    </div>
</body>
</html>
