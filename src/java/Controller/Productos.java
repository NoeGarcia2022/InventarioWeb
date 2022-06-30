package Controller;

import DAO.ProductoDAO;
import Model.Producto;
import DAO.ProductoDAOImplementar;
import Model.Categoria;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Productos extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Productos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Productos at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         
         String estadoP = request.getParameter("opcionP");
         String id_pro = request.getParameter("idP");
         String nombre_pro = request.getParameter("nombreP");
         String stock = request.getParameter("stock");
         String precio = request.getParameter("precio");
         String UnidadMedida = request.getParameter("unidadMedida");
         String estado = request.getParameter("estado");
         String categoria = request.getParameter("categoria");
         String NCategoria = request.getParameter("opcat");

    
         if(estadoP.equals("listarP")){
             this.listaProductos(request, response);
         }else if(estadoP.equals("editarP")){
             System.out.println("Editando Productos....");
             RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Vistas-Producto/editarProducto.jsp?idP="+id_pro+"&&nombreP="+nombre_pro+"&&stock="+stock+"&&precio"+precio+"&&unidadMeida"+UnidadMedida+"&&estado"+estado+"&&categoria="+categoria+"&&opcat"+NCategoria);
             dispatcher.forward(request, response);
         }else if(estadoP.equals("eliminarP")){
             System.out.println("Baja de Productos...");
             RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Vistas-Producto/bajaProductos.jsp?idP="+id_pro+"&&nombreP="+nombre_pro);
             dispatcher.forward(request, response);
         }else if(estadoP.equals("crearP")){
             System.out.println("Crear Productos...");
             String pagina = "/Vistas-Producto/crearProductos.jsp";
             RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
             dispatcher.forward(request, response);
         }else{
             
         }
        
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       Producto pro = new Producto();

       pro.setId_producto(Integer.parseInt(request.getParameter("idPro")));
       pro.setNom_producto(request.getParameter("txtNomProducto"));
       pro.setStock(Float.parseFloat(request.getParameter("txtStock")));
       pro.setPrecio(Float.parseFloat(request.getParameter("txtPrecio")));
       pro.setUnidadMedida(request.getParameter("txtUnidad"));
       pro.setEstado(Integer.parseInt(request.getParameter("numEstado")));
       pro.setCategoria_id(Integer.parseInt(request.getParameter("opCat")));

        ProductoDAO guardaProducto = new ProductoDAOImplementar();
        guardaProducto.guardarPro(pro);
        this.listaProductos(request, response);
 
    }
    
    protected void listaProductos(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         ProductoDAO producto = new ProductoDAOImplementar();
         HttpSession sesion = request.getSession(true);
         sesion.setAttribute("listaP", producto.ListarP());
         RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Vistas-Producto/listarProducto.jsp");
         dispatcher.forward(request, response);
         
    }
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
