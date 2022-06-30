
package Controller;

import DAO.ProductoDAOImplementar;
import DAO.ProductoDAO;
import Model.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class actualizoProducto extends HttpServlet {


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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
         //String estado = request.getParameter("opcion");
         String id_pro = request.getParameter("idP");
         String nombre_pro = request.getParameter("nombreP");
         String stock = request.getParameter("stock");
         String precio = request.getParameter("precio");
         String UnidadMedida = request.getParameter("unidadMedida");
         String estado = request.getParameter("estado");
         String categoria = request.getParameter("categoria");
         String NCategoria = request.getParameter("opcat");
         
         /*
         System.out.println("INFORMACIÓN RECIBIDA: ");
         System.out.println("ID Categoria: " + id_cat);
         System.out.println("Nombre Categoria: " + nombre_cat);
         System.out.println("Estado Categoria: " + estado_cat);
         */
         
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
         if(producto.guardarPro(pro)==true){
             //System.out.println("Registro Actualizado.");
              RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Vistas-Producto/editarProducto.jsp?avisoP=ok");
              dispatcher.forward(request, response);
         }else{
             System.out.println("Error. El registro no se pudo actualizar.");
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
