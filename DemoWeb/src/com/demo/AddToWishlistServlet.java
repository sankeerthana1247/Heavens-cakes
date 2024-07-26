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

@WebServlet("/AddToWishlistServlet")
public class AddToWishlistServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AddToWishlistServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("wishlist.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String itemName = request.getParameter("itemName");
        double itemPrice = Double.parseDouble(request.getParameter("itemPrice"));
        String imageUrl = request.getParameter("imageUrl");
        String description = request.getParameter("description");

        Item1 newItem = new Item1(itemName, itemPrice, imageUrl, description);

        HttpSession session = request.getSession();
        List<Item1> wishlistItems = (List<Item1>) session.getAttribute("wishlistItems");
        if (wishlistItems == null) {
            wishlistItems = new ArrayList<>();
            session.setAttribute("wishlistItems", wishlistItems);
        }
        wishlistItems.add(newItem);

        response.sendRedirect("wishlist.jsp");
    }
}
