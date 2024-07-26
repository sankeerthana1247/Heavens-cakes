package com.demo;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getImage")
public class RetriveServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private String dbURL = "jdbc:mysql://localhost:3306/winni";
    private String dbUser = "root";
    private String dbPass = "1234";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String itemId = request.getParameter("itemId");

        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load the JDBC driver (if not already loaded)
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "SELECT image FROM items WHERE id=?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, itemId);

            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                byte[] imgData = resultSet.getBytes("image");

                // Set content type based on image format
                response.setContentType("image/jpeg"); // Adjust according to your image format

                // Write image data to response output stream
                OutputStream out = response.getOutputStream();
                out.write(imgData);
                out.flush();
                out.close();
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
