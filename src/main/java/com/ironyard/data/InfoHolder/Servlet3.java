package com.ironyard.data.InfoHolder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by WagnerMestrinho on 1/18/17.
 */
@WebServlet(name = "Servlet3", urlPatterns = "/servlet3")
public class Servlet3 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        HttpSession session = request.getSession(false);
        session.removeAttribute("name");
        session.setAttribute("name", name);
        String result = "Username changed Sucessfuly";
        request.setAttribute("result",result);
        request.getRequestDispatcher("/homepage3.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
