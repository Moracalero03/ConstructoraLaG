<%-- 
    Document   : Reporte3
    Created on : 11-01-2022, 08:43:00 AM
    Author     : marce
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.modelo.Departamento"%>
<%@page import="com.modelo.DepartamentoDAO"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.io.File"%>
<%@page import="com.conexion.Conexion"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte 2</title>
    </head>
    <body>
        <%@include file="../template/menu.jsp" %>
        <div class="container mt-4">
            <div class="row">
                <div class="col-8">
                    <form method="GET">
                        <label for="">Seleccione un rango de fechas</><br>
                            <input type="text" class="datepicker form-control" name="primerafecha"><br>
                            <input type="text" class="datepicker form-control"  name="segundafecha">
                            <button class="btn btn-danger btn-block mt-4" name="btnGenerar">Generar reporte</button>
                    </form> 
                                
                                <% if (request.getParameter("btnGenerar")!=null) {
                                        String primerafecha = request.getParameter("primerafecha");
                                        String segundafecha = request.getParameter("segundafecha");

                                        HashMap parametros = new HashMap();
                                        parametros.put("primeraFecha",primerafecha);
                                        parametros.put("segundaFecha",segundafecha);
                                   
                                    try { 
                                        Conexion con = new Conexion();
                                        con.conectar(); 

                                        File file = new File(application.getRealPath("/reportes/reporte2.jasper")); 
                                        byte[] bytes = JasperRunManager.runReportToPdf(file.getPath(), parametros, con.getCon());

                                        ServletOutputStream output = response.getOutputStream();
                                        response.setContentType("application/pdf");  
                                        response.setContentLength(bytes.length); 

                                        output.write(bytes);
                                        output.flush(); 
                                        output.close();

                                    } catch (Exception e) {
                                        out.println("Error al mostrar" + e.getMessage());
                                    } 
                                }
                                %>
                </div>
            </div>
        </div>
    </body>
</html>  


