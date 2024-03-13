<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Prototype Servlet Demo</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            margin-top: 50px;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin: 0 auto;
        }
        input {
            padding: 8px;
            margin-bottom: 10px;
            width: 100%;
            box-sizing: border-box;
        }
        button {
            background-color: #4caf50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {  
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Prototype Servlet Demo</h2>
        <form action="prototype" method="get">
            <label for="color">Color:</label>
            <input type="text" id="color" name="color" required><br>
            <label for="x">X Coordinate:</label>
            <input type="number" id="x" name="x" required><br>
            <label for="y">Y Coordinate:</label>
            <input type="number" id="y" name="y" required><br>
            <button type="submit">Create Prototype</button>
        </form>
        <hr>
        <h3>Cloned Button Properties:</h3>
        <p>X: ${clonedButton.x}</p>
        <p>Y: ${clonedButton.y}</p>
        <p>Color: ${clonedButton.color}</p>
    </div>
</body>
</html>
