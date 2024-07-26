package com.demo;

import java.sql.*;
import java.util.*;

public class SignupCon {

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

    public List<Sign> getStudents() {
        List<Sign> listUser = new ArrayList<>();
        String query = "SELECT * FROM Signup";

        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {

            while (rs.next()) {
                Sign usr = new Sign();
                usr.setFname(rs.getString("first_name"));
                usr.setLname(rs.getString("second_name"));
                usr.setEmail(rs.getString("email"));
                usr.setPass(rs.getString("pass"));
                usr.setConfpass(rs.getString("confirm_pass"));
                listUser.add(usr);
            }

        } catch (SQLException e) {
            System.err.println("Exception: " + e.getLocalizedMessage());
            e.printStackTrace();
        }

        return listUser;
    }

    public void setStudent(Sign usr) {
        String query = "INSERT INTO Signup(email, first_name, second_name, pass, confirm_pass) VALUES (?, ?, ?, ?, ?)";

        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, usr.getEmail());
            pstmt.setString(2, usr.getFname());
            pstmt.setString(3, usr.getLname());
            pstmt.setString(4, usr.getPass());
            pstmt.setString(5, usr.getConfpass());
            
            pstmt.executeUpdate();

        } catch (SQLException e) {
            System.err.println("Exception: " + e.getLocalizedMessage());
            e.printStackTrace();
        }
    }

    public boolean userExists(String email) {
        String query = "SELECT COUNT(*) FROM Signup WHERE email = ?";
        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, email);
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
    public Sign getUserByEmail(String email) {
        String query = "SELECT * FROM Signup WHERE email = ?";
        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, email);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    Sign user = new Sign();
                    user.setEmail(rs.getString("email"));
                    user.setFname(rs.getString("first_name"));
                    user.setLname(rs.getString("second_name"));
                    user.setPass(rs.getString("pass"));
                    user.setConfpass(rs.getString("confirm_pass"));
                    return user;
                }
            }
        } catch (SQLException e) {
            System.err.println("Exception: " + e.getLocalizedMessage());
            e.printStackTrace();
        }
        return null;
    }

}
