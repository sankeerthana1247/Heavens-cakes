<%@ page import="com.demo.PaymentDetails" %>
<%@ page import="com.demo.DBUtil" %>

<%
    PaymentDetails paymentDetails = new PaymentDetails();
    paymentDetails.setCardHolderName(request.getParameter("cardName"));
    paymentDetails.setCardNumber(request.getParameter("cardNumber"));
    paymentDetails.setExpiryMonth(request.getParameter("expMonth"));
    paymentDetails.setExpiryYear(request.getParameter("expYear"));
    paymentDetails.setCvv(request.getParameter("cvv"));

    // Store payment details in the database
    DBUtil.insertPaymentDetails(paymentDetails);
%>
