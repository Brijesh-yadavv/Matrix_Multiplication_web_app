<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Matrix Multiplication Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1, h2 {
            color: #343a40;
            text-align: center;
        }
        textarea {
            width: 100%;
            height: 100px;
            resize: none;
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            display: block;
            margin: 0 auto;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
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
      
    </style>
</head>
<body>
    <div class="container">
        <h1>Matrix Multiplication Calculator</h1>
        <form action="multiply" method="post">
            <h2>Matrix A</h2>
            <textarea name="matrixA" rows="4" cols="10" placeholder="Enter matrix A"></textarea>

            <h2>Matrix B</h2>
            <textarea name="matrixB" rows="4" cols="10" placeholder="Enter matrix B"></textarea>

            <button type="submit">Calculate</button>
        </form>
    </div>
</body>
</html>


