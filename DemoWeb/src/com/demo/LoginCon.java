package com.demo;

import java.sql.*;

public class LoginCon {
    private static final String URL = "jdbc:mysql://localhost:3306/winni";
    private static final String USER = "root";
    private static final String PASSWORD = "1234";
    private static final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";

    static {
        try {
            Class.forName(DRIVER_CLASS);
        } catch (ClassNotFoundException e) {
            throw new ExceptionInInitializerError("Failed to load JDBC driver: " + DRIVER_CLASS);
        }
    }

    public boolean isValidUser(String email, String password) {
        String query = "SELECT COUNT(*) FROM Signup WHERE email = ? AND pass = ?";
        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0;
                }
            }
        } catch (SQLException e) {
            System.err.println("Exception: " + e.getLocalizedMessage());
            e.printStackTrace();
        }
        return false;
    }
}
