/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.RegistroDAO;
import DAO.RegistroDAOimplementarr;
import Model.Empleado;
import Model.EmpleadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class Registro extends HttpServlet {

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
            out.println("<title>Servlet Registro</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registro at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        
        String estado = request.getParameter("opcion");
        String id_emp = request.getParameter("id");
        String nombre_emp = request.getParameter("nombre");
        String apellido_emp = request.getParameter("apellidos");
        String tipo_emp = request.getParameter("tipo");
        String estado_emp = request.getParameter("estado");
        String dui_emp = request.getParameter("dui");
        String telefono_emp = request.getParameter("telefono");
        String usuario_emp = request.getParameter("usuario");
        String contraseña_emp = request.getParameter("clave");
        
        if (estado.equals("listar")) {
            this.listaEmpleados(request, response);
        } else if (estado.equals("editar")) {
            System.out.println("Editando empleados....");
            //RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Vistas-Categorias/editarCategorias.jsp?id=" + id_cat + "&&nombre=" + nombre_cat + "&&estado=" + estado_cat);
            //dispatcher.forward(request, response);
        } else if (estado.equals("eliminar")) {
            //System.out.println("Baja de categorias...");
            //RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Vistas-Categorias/bajaCategorias.jsp?id=" + id_cat + "&&nombre=" + nombre_cat);
            //dispatcher.forward(request, response);
        } else if (estado.equals("crear")) {
            System.out.println("Crear categorias...");
            String pagina = "/Vistas-Registros/Registro.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
            dispatcher.forward(request, response);
        } else {

        }

    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Empleado empleado = new Empleado();
        empleado.setId(Integer.parseInt(request.getParameter("id_empleado")));
        empleado.setNom(request.getParameter("txtnombre"));
        empleado.setApell(request.getParameter("txtapellidos"));
        empleado.setTipo(Integer.parseInt(request.getParameter("numbertipo")));
        empleado.setEstado(Integer.parseInt(request.getParameter("numberEstado")));
        empleado.setDui(request.getParameter("txtdui"));
        empleado.setTel(request.getParameter("txtTel"));
        empleado.setEmail(request.getParameter("txtemail"));
        empleado.setUser(request.getParameter("txtUser"));
        empleado.setClave(request.getParameter("txtClave"));
        RegistroDAOimplementarr guardaEmpleado = new RegistroDAOimplementarr();
        guardaEmpleado.guardarEmp(empleado);
        this.listaEmpleados(request, response);    
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void listaEmpleados(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RegistroDAO empleado = new RegistroDAOimplementarr();
        HttpSession sesion = request.getSession(true);
        sesion.setAttribute("lista", empleado.Listar());
        //RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Vistas-Categorias/listarCategorias.jsp");
        //dispatcher.forward(request, response);
    }

}
