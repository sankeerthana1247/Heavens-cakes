package com.demo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/BuyServlet")
public class BuyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session1 = request.getSession(false);
        if (session1 != null) {
            List<Item> cartItems = (List<Item>) session1.getAttribute("cartItems");
            if (cartItems != null) {
                String itemName = request.getParameter("itemName");
                double itemPrice = Double.parseDouble(request.getParameter("itemPrice"));
                String imageUrl = request.getParameter("imageUrl");
                String description = request.getParameter("description");

                Item selectedItem = null;
                for (Item item : cartItems) {
                    if (item.getItemName().equals(itemName) &&
                        item.getItemPrice() == itemPrice &&
                        item.getImageUrl().equals(imageUrl) &&
                        item.getDescription().equals(description)) {
                        selectedItem = item;
                        break;
                    }
                }

                if (selectedItem != null) {
                    // Forward to buy.jsp with selected item details
                    request.setAttribute("selectedItem", selectedItem);
                    request.getRequestDispatcher("payment2.jsp").forward(request, response);
                } else {
                    // Handle item not found in cart (optional)
                    response.sendRedirect("cartDisplay.jsp");
                }
            }
        }
    }
}
