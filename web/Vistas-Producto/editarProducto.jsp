<%@page import="java.util.List"%>
<%@page import="DAO.CategoriaDAOImplementar"%>
<%@page import="DAO.CategoriaDAO"%>
<%@page import="Model.Producto"%>
<%@page import="Model.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
         String id_pro = request.getParameter("idP");
         String nombre_pro = request.getParameter("nombreP");
         String stock = request.getParameter("stock");
         String precio = request.getParameter("precio");
         String UnidadMedida = request.getParameter("unidadMedida");
         String estado = request.getParameter("estado");
         String categoria = request.getParameter("categoria");
         String NCategoria = request.getParameter("opcat");

 %>

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Productos</title>
        <%@include file = "../WEB-INF/Vistas-Parciales/css-js1.jspf" %>
    </head>
    <body>
         <%@include file = "../WEB-INF/Vistas-Parciales/encabezado1.jspf" %>
         <div class="row">&nbsp;</div>
        <div class="row">&nbsp;</div>
        <div class="row">&nbsp;</div>
        <div class="row">&nbsp;</div>
         <div class="col-auto bg-gray p-5 text-center">
        <h1 class='text-center'>Información de Productos</h1>
        <div class="row">&nbsp;</div>
        <form action="actualizarProducto" class="form-horizontal" method="post">
         <div class="row">
        <div class="col-6">
            <label for="staticEmail" class="form-label">ID Producto:</label>
            <div class="col-sm-12">
              <input type="text" value='<%= id_pro %>' name="id1" id="id1" readonly class="form-control" id="staticEmail" placeholder="ID Producto">
              <input type="hidden" value='<%= id_pro %>' name="idP" id="idP" readonly class="form-control" id="staticEmail" >
            </div>
        </div>
            
        <div class="col-6">
          <label for="inputPassword" class="form-label">Nombre del Producto</label>
          <div class="col-sm-12">
              <input type="text" value='<%= nombre_pro %>' name="nombreP" id="nombreP" class="form-control" placeholder="Nombre Categoria" required="true">
          </div>
        </div>
          
        <div class="col-6">
          <label for="inputPassword" class="form-label">Stock:</label>
          <div class="col-sm-12">
              <input type="text" value='<%= stock %>' name="stock" id="stock" class="form-control" placeholder="" required="true">
          </div>
        </div>
          
          <div class="col-6">
          <label for="inputPassword" class="form-label">Precio:</label>
          <div class="col-sm-12">
              <input type="text" value='<%= precio %>' name="precio" id="precio" class="form-control" placeholder="" required="true">
          </div>
        </div>
          <div class="col-6">
          <label for="inputPassword" class="form-label">Unidad de medida</label>
          <div class="col-sm-12">
              <input type="text" value='<%= UnidadMedida %>' name="unidadMedida" id="stock" class="form-control" placeholder="" required="true">
          </div>
        </div>
          <div class="col-6">
          <label for="inputPassword" class="form-label">Estado:</label>
          <div class="col-sm-12">
              <input type="text" value='<%= estado %>' name="estado" id="estado" class="form-control" placeholder="" required="true">
          </div>
        </div>
  
          
          <div class="col-6">
                   <label for="categoria" class="form-label">Categoria</label>
                   <div class="custom-select col-sm-12">
                         <select class="form-control" name="categoria" id="categoria" required>
                             <option>Selecciones una Categoria</option>
                             <%
                             CategoriaDAO daoC = new CategoriaDAOImplementar();
                             List<Categoria> cats = null;
                             try{
                                 cats = daoC.Listar();
                                 for(Categoria cat : cats){
                            %>
                                   <option value='<%= cat.getId_categoria()%>'><%= cat.getNom_categoria()%></option> 
                            <%}%>
                        </select>        
                   </div>
                </div>      
          <%
                                 
            }catch(Exception e){
                out.print("Se encontro el siguiente error"+e);
            }finally{
            }
                                    
           %>
           <div class="row">&nbsp;</div>
          <div class="col-sm-offset-2 col-sm-12">
          <button type="submit" name="send" class="btn btn-success">Actualizar Productos</button>
          </div>
        </form>
          <%
            String dato = request.getParameter("avisoP");
            if(dato!=null){
                //out.print("Registro Actualizado Correctamente");
                //System.out.println("End");
           %>
                   <div class="alert alert-success" role="alert">
                   Se ha modificado el registro Correctamente!!
                 </div>
           <%   
               }
           %>
</div>
        </div>
         <%@include file = "../WEB-INF/Vistas-Parciales/pie1.jspf" %>
    </body>
    
    
</html>
