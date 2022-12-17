/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.loginDao;
import dao.registerDao;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
public class RegisterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/user/register.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String name = request.getParameter("inputName");
        String email = request.getParameter("inputEmail");
        String password = request.getParameter("inputPassword");
        String repass = request.getParameter("inputRePassword");

        registerDao dao = new registerDao();
        User checkEmail = dao.checkEmail(email);
        Boolean checkRegister = dao.addUser(name, email, password);

        try {
            if (!password.equals(repass)) {
                String errormatch = "Pass và Re-Password không trùng khớp";
                session.setAttribute("EmaiExist", email);
                session.setAttribute("name", name);
                session.setAttribute("pass", password);
                session.setAttribute("repass", repass);
                request.setAttribute("errorRepass", errormatch);
                request.getRequestDispatcher("view/user/register.jsp").forward(request, response);
            }if (checkEmail != null && checkRegister.equals(true)) {
                    String errorEmail = "Emai đã tồn tại";
                    session.setAttribute("EmaiExist", email);
                    session.setAttribute("name", name);
                    session.setAttribute("pass", password);
                    session.setAttribute("repass", repass);
                    request.setAttribute("errorMessage", errorEmail);
                    request.getRequestDispatcher("view/user/register.jsp").forward(request, response);
                }
            if (checkEmail == null && checkRegister.equals(true)) {
                String success = "Tao tai khoan thanh cong";
                request.setAttribute("errorMessage", success);
                request.getRequestDispatcher("view/user/login.jsp").forward(request, response);
            }

        } catch (Exception e) {
        }

    }

}
