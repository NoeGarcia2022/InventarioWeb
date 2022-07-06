
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;
import modelo.UsuarioDAO;

public class Controlador extends HttpServlet {
    UsuarioDAO dao=new UsuarioDAO();
    Usuario usu=new Usuario();
    int r;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion=request.getParameter("accion");
        if(accion.equals("Ingresar")){
            String user=request.getParameter("txtuser");
            String clave=request.getParameter("txtpass");  
            usu.setUsuario(user);
            usu.setClave(clave);
            r=dao.Validar(usu);
            if(r==1){
                request.getSession().setAttribute(user, user);
                request.getSession().setAttribute(clave, clave);
                request.getRequestDispatcher("Principal.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("Loginn.jsp").forward(request, response);
            }
        }else{
            request.getRequestDispatcher("Loginn.jsp").forward(request, response);
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
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
