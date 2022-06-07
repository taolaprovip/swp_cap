/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserDAO;
import dto.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "LoginController_2", urlPatterns = {"/LoginController_2"})
public class LoginController_2 extends HttpServlet {

    private static final String ERROR = "error.jsp";
//      private static final String sucs = "sucess.jsp";
    private static final String BUYER_PAGE = "Maincontroller?btAction=SearchBuyer";
    private static final String USER_PAGE = "Maincontroller?btAction=SearchSeller";

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
        String url = ERROR;
        try {
            String phone = request.getParameter("phone");
            String pass = request.getParameter("password");
            UserDAO dao = new UserDAO();
            HttpSession session = request.getSession();
//            session.invalidate();
            session = request.getSession();
            UserDTO loginUser = dao.checkLogin(phone, pass);
            if (loginUser != null) {
                session.setAttribute("LOGIN_USER", loginUser);
                String roleID = loginUser.getRolID();
//                String status = loginUser.getStatus();
                if (("NM").equalsIgnoreCase(roleID.trim())) {   // nguoi mua
                    url = BUYER_PAGE;
                } else if (roleID.trim().equalsIgnoreCase("NB")) {  // dang vi du la nguoi ban
                    url = USER_PAGE;
                } else {
                    request.setAttribute("ERROR_MESSAGE", "Your role is not support!");
                }

            } else {
                request.setAttribute("ERROR_MESSAGE", "Incorrect userID or password!");
            }
        } catch (Exception e) {
            log("Error at LoginController" + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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

}
