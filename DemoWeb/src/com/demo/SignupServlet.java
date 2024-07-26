package com.demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstname = request.getParameter("first-name");
        String lastname = request.getParameter("last-name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confpassword");

        // Validate inputs
        if (firstname == null || firstname.trim().isEmpty() ||
            lastname == null || lastname.trim().isEmpty() ||
            email == null || email.trim().isEmpty() ||
            password == null || password.isEmpty() ||
            confirmPassword == null || confirmPassword.isEmpty()) {
            request.setAttribute("errorMessage", "All fields are required.");
            request.getRequestDispatcher("Signin.jsp").forward(request, response);
            return;
        }

        // Validate email format
        if (!validateEmail(email)) {
            request.setAttribute("errorMessage", "Invalid email format.");
            request.getRequestDispatcher("Signin.jsp").forward(request, response);
            return;
        }

        // Check if email is already registered
        SignupCon cont = new SignupCon();
        if (cont.userExists(email)) {
            request.setAttribute("errorMessage", "Email is already registered.");
            request.getRequestDispatcher("Signin.jsp").forward(request, response);
            return;
        }

        // Check if passwords match
        if (!password.equals(confirmPassword)) {
            request.setAttribute("errorMessage", "Passwords do not match.");
            request.getRequestDispatcher("Signin.jsp").forward(request, response);
            return;
        }

        // Create new user
        Sign newUser = new Sign();
        newUser.setFname(firstname);
        newUser.setLname(lastname);
        newUser.setEmail(email);
        newUser.setPass(password);
        newUser.setConfpass(confirmPassword);

        // Save user to database
        cont.setStudent(newUser);

        // Redirect to login page after successful signup
        response.sendRedirect("Login.jsp");
    }

    // Validate email format
    private boolean validateEmail(String email) {
        String regex = "^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$";
        return email.matches(regex);
    }
}
