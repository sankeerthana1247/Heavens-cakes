package com.demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProcessRecipientDetailsServlet")
public class ProcessRecipientDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String landmark = request.getParameter("landmark");
        String pincode = request.getParameter("pincode");
        String city = request.getParameter("city");
        String recipientPhone = request.getParameter("recipientPhone");
        String alternatePhone = request.getParameter("alternatePhone");

        // Validate inputs (similar validation logic as in SignupServlet)
        if (phone == null || phone.trim().isEmpty() ||
            address == null || address.trim().isEmpty() ||
            pincode == null || pincode.trim().isEmpty() ||
            city == null || city.trim().isEmpty() ||
            recipientPhone == null || recipientPhone.trim().isEmpty()) {
            request.setAttribute("errorMessage", "All fields are required.");
            request.getRequestDispatcher("payment2.jsp").forward(request, response);
            return;
        }

        // Create new recipient
        Recipient newUser = new Recipient();
        newUser.setPhone(phone);
        newUser.setAddress(address);
        newUser.setLandmark(landmark);
        newUser.setPincode(pincode);
        newUser.setCity(city);
        newUser.setRecipientPhone(recipientPhone);
        newUser.setAlternatePhone(alternatePhone);

        // Save recipient to database
        RecipientController controller = new RecipientController();
        controller.setUsers(newUser);

        // Redirect to pay.jsp after successful form submission
        response.sendRedirect("pay.jsp");
    }
}
