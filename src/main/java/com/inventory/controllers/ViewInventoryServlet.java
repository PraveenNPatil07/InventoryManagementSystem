package com.inventory.controllers;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.inventory.models.Item;
import com.inventory.utils.DBUtil;

@WebServlet("/ViewInventoryServlet")
public class ViewInventoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Item> items = DBUtil.getItems();
        request.setAttribute("items", items);
        request.getRequestDispatcher("viewInventory.jsp").forward(request, response);
    }
}
