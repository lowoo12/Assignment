/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.*;
import cart.CartBean;
import cart.ProductDTO;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

//import org.apache.tomcat.util.http.fileupload.FileItem;
//import org.apache.tomcat.util.http.fileupload.FileItemFactory;
//import org.apache.tomcat.util.http.fileupload.FileUploadException;
//import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
//import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
/**
 *
 * @author PVT
 */
@WebServlet(name = "Controller", urlPatterns = {"/Controller"})
public class Controller extends HttpServlet {

    final private String homePageKH = "indexKH.jsp";
    final private String homePageAD = "indexAD.jsp";

    final private String loginPage = "login.jsp";
    final private String registerPage = "register.jsp";

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
            System.out.println(action);
            System.out.println(action);
            System.out.println(action);
            System.out.println(action);
            if (action.equals("Log In")) {
                String u = request.getParameter("txtUserName");
                String p = request.getParameter("txtPassWord");
                System.out.println(u);
                System.out.println(p);
                String url = "";
                User bean = new User();
                if (bean.checkLogin(u, p) == true) {
                    HttpSession session = request.getSession();
                    session.setAttribute("FailLogin", "");
                    if (bean.ktraQuyen(u).equals("KH")) {
                        url = homePageKH;
                    } else if (bean.ktraQuyen(u).equals("AD")) {
                        url = homePageAD;
                    }
                    RequestDispatcher rd = request.getRequestDispatcher(url);
                    rd.forward(request, response);

                } else {
                    HttpSession session = request.getSession();
                    session.setAttribute("FailLogin", "Sai tên đăng nhập hoặc mật khẩu!");
                    url = loginPage;
                    RequestDispatcher rd = request.getRequestDispatcher(url);
                    rd.forward(request, response);
                }

            } else if (action.equals("Register")) {
                String username = request.getParameter("txtUserDK");
                String password = request.getParameter("txtPasswordDK");
                String email = request.getParameter("txtEmailDK");

                String url = "";
                User bean = new User();
                if (bean.insertUser(username, password, email, "KH") == true) {
                    HttpSession session = request.getSession();
                    session.setAttribute("FailRegister", "");
                    url = loginPage;
                } else {
                    HttpSession session = request.getSession();
                    session.setAttribute("FailRegister", "Đăng ký không thành công! Kiểm tra lại thông tin!");
                    url = registerPage;
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Search")) {
                String str = request.getParameter("txtSearch");
                System.out.println(str);
                Product sp = new Product();
                ArrayList<Product> list = sp.getSearchList(str);
                System.out.println("list length : \t" + list.size());
                HttpSession session = request.getSession();
                session.setAttribute("SEARCH", list);
                RequestDispatcher rd = request.getRequestDispatcher("Search.jsp");
                rd.forward(request, response);

            } else if (action.equals("Add to cart")) {
                HttpSession session = request.getSession(true);
                CartBean shop = (CartBean) session.getAttribute("SHOP");
                if (shop == null) {
                    shop = new CartBean();
                }
                String id = request.getParameter("txtIdSP");
                String ten = request.getParameter("txttenSP");
                String gia = request.getParameter("txtGiaSP");
                String anh = request.getParameter("txtAnhSP");
                String mota = request.getParameter("txtMoTaSP");

                Product s = new Product(id, ten, gia, mota, anh);

                ProductDTO sp = new ProductDTO(s);
                shop.addSanPham(sp);
                session.setAttribute("SHOP", shop);
                RequestDispatcher rd = request.getRequestDispatcher("indexKH.jsp");
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
