<%-- 
    Document   : rpt1
    Created on : 07-04-2022, 11:53:35 AM
    Author     : Gabriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.*"%>
<%@page import="config.Conexion" %>
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
 Conexion c = new Conexion ();
 Connection con;
 Class.forName(c.getDriver());
 con = DriverManager.getConnection(
                      c.getUrl(),
                      c.getUser(),
                      c.getPass()
 );
File jasperFile = new File(application.getRealPath("reportes/rpt1.jasper"));
Map parametro = new HashMap();
//parametro.put("parametro1","aqui va el valor");
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
