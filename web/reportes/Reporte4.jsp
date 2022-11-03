<%-- 
    Document   : Reporte1
    Created on : 11-01-2022, 08:33:09 AM
    Author     : marce
--%>

<%@page import="java.util.HashMap"%>
<%@page import="com.modelo.Proyecto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.modelo.ProyectoDAO"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.io.File"%>
<%@page import="com.conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte 1</title>
    </head>
    <body>
        <%@include file="../template/menu.jsp" %>
        <%! ProyectoDAO pDAO = new ProyectoDAO();%>
        <div class="container mt-4">
            <div class="row">
                <div class="col-8">
                    <form method="POST">
                        <label for="">Seleccione un proyecto</><br>
                            <select class="form-control" name="sProyecto">
                                <% 
                                    ArrayList<Proyecto> lista = pDAO.mostrarProyectos();
                                    for (Proyecto proy : lista) {
                                      
                                %>   
                                    <option value="<%=proy.getProyecto()%>"><%=proy.getProyecto()%></option>
                                <%
                                      }
                                %>
                            </select> 
                            <button class="btn btn-danger btn-block mt-4" name="btnGenerar">Generar reporte</button>
                    </form> 
                                
                                <% if (request.getParameter("btnGenerar")!=null) {
                                        String proy = request.getParameter("sProyecto"); 
                                        HashMap parametros = new HashMap();
                                        parametros.put("proyecto",proy);
                                   
                                    try { 
                                        Conexion con = new Conexion();
                                        con.conectar(); 

                                        File file = new File(application.getRealPath("/reportes/reporte4.jasper")); 
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
