<%-- 
    Document   : Maquina
    Created on : 12 oct. 2022, 11:25:45
    Author     : Ernesto Navarro
--%>

<%@page import="com.modelo.MaquinariaDAO"%>
<%@page import="com.modelo.Maquinaria"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("usuario") != null && session.getAttribute("idRol").toString().equals("1")) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Maquina</title>
    </head>
    <body> 
        <%!
            MaquinariaDAO maquinariaDAO = new MaquinariaDAO();
        %>
        <%@include file="../template/menu.jsp" %>
        <div class="container-fluid">
             <br>
            <center><h1>Maquina</h1> </center>
            <div class="row m-4 justify-content-center">
            <div class="col mt-4>"> 
                <button type="button" value="Limpiar formulario" onclick="agregar()" class="btn btn-primary btn-block" data-toggle="modal" data-target="#mdlMaquina">Agregar maquinaria</button>
                <br>
        <table id="tblMaquina" class="table table-light table-bordered" style="width:100%">
            <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Maquinaria</th>
                <th scope="col">Modelo</th>
                <th scope="col">Marca</th>
                <th scope="col">Tipo</th>
                <th scope="col">Operatividad</th>
                <th scope="col">Estado</th>
                <th scope="col">Acciones</th>
            </tr>
        </thead>
        <tbody>
                    <%
                        ArrayList<Maquinaria> listaMaquinaria = maquinariaDAO.mostrarMaquinaria();
                        for (Maquinaria elem : listaMaquinaria) {
                    %>                 
                            
                    
                    <tr>
                        <td><%=elem.getIdMaquinaria()%></td>
                        <td><%=elem.getMaquinaria() %></td>
                        <td><%=elem.getModelo() %></td>
                        <td><%=elem.getMarca() %></td>
                        <td><%=elem.getTipo() %></td>
                        <td><%=elem.getOperatividad() %></td>
                        <td><%=elem.getEstado() %></td>
                        <td>
                            <div class="btn-group">
                                <button type="button" class="btn" style="background:#F4D859" data-toggle="modal" data-target="#mdlMaquina" onclick="modificar()" id="editar">Editar</button>
                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#mdlMaquina" onclick="eliminar()" id="eliminar">Eliminar</button>
                            </div>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>

            <!-- Modal para agregar-->
             <div class="modal" tabindex="-1" role="dialog" id="mdlMaquina">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Maquinaria</h5>
                            <button type="button" onclick="limpiarFormulario()" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="${pageContext.servletContext.contextPath}/MaquinasServlet" method="POST" id="modalM">
                            <div class="modal-body">
                                ID Maquinaria
                                <input type="number" name="txtIdM" id="txtIdM" class="form-control" value="0" readonly>
                                Maquinaria
                                <input type="text" name="txtNombreM" id="txtNombreM" class="form-control" data-validetta="required" onkeypress="return validarTexto(event)">
                                Modelo
                                <input type="text" name="txtModelo" id="txtModelo" class="form-control" data-validetta="required">
                                Marca
                                <input type="text" name="txtMarca" id="txtMarca" class="form-control" data-validetta="required" onkeypress="return validarTexto(event)">
                                Tipo
                                <input type="text" name="txtTipo" id="txtTipo" class="form-control" data-validetta="required" onkeypress="return validarTexto(event)">
                                Operatividad
                                <input type="text" name="txtOperatividad" id="txtOperatividad" class="form-control" data-validetta="required" onkeypress="return validarNumero(event)">
                                Estado
                                <select name="sEstado" id="sEstado" class="form-control">
                                 <option value="Disponible">Disponible</option>
                                 <option value="Asignado">Asignado</option>   
                                </select>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-secondary" data-dismiss="modal" onclick="limpiarFormulario()">Cerrar</button>
                                <button class="btn btn-primary" name="btnAgregar" id="btnAgregar">Agregar</button>
                                <button class="btn" style="background:#F4D859" name="btnEditar" id="btnEditar">Editar</button>
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
        <script src="${pageContext.servletContext.contextPath}/js/Maquina.js"></script>
                <%
            if (request.getAttribute("mensaje")!=null) {
                %>  
                <script>
                        
            					const Toast = Swal.mixin({
	                                        toast: true,
	                                        position: 'top-end',
	                                        showConfirmButton: false,
	                                        timer: 3000,
	                                        timerProgressBar: true,
	                                        didOpen: (toast) => {
	                                          toast.addEventListener('mouseenter', Swal.stopTimer)
	                                          toast.addEventListener('mouseleave', Swal.resumeTimer)
	                                        }
	                                      })
	
	                                      Toast.fire({
	                                        icon: 'info',
	                                        title: "<%=request.getAttribute("mensaje")%>"
	                                      })
                </script> 
                <%
                }
                %>
                <jsp:include page="../template/pie.jsp"/>
    </body>  
</html>
<%
    }else{
    response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
%>