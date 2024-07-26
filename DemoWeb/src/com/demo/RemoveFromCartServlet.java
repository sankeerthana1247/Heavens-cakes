package com.demo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.demo.Item;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/RemoveFromCartServlet")
public class RemoveFromCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            List<Item> cartItems = (List<Item>) session.getAttribute("cartItems");
            if (cartItems != null) {
                String itemName = request.getParameter("itemName");
                String itemPrice = request.getParameter("itemPrice");
                String imageUrl = request.getParameter("imageUrl");
                String description = request.getParameter("description");

                Item itemToRemove = null;
                for (Item item : cartItems) {
                    if (item.getItemName().equals(itemName) &&
                        String.valueOf(item.getItemPrice()).equals(itemPrice) &&
                        item.getImageUrl().equals(imageUrl) &&
                        item.getDescription().equals(description)) {
                        itemToRemove = item;
                        break;
                    }
                }

                if (itemToRemove != null) {
                    cartItems.remove(itemToRemove);
                }

                session.setAttribute("cartItems", cartItems);
                response.sendRedirect("cartDisplay.jsp");
            }
        }
    }
}
