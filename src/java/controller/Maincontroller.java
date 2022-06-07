package controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class Maincontroller extends HttpServlet {

//    private static final String ERROR = "login.jsp";
    private static final String ERROR = "error.jsp";
    private static final String SEARCH_SELLER_CONTROLLER = "SearchSellerController";
    private static final String SEARCH_BUYER_CONTROLLER = "SearchBuyerController";
    private static final String LOGIN_CONTROLLER = "LoginController_2";
    private static final String LOGOUT_CONTROLLER = "LogoutController";
//    private static final String SELL_CONTROLLER = "SellController";
    private static final String REGISTER_CONTROLLER = "RegisterController";
    private static final String SEARCH_PRODUCT = "SearchProductController";
    private static final String ADD_SELL_PRODUCT = "AddController";
    private static final String SELL_UPDATE_PRODUCT = "SellUpdateController";
      private static final String SEE_DETAIL_TO_BUY = "SeeDetailToBuyController";
//      private static final String UPDATE_ACCOUNT = "UpdateAccountController";
//    private static final String PRODUCT_DETAIL = "productDetail.jsp";

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
            String btAction = request.getParameter("btAction");

            if (btAction.equals("Login")) {
                url = LOGIN_CONTROLLER;

            } else if (btAction.equals("SearchSeller")) {
                url = SEARCH_SELLER_CONTROLLER;

            } else if (btAction.equals("SearchBuyer")) {
                url = SEARCH_BUYER_CONTROLLER;
//            } else if (btAction.equals("productDetail")) {
//                url = PRODUCT_DETAIL;

            } else if (btAction.equals("Logout")) {
                url = LOGOUT_CONTROLLER;
            } else if (btAction.equals("Register")) {
                url = REGISTER_CONTROLLER;
            } else if (btAction.equals("Search Product By Name")) {
                url = SEARCH_PRODUCT;
            } else if (btAction.equals("Sell")) {
                url = ADD_SELL_PRODUCT;
            } else if (btAction.equals("Sell_Update")) {
                url = SELL_UPDATE_PRODUCT;
            }else if(btAction.equals("See detail to buy")){
                url = SEE_DETAIL_TO_BUY; 
            }
            
        } catch (Exception e) {
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
