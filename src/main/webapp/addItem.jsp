<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Item</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <h2>Add Item</h2>
    <form action="AddItemServlet" method="post">
        <label for="name">Item Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity" required><br><br>
        <label for="price">Price:</label>
        <input type="text" id="price" name="price" required><br><br>
        <input type="submit" value="Add Item">
    </form>
</body>
</html>
