/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Product;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
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

/**
 *
 * @author PVT
 */
@WebServlet(name = "AddProductController", urlPatterns = {"/AddProductController"})
public class ProductController extends HttpServlet {

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

            HttpSession session = request.getSession();
            String[] info = new String[4];
            String anh = null, thaotac = null;
            boolean isMultiPart = ServletFileUpload.isMultipartContent(request);
            if (!isMultiPart) {

            } else {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List items = null;
                try {
                    items = upload.parseRequest(request);
                } catch (FileUploadException e) {
                    e.printStackTrace();
                }
                Iterator iter = items.iterator();
                Hashtable params = new Hashtable();
                String fileName = null;
                int i = 0;

                while (iter.hasNext()) {
                    FileItem item = (FileItem) iter.next();
                    if (item.isFormField()) {
                        params.put(item.getFieldName(), item.getString());
                        System.out.println("getFieldName \t :" + item.getFieldName());
                        System.out.println("getString \t :" + item.getString());
                        if (item.getFieldName().equals("action")) {
                            thaotac = item.getString();
                        }
                        if (i < 4) {
                            info[i] = item.getString();
                        } else {

                        }
                        i++;
                    } else {
                        try {

                            String itemName = item.getName();
                                  System.out.println("itemName : " + itemName);
                            fileName = itemName.substring(itemName.lastIndexOf("\\") + 1);
                            fileName = item.getName();
                             System.out.println("path: " + fileName);
                            String RealPath = getServletContext().getRealPath("/")
                                    + "images\\" + fileName;
                            System.out.println("Rpath: " + RealPath);
                            File saveFile = new File(RealPath);
                            item.write(saveFile);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
                anh = fileName;
            }
            System.out.println(thaotac);
            Product sp = new Product();
            if (thaotac.equals("Add")) {
                if (sp.insertProduct(info[0], info[1], info[2], info[3], anh)) {
                    session.setAttribute("AddPro", "");
                    RequestDispatcher rd = request.getRequestDispatcher("add_Product.jsp");
                    rd.forward(request, response);
                } else {
                    session.setAttribute("AddPro", "Thêm sản phẩm thất bại!");
                    RequestDispatcher rd = request.getRequestDispatcher("add_Product.jsp");
                    rd.forward(request, response);
                }
            }else if(thaotac.equals("Update")){
                if (sp.updateProduct(info[0], info[1], info[2], info[3], anh)) {
                    session.setAttribute("AddPro", "");
                    RequestDispatcher rd = request.getRequestDispatcher("add_Product.jsp");
                    rd.forward(request, response);
                } else {
                    session.setAttribute("AddPro", "Update sản phẩm thất bại!");
                    RequestDispatcher rd = request.getRequestDispatcher("add_Product.jsp");
                    rd.forward(request, response);
                }
            }else if(thaotac.equals("Delete")){
                if (sp.deleteProduct(info[0])) {
                    session.setAttribute("AddPro", "");
                    RequestDispatcher rd = request.getRequestDispatcher("add_Product.jsp");
                    rd.forward(request, response);
                } else {
                    session.setAttribute("AddPro", "Xóa sản phẩm thất bại!");
                    RequestDispatcher rd = request.getRequestDispatcher("add_Product.jsp");
                    rd.forward(request, response);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
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
