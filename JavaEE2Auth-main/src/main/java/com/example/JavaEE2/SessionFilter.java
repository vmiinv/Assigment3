package com.example.JavaEE2;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SessionFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String path = ((HttpServletRequest) servletRequest).getRequestURI();
        if (!(path.contains("/login") || path.contains("/register")) ||
                "POST".equals(((HttpServletRequest) servletRequest).getMethod())) {
            HttpSession session = ((HttpServletRequest) servletRequest).getSession();
            if (session.getAttribute("email") != null){
                System.out.println("OK");
            }
            else {
                System.out.println("Error");
            }

        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
