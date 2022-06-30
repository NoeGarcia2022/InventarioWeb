/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ProductoDAO;
import DAO.ProductoDAOImplementar;
import Model.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jonat
 */
public class actualizoProducto extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet actualizoProducto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet actualizoProducto at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
         String id_pro = request.getParameter("idP");
         String nombre_pro = request.getParameter("nombreP");
         String stock = request.getParameter("stock");
         String precio = request.getParameter("precio");
         String UnidadMedida = request.getParameter("unidadMedida");
         String estado = request.getParameter("estado");
         String categoria = request.getParameter("categoria");
         String NCategoria = request.getParameter("opcat");
         
         ProductoDAO producto = new ProductoDAOImplementar();
         Producto pro = new Producto();
         //cat.setId_categoria(Integer.parseInt(id_cat));
         pro.setId_producto(Integer.parseInt(id_pro));
         pro.setNom_producto(nombre_pro);
         pro.setStock(Float.parseFloat(stock));
         pro.setPrecio(Float.parseFloat(precio));
         pro.setUnidadMedida(UnidadMedida);
         pro.setEstado(Integer.parseInt(estado));
         pro.setCategoria_id(Integer.parseInt(categoria));
         pro.setCat(NCategoria);
         if(producto.guardarPro(pro)==true){
             //System.out.println("Registro Actualizado.");
              RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Vistas-Producto/editarProducto.jsp?aviso=ok");
              dispatcher.forward(request, response);
         }else{
             System.out.println("Error. El registro no se pudo actualizar.");
         }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
