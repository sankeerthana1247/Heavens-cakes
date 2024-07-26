package com.demo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public CartServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirect to cart display page
        response.sendRedirect("cartDisplay.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve values from form or request parameters
        String itemName = request.getParameter("itemName");
        double itemPrice = Double.parseDouble(request.getParameter("itemPrice"));
        String imageUrl = request.getParameter("imageUrl");
        String description = request.getParameter("description");

        // Create a new Item object
        Item newItem = new Item(itemName, itemPrice, imageUrl, description);

        // Add the new item to the session cart
        HttpSession session = request.getSession();
        List<Item> cartItems = (List<Item>) session.getAttribute("cartItems");
        if (cartItems == null) {
            cartItems = new ArrayList<>();
            session.setAttribute("cartItems", cartItems);
        }
        cartItems.add(newItem);

        // Redirect to cart display page
        response.sendRedirect("cartDisplay.jsp");
    }
}
