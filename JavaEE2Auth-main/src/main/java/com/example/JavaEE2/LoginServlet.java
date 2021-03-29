package com.example.JavaEE2;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<String> errors = new ArrayList<>();
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        if (email.equals("")){
            errors.add("Email is required");
        }
        if (password.equals("")){
            errors.add("Password is required");
        }
        if (!errors.isEmpty()){
            req.setAttribute("errors", errors);
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
        HttpSession session = req.getSession();
        session.setAttribute("email", email);
        session.setMaxInactiveInterval(300);

        req.getRequestDispatcher("/cabinet.jsp").forward(req, resp);

    }
}
