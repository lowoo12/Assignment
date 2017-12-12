/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PVT
 */
@WebServlet(name = "UserController", urlPatterns = {"/UserController"})
public class UserController extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("action");
            if (action.equals("Register")) {
                String username = request.getParameter("txtUserDK");
                String email = request.getParameter("txtEmailDK");
                String password = request.getParameter("txtPasswordDK");
                
                String url = "";
                User bean = new User();
                if (bean.insertUser(username, password, email,"AD") == true) {
                    HttpSession session = request.getSession();
                    session.setAttribute("FailRegister", "");
                    url = "add_Product.jsp";
                } else {
                    HttpSession session = request.getSession();
                    session.setAttribute("FailRegister", "Đăng ký không thành công! Kiểm tra lại thông tin!");
                    url = "add_Product.jsp";
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            }
            if (action.equals("Update")) {
                String username = request.getParameter("txtUserDK");
                String email = request.getParameter("txtEmailDK");
                String password = request.getParameter("txtPasswordDK");
                
                String url = "";
                User bean = new User();
                if (bean.updateUser(username, password, email,"AD") == true) {
                    HttpSession session = request.getSession();
                    session.setAttribute("FailRegister", "");
                    url = "add_Product.jsp";
                } else {
                    HttpSession session = request.getSession();
                    session.setAttribute("FailRegister", "Cập nhật không thành công! Kiểm tra lại thông tin!");
                    url = "add_Product.jsp";
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            }
            if (action.equals("Delete")) {
                String username = request.getParameter("txtUserDK");
                
                
                String url = "";
                User bean = new User();
                if (bean.deleteUser(username) == true) {
                    HttpSession session = request.getSession();
                    session.setAttribute("FailRegister", "");
                    url = "add_Product.jsp";
                } else {
                    HttpSession session = request.getSession();
                    session.setAttribute("FailRegister", "Xóa không thành công! Kiểm tra lại thông tin!");
                    url = "add_Product.jsp";
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            }
        } catch (Exception e) {

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
