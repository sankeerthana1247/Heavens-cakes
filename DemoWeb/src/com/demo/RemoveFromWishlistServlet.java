package com.demo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

@WebServlet("/RemoveFromWishlistServlet")
public class RemoveFromWishlistServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            List<Item1> wishlistItems = (List<Item1>) session.getAttribute("wishlistItems");
            if (wishlistItems != null) {
                String itemName = request.getParameter("itemName");
                String itemPrice = request.getParameter("itemPrice");
                String imageUrl = request.getParameter("imageUrl");
                String description = request.getParameter("description");

                Item1 itemToRemove = null;
                for (Item1 item : wishlistItems) {
                    if (item.getItemName().equals(itemName) &&
                        String.valueOf(item.getItemPrice()).equals(itemPrice) &&
                        item.getImageUrl().equals(imageUrl) &&
                        item.getDescription().equals(description)) {
                        itemToRemove = item;
                        break;
                    }
                }

                if (itemToRemove != null) {
                    wishlistItems.remove(itemToRemove);
                }

                session.setAttribute("wishlistItems", wishlistItems);
                response.sendRedirect("wishlist.jsp");
            }
        }
    }
}
