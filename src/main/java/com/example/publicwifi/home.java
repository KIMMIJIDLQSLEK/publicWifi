package com.example.publicwifi;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/index.jsp")
public class home extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        response.sendRedirect("info.jsp");
    }

    public void destroy() {
    }
}
