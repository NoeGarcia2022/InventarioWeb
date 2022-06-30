<%-- 
    Document   : bajaProductos
    Created on : 23-jun-2022, 11:07:54
    Author     : ITCA
--%>
<%
    ////request.getContextPath()
    String id_pro = request.getParameter("idP");
    String nombre_pro = request.getParameter("nombreP");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Baja Producto</title>
        <%@include file = "../WEB-INF/Vistas-Parciales/css-js.jspf" %>
    </head>
    <body>
         <%@include file = "../WEB-INF/Vistas-Parciales/encabezado.jspf" %>
        <div class="col-auto bg-gray p-5 text-center" >
            <h1>Baja de Productos</h1>
            
            <h4 style="color: seagreen">¿Realmente Desea Eliminar el Registro?</h4>
            <h5>ID Categoria: <%= id_pro %></h5>
            <h5>Nombre Categoria: <%= nombre_pro %></h5>
        </div>
        
        <!---->
        <a href="../WEB-INF/web.xml"></a>
        
        <div class="d-grid gap-5 d-md-flex justify-content-md-center">
            <a href="BajaProducto?respuesta=yes&&idP=<%= id_pro %>" class="btn btn-danger btn-lg" role="button">Si / Aceptar</a>
            <!--<a href="< //request.getContextPath() >" class="btn btn-secondary btn-lg" role="button">No / Cancelar</a>-->
            <a href="productos?opcionP=listarP" class="btn btn-secondary btn-lg" role="button">No / Cancelar</a>
            
        </div>
        
        <div class="row justify-content-center">
        <div class="col-4 bg-white">
            &nbsp;
        </div>
        <div class="col-4 bg-white">
            &nbsp;
        </div>
      </div>
        
        
         <%@include file = "../WEB-INF/Vistas-Parciales/pie.jspf" %>
    </body>
</html>
