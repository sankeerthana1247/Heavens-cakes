package com.demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Check if email and password are correct
        LoginCon loginCon = new LoginCon();
        if (!loginCon.isValidUser(email, password)) {
            request.setAttribute("errorMessage", "Invalid email or password.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }

        // If credentials are correct, redirect to home page
        response.sendRedirect("home.jsp");
    }
}
