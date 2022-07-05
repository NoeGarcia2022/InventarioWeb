

<%@page import="Factory.FactoryConexionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.File"%>

<%@page import="java.sql.*"%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
 <%
 //variables a utilizar
 FactoryConexionDB factory;
 Connection con;
 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_inventario","root","");
                     
File jasperFile = new File(application.getRealPath("reportes/rpt1.jasper"));
byte[] bytes = JasperRunManager.runReportToPdf(jasperFile.getPath(), null,con);
     
response.setContentType("application/pdf");
response.setContentLength(bytes.length);

ServletOutputStream output = response.getOutputStream();
response.getOutputStream();
output.write(bytes,0,bytes.length);
output.flush();
output.close();
     
 %>
        
        
        
        
        
        
    </body>
</html>
