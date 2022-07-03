<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
    String id_cat = request.getParameter("id");
    String nombre_cat = request.getParameter("nombre");
    String estado_cat = request.getParameter("estado");
    
    /*out.print("El ID de la categoria es: " + id_cat);
    out.print("El nombre de la categoria es: " + nombre_cat);
    out.print("El estado de la categoria es: " + estado_cat);*/
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file = "../WEB-INF/Vistas-Parciales/css-js.jspf" %>
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
       form label{
	width:74px;
	font-weight:bold;
	display:inline-block;
}
       form input[type="text"],
       form input[type="email"]{
	width:360px;
	padding:3px 10px;
	border:1px solid #f6f6f6;
	border-radius:3px;
	background-color:#f6f6f6;
	margin:8px 0;
	display:inline-block;
            }
            
        </style>
         <%@include file = "../WEB-INF/Vistas-Parciales/encabezado.jspf" %>
         <div class="row">&nbsp;</div>
        <div class="row">&nbsp;</div>
        <div class="row">&nbsp;</div>
        <div class="row">&nbsp;</div>
         <div class="col-auto bg-gray p-5 text-center">
        <h1 class='text-center'>Información de Categoria</h1>
        <div class="row">&nbsp;</div>
        <form action="actualizarCategoria" method="post">
        <div class="mb-3 row">
            <label for="staticEmail" class="col-sm-2 col-form-label">
                <p class="fs-6">ID Categoria:</p></label>
            <div class="col-sm-10">
              <input type="text" value='<%= id_cat %>' name="id1" id="id1" readonly class="form-control-plaintext" id="staticEmail" placeholder="ID Categoria">
              <input type="hidden" value='<%= id_cat %>' name="id" id="id" readonly class="form-control-plaintext" id="staticEmail" >
            </div>
        </div>
            
        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> <p class="fs-6">Nombre Categoria:</p></label>
          <div class="col-sm-10">
              <input type="text" value='<%= nombre_cat %>' name="nombre" id="nombre" class="form-control" placeholder="Nombre Categoria" required="true">
          </div>
        </div>
          
          <div class="mb-3 row">
          <label for="inputPassword" class="col-sm-2 col-form-label">Estado Categoria:</label>
          <div class="col-sm-10">
              <input type="text" value='<%= estado_cat %>' name="estado" id="estado" class="form-control" placeholder="Estado Categoria" required="true">
          </div>
        </div>
          
          <div class="col-sm-offset-2 col-sm-12">
          <button type="submit" name="send" class="btn btn-info btn-sm">Actualizar Categoria</button>
          </div>
        </form>
          
          <%
            String dato = request.getParameter("aviso");
            if(dato!=null){
                //out.print("Registro Actualizado Correctamente");
                //System.out.println("End");
           %>
                   <div class="alert alert-success" role="alert">
                   Modificado!!
                 </div>
           <%   
               }
           %>

        </div>
         <%@include file = "../WEB-INF/Vistas-Parciales/pie.jspf" %>
    </body>
    
    
</html>
