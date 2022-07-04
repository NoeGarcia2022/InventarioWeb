<%-- 
    Document   : rpt2
    Created on : 07-04-2022, 07:45:47 AM
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
    Conexion conec = new Conexion();
    Connection con;
    Class.forName(conec.getDriver());
    con = DriverManager.getConnection(
                         conec.getUrl(),
                         conec.getUser(),
                         conec.getPass()
 );
  
File jasperfile = new File(application.getRealPath("reportes/rpt2.jasper"));
Map parametro = new HashMap();
//parametro.put("parametro","aqui va el valor");
byte[] bytes = JasperRunManager.runReportToPdf(jasperfile.getPath(), 
        null,con);
response.setContentType("application/pdf");
response.setContentLength(bytes.length);

ServletOutputStream output= response.getOutputStream();


%>   
        
        
        
        
    </body>
</html>
