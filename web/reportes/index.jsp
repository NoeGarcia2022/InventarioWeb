<%-- 
    Document   : index
    Created on : 07-04-2022, 07:12:42 AM
    Author     : Gabriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
    </head>
    <style>
   
    </style>
   
     
    <body>
        
        
    <center>
        <h1>Reportes Inventario Web</h1>
    </center>
        
        <hr>
          <center> 
    <li>
        <a href="${pageContext.request.contextPath}/Principal.jsp">
               INICIO
        </a><br><br>
    </li>
        
        <label>
            <li>
            <a href="${pageContext.request.contextPath}/reportes/rpt1.jsp">
                    Reporte Tabla Categoria
                </a></li>
                <li>
                    <a href="${pageContext.request.contextPath}/reportes/rpt2.jsp">
                    Reporte Tabla Producto
                </a></li>
        </label>
          </center>      
    </body>
</html>
