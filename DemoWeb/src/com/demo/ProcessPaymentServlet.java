package com.demo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ProcessPaymentServlet")
public class ProcessPaymentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String paymentMethod = request.getParameter("paymentMethod");
        boolean paymentSaved = false;

        switch (paymentMethod) {
            case "phonepay":
                String upiID = request.getParameter("upiID");
                paymentSaved = PaymentService.saveUPIDetails(upiID);
                break;
            case "card":
                String cardName = request.getParameter("cardName");
                String cardNumber = request.getParameter("cardNumber");
                String expMonth = request.getParameter("expMonth");
                String expYear = request.getParameter("expYear");
                String cvv = request.getParameter("cvv");
                paymentSaved = PaymentService.saveCardDetails(cardName, cardNumber, expMonth, expYear, cvv);
                break;
            case "netbanking":
                String bank = request.getParameter("bank");
                paymentSaved = PaymentService.saveNetBankingDetails(bank);
                break;
            case "cod":
                paymentSaved = true; // No details to save for COD
                break;
        }

        if (paymentSaved) {
            response.sendRedirect("paymentConfirmation.jsp");
        } else {
            response.sendRedirect("pay.jsp?error=payment_failed");
        }
    }
}
