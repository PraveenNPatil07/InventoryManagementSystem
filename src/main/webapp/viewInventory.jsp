<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.inventory.models.Item" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Inventory</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="text-center mt-5">Inventory</h2>
        <table class="table table-striped">
            <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>
        <%
            @SuppressWarnings("unchecked")
            List<Item> items = (List<Item>) request.getAttribute("items");
            if (items != null) {
                for (Item item : items) {
        %>
        <tr>
            <td><%= item.getId() %></td>
            <td><%= item.getName() %></td>
            <td><%= item.getQuantity() %></td>
            <td><%= item.getPrice() %></td>
            <td>
                <form action="UpdateItemServlet" method="post" style="display:inline;">
                    <input type="hidden" name="itemId" value="${item.id}">
                    <input type="submit" value="Update">
                </form>
                <form action="DeleteItemServlet" method="post" style="display:inline;">
                    <input type="hidden" name="itemId" value="${item.id}">
                    <input type="submit" value="Delete">
                </form>
        	</td>
        </tr>
        <%
                }
            }
        %>
        </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
