<%-- 
    Document   : Reporte1
    Created on : 11-01-2022, 08:33:09 AM
    Author     : marce
--%>

<%@page import="com.modelo.Departamento"%>
<%@page import="com.modelo.DepartamentoDAO"%>
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
        <title>Reporte 5</title>
    </head>
    <body>
        <%@include file="../template/menu.jsp" %>
        <%! DepartamentoDAO dDAO = new DepartamentoDAO();%>
        <div class="container mt-4">
            <h1>Reporte proyectos por departamento y estado</h1>
            <div class="row justify-content-center">
                <div class="col-8">
                    <form>
                            <label>Seleccione un departamento</label><br>
                            <select class="form-control" name="sDepa">
                                <% 
                                    ArrayList<Departamento> lista = dDAO.mostrarDepartamento();
                                    for (Departamento depa : lista) {
                                      
                                %>   
                                    <option value="<%=depa.getDepartamento()%>"><%=depa.getDepartamento()%></option>
                                <%
                                      }
                                %>
                            </select> <br>
                            <label>Seleccione un Estado</label><br>
                            <select class="form-control" name="sEstado">
                                <option value="Ingresado">Ingresado</option>
                                <option value="Confirmado">Confirmado</option>
                                <option value="Entregado">Entregado</option>
                                <option value="Cancelado">Cancelado</option>
                            </select>
                            <button class="btn btn-primary btn-block mt-4" name="btnGenerar">Generar reporte</button>
                    </form> 
                                
                                <% if (request.getParameter("btnGenerar")!=null) {
                                        String depa = request.getParameter("sDepa"); 
                                        String estado = request.getParameter("sEstado"); 
                                        HashMap parametros = new HashMap();
                                        parametros.put("depa",depa);
                                        parametros.put("estado",estado);
                                   
                                    try { 
                                        Conexion con = new Conexion();
                                        con.conectar(); 
                                        File file = new File(application.getRealPath("/reportes/reporte5.jasper")); 
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