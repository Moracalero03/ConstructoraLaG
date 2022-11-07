<%-- 
    Document   : ReporteBoleta
    Created on : 6 nov. 2022, 23:53:23
    Author     : canel
--%>

<%@page import="com.modelo.EmpleadoDAO"%>
<%@page import="com.modelo.Empleado"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.io.File"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Boleta</title>
    </head>
    
    <body>
        <%@include file="../template/menu.jsp" %>
        <%!
            
            EmpleadoDAO empleadoDAO = new EmpleadoDAO();
            Empleado empleado = new Empleado();
        %>
        <div class="container mt-4">
            <h1>Boleta de pago <%=sesion.getAttribute("usuario") %></h1>
            <div class="row justify-content-center">
                <div class="col-8">
                    <form target="bank">
                                <select name="txtUsuario" class="form-control collapse" id="txtUsuario">                                    
                                    <%
                                        ArrayList<Empleado> listaUser = empleadoDAO.mostrarUsuarios();
                                        for (Empleado elem : listaUser) {
                                        if (sesion.getAttribute("usuario").equals(elem.getUsuario()) ) {
                                                
                                           
                                    %>
                                                <option value="<%=elem.getUsuario()%>"><%=elem.getUsuario()%></option>
                                    <%
                                        }
                                            }
                                    %>
                                </select>
                        
                            
                            <button class="btn btn-primary btn-block mt-4" name="btnGenerar">Generar Boleta de Pago</button>
                    </form> 
                                
                                <% if (request.getParameter("btnGenerar")!=null) {
                                        String usuarios = request.getParameter("txtUsuario"); 
                                        HashMap parametros = new HashMap();
                                        parametros.put("valorSesion",usuarios);
                                   
                                    try { 
                                        Conexion con = new Conexion();
                                        con.conectar(); 

                                        File file = new File(application.getRealPath("/reportes/boleta_de_Pago.jasper")); 
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
