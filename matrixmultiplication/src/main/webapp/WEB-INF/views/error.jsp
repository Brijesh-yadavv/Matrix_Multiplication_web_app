<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .error-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #dc3545; /* Red color */
            margin-bottom: 20px;
        }
        p {
            color: #343a40; /* Dark grey color */
            margin-bottom: 20px;
        }
        a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff; /* Blue color */
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #0056b3; /* Darker blue color on hover */
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Error</h1>
        <p>The number of columns in the first matrix must be equal to the number of rows in the second matrix.</p>
        <a href="/matrixmultiplication">Go back to input page</a>
    </div>
</body>
</html>
    