<%-- 
    Document   : bajaCategorias
    Created on : 20-jun-2022, 17:50:17
    Author     : ITCA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ////request.getContextPath()
    String id_cat = request.getParameter("id");
    String nombre_cat = request.getParameter("nombre");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Baja Categorias</title>
        <%@include file = "../WEB-INF/Vistas-Parciales/css-js1.jspf" %>
    </head>
    <body>
        <%@include file = "../WEB-INF/Vistas-Parciales/encabezado1.jspf" %>
        <div class="row">&nbsp;</div>
        <div class="row">&nbsp;</div>
        <div class="row">&nbsp;</div>
        <div class="row">&nbsp;</div>
        <div class="col-auto bg-gray p-5 text-center ">
            <h1>Baja de Categorias</h1>
            <div class="row">&nbsp;</div>
            <h4 style="color: seagreen">¿Realmente Desea Eliminar el Registro?</h4>
            <h5>ID Categoria: <%= id_cat%></h5>
            <h5>Nombre Categoria: <%= nombre_cat%></h5>
            <div class="alert alert-danger" role="alert">
                ADVERTENCIA : Sí elimina está Categoria también eliminarán todos los
                <a href="productos?opcionP=listarP" class="alert-link">Productos</a>. relacionados a esta.
            </div>
        </div>

        <!---->
        <div class="d-grid gap-5 d-md-flex justify-content-md-center">
            <a href="bajaCategoria?respuesta=yes&&id=<%= id_cat%>" class="btn btn-danger btn-lg" role="button">Si / Aceptar</a>
            <!--<a href="< //request.getContextPath() >" class="btn btn-secondary btn-lg" role="button">No / Cancelar</a>-->
            <a href="categorias?opcion=listar" class="btn btn-secondary btn-lg" role="button">No / Cancelar</a>
        </div>
        <div class="row justify-content-center">
            <div class="row">
                &nbsp;
            </div>
            <div class="row">
                &nbsp;
            </div>
        </div>
        <%@include file = "../WEB-INF/Vistas-Parciales/pie1.jspf" %>
    </body>
</html>
