<%-- 
    Document   : crearCategoria
    Created on : 21-jun-2022, 11:43:20
    Author     : ITCA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="categoria" scope="session" class="Model.Categoria" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Control de inventario</title>
        <%@include file = "../WEB-INF/Vistas-Parciales/css-js1.jspf" %>
        <script type="text/javascript">
            function regresar(url) {
                location.href = url;
            }
        </script>
    </head>
    <body class="justify-content-center">
        <style>
            form{
                width:600px;
                padding:16px;
                border-radius:14px;
                margin:auto;
                background-color:#ccc;
            }
            label{
                font-weight:bold;
                display:inline-block;
            }
        </style>
        <%@include file = "../WEB-INF/Vistas-Parciales/encabezado1.jspf" %>
        <div class="row">&nbsp;</div>
        <div class="row">&nbsp;</div>
        <div class="row">&nbsp;</div>
        <div class="row">&nbsp;</div>
        <div class="col-auto bg-gray p-5 text-center" >
            <h3 class='text-center'>Registro Categorias</h3>
            <div class="row">&nbsp;</div>
            <form class="form-horizontal" id="frmCategoria" name="frmCategoria" action="<%= request.getContextPath()%>/categorias" method="post">
                <div class="row">&nbsp;</div>
                <input type="hidden" name="id_categoria" id="id_categoria" value="<%= categoria.getId_categoria()%>" >
                <div class="mb-3 row">
                    <label for="txtNomCategoria" class="col-sm-2 col-form-label" >Nombre Categoria</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="txtNomCategoria" id="txtNomCategoria" value="<%= categoria.getNom_categoria()%>" placeholder="Nombre categoria" required="true"> 
                    </div>
                </div>
                    
                <div class="mb-3 row">
                    <label for="txtEstadoCategoria" class="col-sm-2 control-label">Estado</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="txtEstadoCategoria" id="txtEstadoCategoria" value="<%= categoria.getEstado_categoria()%>" placeholder="Estado categoria" required="true"> 
                    </div>
                </div>

                <div class="row">&nbsp;</div>
                <div class="row">&nbsp;</div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-12">
                        <input type="submit" class="btn btn-info btn-sm" value="Guardar" name="btnGuardar"/> 
                        <input type="button" class="btn btn-dark btn-sm" name="btnRegresar" value="Regresar" onclick="regresar('<%= request.getContextPath()%>/categorias?opcion=listar')"/> 
                    </div>
                </div>

                <div class="row">&nbsp;</div>
                <div class="row">&nbsp;</div>
                <div class="row">&nbsp;</div>
            </form>
        </div>
        <%@include file = "../WEB-INF/Vistas-Parciales/pie1.jspf" %>
    </body>
</html>
