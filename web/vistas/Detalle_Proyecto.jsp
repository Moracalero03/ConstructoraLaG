<%-- 
    Document   : Detalle_Proyecto
    Created on : 27 oct. 2022, 15:17:46
    Author     : Ernesto Navarro
--%>

<%@page import="com.modelo.EmpleadoDAO"%>
<%@page import="com.modelo.Empleado"%>
<%@page import="com.modelo.MaquinariaDAO"%>
<%@page import="com.modelo.Maquinaria"%>
<%@page import="com.modelo.Detalle_Proyecto"%>
<%@page import="com.modelo.Detalle_ProyectoDAO"%>
<%@page import="com.modelo.MunicipioDAO"%>
<%@page import="com.modelo.Municipio"%>
<%@page import="com.modelo.ProyectoDAO"%>
<%@page import="com.modelo.Proyecto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle Proyecto</title>
    </head>
    <body>
          <%!
            ProyectoDAO proyectoDAO = new ProyectoDAO();
            MunicipioDAO municipioDAO = new MunicipioDAO();
            Detalle_ProyectoDAO detalle_ProyectoDAO = new  Detalle_ProyectoDAO();
            MaquinariaDAO maquinariaDAO = new MaquinariaDAO();
            EmpleadoDAO empleadoDAO = new EmpleadoDAO();

 
            %>
            <%@include file="../template/menu.jsp" %>                           
     
          <br>
        <div class="container-fluid">
            <center><h1>Detalle de Proyectos</h1> </center>
            <div class="row m-4 justify-content-center">
            <div class="col mt-4>"> 
                                               
                <button type="button" id="btnAgregar" name="btnAgregar" onclick="agregar()" class="btn btn-primary btn-block" data-toggle="modal" data-target="#mdlGestion">Agregar detalle proyecto</button>
                <br>
             <table id="tblDetalleP" class="table table-light table-responsive" style="width:100%">
            <thead class="thead-dark">
                <tr>
                <th style="width:20%">Id Detalle</th>
                <th style="width:20%">Id Proyecto</th> 
                <th style="width:25%">Proyecto</th>
                <th style="width:25%">Empleado</th>
                <th style="width:30%">Maquinaria</th>
                <th>Acción</th>
            </tr>
        </thead>
        <tbody>
                      <% ArrayList<Detalle_Proyecto> listaD = detalle_ProyectoDAO.mostrarDetalles();
                  for (Detalle_Proyecto elem : listaD) {
                      %> 
                      <tr>
                        <td><%=elem.getIdDetalle_Proyecto()%></td>
                        <td><%=elem.getIdProyecto()%></td>
                        <td><%=elem.getProyecto()%></td>
                        <td><%=elem.getEmpleado()%></td>
                        <td><%=elem.getMaquiaria()%></td>
                        <td>   
                            <div class="btn-group">
                                <button type="button" class="btn " style="background:#F4D859" onclick="modificar()" data-toggle="modal" data-target="#mdlGestion" id="modificar">Editar</button>
                                <button type="button" class="btn btn-danger" data-toggle="modal" onclick="eliminar()" data-target="#mdlGestion" id="eliminar">Eliminar</button>
                             
                            </div>
                        </td>
                      </tr>    
                    <%
                      }
                    %>
                                  
                </tbody>
    </table>             
        </div>
     </div>                 
</div>
                     <div class="modal" tabindex="-1" role="dialog" id="mdlGestion">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">Gestionar Proyecto</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                              <form action="${pageContext.servletContext.contextPath}/Detalle_ProyectoServlet" id="Form" method="post">
                               <span>Id detalle</span>
                               <input type="number" name="txtIdD" id="txtIdD" value="0" class="form-control" readonly>                                  
                               <span>Proyecto</span>
                                 <select name="sProyecto" id="sProyecto" class="form-control" data-validetta="required">
                                       <option value="">Seleccione un proyecto</option>
                                   <% 
                                        ArrayList<Proyecto> listaP= proyectoDAO.mostrarDetalleProyectos();
                                         for (Proyecto elem : listaP) {
                                       
                                   %>
                                   <option value="<%=elem.getIdProyecto()%>"><%=elem.getProyecto()%></option>
                                   <%                                    
                                    }
                                    %>
                                  </select>
                                  <span>Empleado</span>
                                 <select name="sEmpleado" id="sEmpleado" class="form-control" data-validetta="required">
                                       <option value="">Seleccione un empleado</option>
                                   <% 
                                        ArrayList<Empleado> listaE= empleadoDAO.mostrarEmpleados();
                                         for (Empleado elem : listaE) {
                                       
                                   %>
                                   <option value="<%=elem.getIdEmpleado()%>"><%=elem.getEmpleado()%></option>
                                   <%                                    
                                    }
                                    %>
                                  </select>
                               <span>Maquinaria</span>
                                 <select name="sMaquinaria" id="sMaquinaria" class="form-control" data-validetta="required">
                                     <option value="">Seleccione una Maquinaria</option>
                                   <% 
                                        ArrayList<Maquinaria> listaM = maquinariaDAO.mostrarMaquinaria();
                                         for (Maquinaria elem : listaM) {
                                       
                                   %>
                                   <option value="<%=elem.getIdMaquinaria()%>"><%=elem.getMaquinaria()%></option>
                                   <%                                    
                                    }
                                    %>
                                 </select>


                           <div class="modal-footer"> 
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
                            <button class="btn btn-primary" id="btnGuardar" name="btnGuardar">Guardar</button>  
                            <button class="btn" style="background:#F4D859" id="btnModificar" name="btnModificar">Editar</button> 
                            <button class="btn btn-danger" id="btnEliminar" name="btnEliminar">Eliminar</button> 
                          </div>
                              </form>
                        </div>
                      </div>
                    </div>             
                    
                </div>
                                 
                                 
                                 
                                 
                                 
            <% if (request.getAttribute("mensaje")!=null) {
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
     <script>
            $(document).ready(function () {
                $('#tblDetalleP').DataTable({
                     "language": {
                            "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"}
                });
            });
        </script>
                        <script src="${pageContext.servletContext.contextPath}/js/Detalle_Proyecto.js"></script>   


                        
</html>