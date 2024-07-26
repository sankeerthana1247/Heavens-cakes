package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PaymentService {
    public static boolean saveUPIDetails(String upiID) {
        boolean paymentSaved = false;
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = ConnectionManager.getConnection();
            String sql = "INSERT INTO payment_details (upi_id) VALUES (?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, upiID);

            int rowsAffected = stmt.executeUpdate();
            paymentSaved = rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionManager.closeConnection(conn, stmt, null);
        }

        return paymentSaved;
    }

    public static boolean saveCardDetails(String cardName, String cardNumber, String expMonth, String expYear, String cvv) {
        boolean paymentSaved = false;
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = ConnectionManager.getConnection();
            String sql = "INSERT INTO payment_details (card_name, card_number, exp_month, exp_year, cvv) VALUES (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cardName);
            stmt.setString(2, cardNumber);
            stmt.setString(3, expMonth);
            stmt.setString(4, expYear);
            stmt.setString(5, cvv);

            int rowsAffected = stmt.executeUpdate();
            paymentSaved = rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionManager.closeConnection(conn, stmt, null);
        }

        return paymentSaved;
    }

    public static boolean saveNetBankingDetails(String bank) {
        boolean paymentSaved = false;
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = ConnectionManager.getConnection();
            String sql = "INSERT INTO payment_details (bank) VALUES (?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, bank);

            int rowsAffected = stmt.executeUpdate();
            paymentSaved = rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionManager.closeConnection(conn, stmt, null);
        }

        return paymentSaved;
    }
}
