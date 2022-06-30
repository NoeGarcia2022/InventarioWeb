
<%@page import="Model.Producto"%>
<%@page import="Model.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="listaP" scope="session" class="java.util.List" />


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Control de Inventario</title>
        <%@include file = "../WEB-INF/Vistas-Parciales/css-js.jspf" %>
    </head>
 
    <body>
       <%@include file = "../WEB-INF/Vistas-Parciales/encabezado.jspf" %>
        
        <!--<div style="width: 600px;">-->
        <div class="col-auto bg-gray p-5 text-center" style="border: 12px solid ">
            <a href="<%= request.getContextPath() %>/productos?opcionP=crearP" class ="btn btn-success btn-sm glyphicon glyphicon-pencil" role="button">
                Nuevo Producto
            </a>
            <h3>Listado de Productos</h3>
            <table class="table table-striped">
                <tr>
                    <th>
                        ID
                    </th>
                    <th>
                        NOMBRE
                    </th>
                    <th>
                        STOCK
                    </th>
                    <th>
                        PRECIO
                    </th>
                    <th>
                        UNIDAD DE MEDIDA
                    </th>
                    <th>
                        ESTADO
                    </th>
                    <th>
                       ID CATEGORIA
                    </th>
                    <th>
                       CATEGORIA
                    </th>
                    <th>
                        ACCIONES
                    </th>
                </tr>
                <%
                 for(int i = 0; i < listaP.size(); i++){
                    Producto pro = new Producto();
                    pro = (Producto)listaP.get(i);
                 %>
                 <tr>
                     <td><%= pro.getId_producto()%></td>
                     <td><%= pro.getNom_producto()%></td>
                     <td><%= pro.getStock()%></td>
                     <td><%= pro.getPrecio()%></td>
                     <td><%= pro.getUnidadMedida()%></td>
                     <td><%= pro.getEstado()%></td>
                     <td><%= pro.getCategoria_id()%></td>
                     <td><%= pro.getCat()%></td>
                     
                   
                  
                     <td>
                         <a href="productos?opcionP=editarP&&idP=<%= pro.getId_producto()%>&&nombreP=<%=pro.getNom_producto()%>&&stock=<%=pro.getStock()%>&&precio=<%=pro.getPrecio()%>&&unidadMedida=<%=pro.getUnidadMedida()%>&&estado=<%=pro.getEstado()%>&&categoria=<%=pro.getCategoria_id()%>&&opcat<%=pro.getCat()%>" class="btn btn-info btn-sm glyphicon glyphicon-edit" role="button">Editar</a>
                         <a href="productos?opcionP=eliminarP&&idP=<%= pro.getId_producto()%>&&nombreP=<%= pro.getNom_producto()%>" class="btn btn-danger btn-sm glyphicon glyphicon-remove" role="button">Eliminar</a>
                     </td>
                 </tr>
                 <%
                 }
                 %>
            </table>
        </div>
        
        <%@include file = "../WEB-INF/Vistas-Parciales/pie.jspf" %>
    </body>
</html>