/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserDao;
import entity.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PHANH
 */
public class UserProfileController  extends HttpServlet {

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
        int userId = Integer.parseInt(request.getParameter("id"));
        User user = new User();
        UserDao dao = new UserDao();
        user = dao.getUserById(userId);
        request.setAttribute("user", user);
        request.setAttribute("panel", "userProfile");
        request.getRequestDispatcher("/WEB-INF/web/homepage.jsp").forward(request, response);
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
        String name = request.getParameter("Name");
        String phone = request.getParameter("Phone");
        String address = request.getParameter("Address");
        String position = request.getParameter("Postion");
        String company = request.getParameter("Company");
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("user");
         int uid = u.getUser_id();
         String email = u.getEmail();
        UserDao dao = new UserDao();
        boolean status = dao.updateUser(name, phone, address, position, company, uid, email);
        if (status) {
            request.setAttribute("message", "Update profile successful!");
            request.setAttribute("messageType", "text-success");
            response.sendRedirect(request.getContextPath() + "/profile?id=" + uid);
        } else {
            request.setAttribute("message", "Update profile failed. Please try again!");
            request.setAttribute("messageType", "text-danger");
            response.sendRedirect(request.getContextPath() + "/profile?id=" + uid);
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
   
