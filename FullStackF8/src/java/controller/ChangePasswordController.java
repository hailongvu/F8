/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserDao;
import entity.User;
import java.io.IOException;
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
 * @author PHANH
 */
@WebServlet(name = "ChangePasswordController", urlPatterns = {"/ChangePassword"})
public class ChangePasswordController extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//   
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        User user = new User();
        user = (User) session.getAttribute("user");

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rePassword = request.getParameter("rePassword");
        UserDao userDAO = new UserDao();


        if (!email.equals(user.getEmail())) {
            request.setAttribute("message", "Email incorrect!!!");
            session.setAttribute("user", user);
            request.getRequestDispatcher("view/user/ChangePassword.jsp").forward(request, response);
        }else
            if (!userDAO.checkEmail(email)) {
            request.setAttribute("message", "Email not exist");
            session.setAttribute("user", user);
            request.getRequestDispatcher("view/user/ChangePassword.jsp").forward(request, response);
        }else
        if (!password.equals(rePassword)) {
            request.setAttribute("message", "Re Password not match");
            session.setAttribute("user", user);
            request.getRequestDispatcher("view/user/ChangePassword.jsp").forward(request, response);
        }else{
            user.setEmail(email);
        user.setPassword(password);
        
        if(userDAO.changePassword(user)==1){
            session.setAttribute("user", user);
        request.setAttribute("message", "Update success");
        request.getRequestDispatcher("view/user/ChangePassword.jsp").forward(request, response);
        }else{
            session.setAttribute("user", user);
        request.setAttribute("message", "Update fail");
        request.getRequestDispatcher("view/user/ChangePassword.jsp").forward(request, response);
        }
        
        
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.sendRedirect("view/user/ChangePassword.jsp");
        } catch (Exception ex) {
            Logger.getLogger(ChangePasswordController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ChangePasswordController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

   
 
