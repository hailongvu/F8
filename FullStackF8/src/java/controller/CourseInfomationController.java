/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.LearnDao;
import entity.Chapter;
import entity.CourseChapterLesson;
import entity.CourseTarget;
import entity.Lesson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "CourseInfomationController", urlPatterns = {"/CourseInfomationController"})
public class CourseInfomationController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String course_Id_str = request.getParameter("course_Id") == null ? "1" : request.getParameter("course_Id");
        String chapter_id_str = request.getParameter("chapter_id") == null ? "1" : request.getParameter("chapter_id");
        
        int course_Id = Integer.parseInt(course_Id_str);
        int chapter_id = Integer.parseInt(chapter_id_str);
        
        LearnDao dao = new LearnDao();
        
        List<CourseTarget> list = dao.getCourseTargetByID(course_Id);
        request.setAttribute("detail", list);
        
        List<Chapter> listChap = dao.getChapterByCourseId(chapter_id);
        request.setAttribute("listChap", listChap);
        
        
        List<Lesson> listLes = dao.getLessonByChapterId(course_Id);
        request.setAttribute("listLes", listLes);
        
        List<CourseChapterLesson> listCo = dao.getCoLeCh(course_Id);
        request.setAttribute("listCo", listCo);
        
        
        request.getRequestDispatcher("view/user/course_information.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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

    
   public void log(String msg){
       Logger.getLogger("Logggggggg").log(Level.SEVERE, msg);
   }
}
