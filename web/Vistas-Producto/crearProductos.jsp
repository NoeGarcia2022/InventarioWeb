
<%@page import="java.util.List"%>
<%@page import="DAO.CategoriaDAOImplementar"%>
<%@page import="DAO.CategoriaDAO"%>
<%@page import="Model.Producto"%>
<%@page import="Model.Categoria"%>
<%-- 
    Document   : crearCategoria
    Created on : 21-jun-2022, 11:43:20
    Author     : ITCA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pro" scope="session" class="Model.Producto" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Control de inventario</title>
         <%@include file = "../WEB-INF/Vistas-Parciales/css-js.jspf" %>
         <script type="text/javascript">
             function regresar(url){
                 location.href = url;
             }
         </script>
    </head>
    <body class="justify-content-center">
        <%@include file = "../WEB-INF/Vistas-Parciales/encabezado.jspf" %>
         <div class="col-auto bg-gray p-5 text-center">
            <h3 class='text-center'>Registro Productos</h3>
            <form class="form-horizontal" id="frmProducto" name="frmProducto" action="<%= request.getContextPath() %>/productos" method="post">
                <div class="row">&nbsp;</div>
                <input type="hidden" name="idPro" id="idPro" value="<%= pro.getId_producto()%>" >
                <div class="form-group">
                   <label for="txtNomProducto" class="col-sm-2 control-label">Nombre Producto</label>
                   <div class="col-sm-12">
                       <input type="text" class="form-control" name="txtNomProducto" id="txtNomProducto" value="<%= pro.getNom_producto()%>" placeholder="Nombre productos" required="true"> 
                   </div>
                </div>
                   
                <div class="form-group">
                   <label for="txtStock" class="col-sm-2 control-label">Stock</label>
                   <div class="col-sm-12">
                       <input type="text" class="form-control" name="txtStock" id="txtStock" value="<%= pro.getStock()%>" placeholder="Stock" required="true"> 
                   </div>
                </div>
                   
                <div class="form-group">
                   <label for="txtPrecio" class="col-sm-2 control-label">Precio</label>
                   <div class="col-sm-12">
                       <input type="text" class="form-control" name="txtPrecio" id="txtPrecio" value="<%= pro.getPrecio()%>" placeholder="Precio" required="true"> 
                   </div>
                </div>
                   
                <div class="form-group">
                   <label for="txtUnidad" class="col-sm-2 control-label">Unidad de Medida</label>
                   <div class="col-sm-12">
                       <input type="text" class="form-control" name="txtUnidad" id="txtUnidad" value="<%= pro.getUnidadMedida()%>" placeholder="Unidad de Medida" required="true"> 
                   </div>
                </div>
                   
                <div class="form-group">
                   <label for="numEstado" class="col-sm-2 control-label">Estado</label>
                   <div class="col-sm-12">
                       <input type="number" class="form-control" name="numEstado" id="numEstado" value="<%= pro.getEstado()%>" placeholder="Categoria" required="true"> 
                   </div>
                </div>
                  
                   
             <div class="form-group ">
                   <label for="opCat" class="col-sm-2 control-label">Categoria</label>
                   <div class="custom-select col-sm-12">
                         <select class="form-control" name="opCat" id="opCat" required>
                             <option>Selecciones una opcion</option>>
                             <%
                             CategoriaDAO daoC = new CategoriaDAOImplementar();
                             List<Categoria> cats = null;
                             try{
                                 cats = daoC.Listar();
                                 for(Categoria cat : cats){
                                    %>
                                   <option value="<%=cat.getId_categoria()%>"><%=cat.getId_categoria()+"-"+cat.getNom_categoria()%></option> 
<%}%>
                        </select>
                            
                   </div>
                </div>
                   
                   <div class="row">&nbsp;</div>
                    <div class="row">&nbsp;</div>
                   <div class="form-group">
                       <div class="col-sm-offset-2 col-sm-12">
                           <input type="submit" class="btn btn-success btn-sm" value="Guardar" name="btnGuardar"/> 
                           <input type="button" class="btn btn-danger btn-sm" name="btnRegresar" value="Regresar" onclick="regresar('<%= request.getContextPath() %>/productos?opcionP=listarP')"/> 
                       </div>
                   </div>
                   
                <div class="row">&nbsp;</div>
                <div class="row">&nbsp;</div>
                <div class="row">&nbsp;</div>
            </form>
         </div>
        <%@include file = "../WEB-INF/Vistas-Parciales/pie.jspf" %>
    </body>
</html>
<%
                                 
                             }catch(Exception e){
                                 out.print("Se encontro el siguiente error"+e);
                             }finally{
                             }
                                    
                             %>