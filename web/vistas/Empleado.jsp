<%-- 
    Document   : Empleado
    Created on : 27 oct. 2022, 10:50:20
    Author     : canel
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="com.modelo.Rol"%>
<%@page import="com.modelo.RolDAO"%>
<%@page import="com.modelo.Empleado"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.modelo.EmpleadoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleado</title>
    </head>
    <body> 
        <%!
            RolDAO rolDAO = new RolDAO();
            EmpleadoDAO empleadoDAO = new EmpleadoDAO();
            Empleado empleado = new Empleado();
        %>
        <%@include file="../template/menu.jsp" %>
        <div class="container-fluid">
             <br>
            <center><h1>Empleado</h1> </center>
            <div class="row m-4 justify-content-center">
            <div class="col mt-4>"> 
                <button type="button" value="Limpiar formulario" onclick="limpiarFormulario()" class="btn btn-primary btn-block" data-toggle="modal" data-target="#mdlEmpleado">Agregar Empleado</button>
                <br>
        <table id="tblMaquina" class="table table-light table-bordered" style="width:100%">
            <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Rol</th>
                <th scope="col">Empleado</th>
                <th scope="col">Usuario</th>
                <th scope="col">Contraseña</th>
                <th scope="col">Salario</th>
                <th scope="col">Foto</th>
                <th scope="col">Estado</th>
                <th scope="col">Acciones</th>
            </tr>
        </thead>
        <tbody>
                    <%
                        ArrayList<Empleado> listaMaquinaria = empleadoDAO.mostrarEmpleados();
                        for (Empleado elem : listaMaquinaria) {
                        String imagen = new String(elem.getRuta());

                    %>                 
                            
                    
                    <tr>
                        <td><%=elem.getIdEmpleado()%></td>
                        <td><%=elem.getRol()%></td>
                        <td><%=elem.getEmpleado()%></td>
                        <td><%=elem.getUsuario()%></td>
                        <td><%=elem.getPassword()%></td>
                        <td><%=elem.getSalario()%></td>
                        <td>
                            <img src="<%=elem.getRuta()%>" alt="images Here" width="200" height="200"/>
                            
                        </td>
                        <td class="collapse"><%=elem.getRuta()%></td>
                        <td><%=elem.getEstadoE()%></td>
                        <td>
                            <div class="btn-group">
                                <button type="button" class="btn" style="background:#F4D859" data-toggle="modal" data-target="#mdlEmpleado" id="editar">Editar</button>
                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#mdlEmpleado" id="eliminar">Eliminar</button>
                            </div>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
                <%!
                            EmpleadoDAO dao = new EmpleadoDAO();
                            List<Empleado> lista = new ArrayList<>();
                        %>
                
                


            <!-- Modal para agregar-->
             <div class="modal" tabindex="-1" role="dialog" id="mdlEmpleado">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Empleado</h5>
                            <button type="button" onclick="limpiarFormulario()" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="${pageContext.servletContext.contextPath}/EmpleadoServlet" method="POST" id="modalE">
                            <div class="modal-body">
                                ID Empleado
                                <input type="number" name="txtIdEmpleado" id="txtIdEmpleado" class="form-control" value="0" readonly>
                                Rol
                                <select name="sRol" class="form-control" id="sRol">                                    
                                    <%
                                        ArrayList<Rol> listaEquipos = rolDAO.mostrarRol();
                                        for (Rol elem : listaEquipos) {
                                    %>
                                                <option value="<%=elem.getIdRol()%>"><%=elem.getNivelAcceso()%></option>
                                    <%
                                            }
                                    %>
                                </select>
                                Empleado
                                <input type="text" name="txtEmpleado" id="txtEmpleado" class="form-control">
                                Usuario
                                <input type="text" name="txtUsuario" id="txtUsuario" class="form-control">
                                Contraseña
                                <input type="text" name="txtContrasena" id="txtContrasena" class="form-control">
                                Salario
                                <input type="number" name="txtSalario" id="txtSalario" class="form-control">
                                Foto<br>
                                <input type="text" name="txtFoto" id="txtFoto" class="form-control">
                            
                                Estado
                                <!--<input type="text" name="txtEstado" id="txtEstado" class="form-control">-->
                                <select name="sEstado" id="sEstado" class="form-control">
                                 <option value="Disponible">Disponible</option>
                                 <option value="Asignado">Asignado</option>
                             </select>
                                </select>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-secondary" data-dismiss="modal" onclick="limpiarFormulario()">Cerrar</button>
                                <button type="submit" class="btn btn-primary" name="btnAgregar" id="btnAgregar">Agregar</button>
                                <button class="btn btn-warning" name="btnEditar" id="btnEditar">Editar</button>
                                <button class="btn btn-danger" name="btnEliminar" id="btnEliminar">Eliminar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>
         <script>
            $(document).ready(function () {
                $('#tblMaquina').DataTable({
                     "language": {
                            "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"}
                });
            });
        </script>
        <script src="${pageContext.servletContext.contextPath}/js/Empleados.js"></script>
                <%
            if (request.getAttribute("mensaje")!=null) {
                %>  
                <script>alert("<%=request.getAttribute("mensaje") %>");</script>
                <%
                }
                %>
                <jsp:include page="../template/pie.jsp"/>
    </body>  
</html>
