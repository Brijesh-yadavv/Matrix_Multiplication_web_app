<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Matrix Multiplication Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        h1, h2 {
            color: #343a40;
            text-align: center;
        }
        table {
            width: auto;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ced4da;
        }
        th {
            background-color: #007bff;
            color: #fff;
        }
        td {
            background-color: #fff;
            color: #343a40;
        }
         button:hover {
            background-color: #0056b3;
        }
        a {
            display: block;
            padding: 10px 20px;
            background-color: #007bff; /* Blue color */
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            text-align:center
        }
    </style>
</head>
<body>
    <h1>Matrix Multiplication Result</h1>
    <h2>Result:</h2>
    <table>
        <% int[][] result = (int[][]) request.getAttribute("result");
           for (int[] row : result) { %>
            <tr>
            <% for (int val : row) { %>
                <td><%= val %></td>
            <% } %>
            </tr>
        <% } %>
    </table>
    <a href="/matrixmultiplication">Go back to input page</a>
    
</body>
</html>
