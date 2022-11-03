<%-- 
    Document   : proyecto
    Created on : 24 oct. 2022, 18:46:32
    Author     : Ernesto Navarro
--%>

<%@page import="com.modelo.DepartamentoDAO"%>
<%@page import="com.modelo.Departamento"%>
<%@page import="com.modelo.Departamento"%>
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
        <title>Proyectos</title>
        
    </head>
    <body>
          <%!
            ProyectoDAO proyectoDAO = new ProyectoDAO();
            MunicipioDAO municipioDAO = new MunicipioDAO();
            Detalle_ProyectoDAO detalle_ProyectoDAO = new  Detalle_ProyectoDAO();
            MaquinariaDAO maquinariaDAO = new MaquinariaDAO();
            EmpleadoDAO empleadoDAO = new EmpleadoDAO();
            DepartamentoDAO departamentoDAO = new DepartamentoDAO(); 
            %>
        <%@include file="../template/menu.jsp" %>
          <br>
        <div class="container-fluid">
            <center><h1>Proyectos</h1> </center>
            <div class="row m-4 justify-content-center">
            <div class="col mt-4>"> 
                <button type="button" id="btnAgregar" name="btnAgregar" onclick="agregar()" class="btn btn-primary btn-block" data-toggle="modal" data-target="#mdlAgregar">Agregar proyecto</button>
            <br>
        <table id="tblProyecto" class="table table-light table-responsive" style="width:100%">
            <thead class="thead-dark">
            <tr>
                <th>Id</th>
                <th>Proyecto</th>
                <th>Municipio</th>
                <th>Estado</th>
                <th>Comentario</th>
                <th>Costo inicial</th>
                <th>Costo final</th>
                <th>Fecha inicio</th>
                <th>Fecha Final</th>
                <th>Acción</th>
            </tr>
        </thead>
        <tbody>
                      <% ArrayList<Proyecto> lista = proyectoDAO.mostrarProyectos();
                  for (Proyecto elem : lista) {
                      %> 
                      <tr>
                        <td><%=elem.getIdProyecto()%></td>
                        <td><%=elem.getProyecto()%></td>
                        <td><%=elem.getMunicipio()%></td>
                        <td><%=elem.getEstadoP()%></td>
                        <td><%=elem.getComentario()%></td>
                        <td><%=elem.getCostoInicial()%></td>
                          <td><%=elem.getCostoFinal()%></td>
                         <td><%=elem.getFechaInicio()%></td>
                          <td><%=elem.getFechaFinal()%></td>
                        <td>
                            <div class="btn-group">
                                <button type="button" class="btn " style="background:#CECECE" data-toggle="modal" data-target="#mdlProyecto" onclick="modificar()" id="modificar">Modificar</button>
                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#mdlProyecto" id="eliminar" onclick="eliminar()">Eliminar</button>
                             
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
                    
                    
                             
                    <div class="modal"  role="dialog" id="mdlProyecto">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">PROYECTO</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                              <form action="${pageContext.servletContext.contextPath}/ProyectoServlet" id="Form" method="post">
                              <span>Id</span>
                              <input type="number" name="txtId" id="txtId" value="0" class="form-control" readonly>
                             <span>Nombre del Proyecto</span>
                              <input type="text" name="txtProyecto" id="txtProyecto" class="form-control">
                            <span>Municipio</span>  
                             <center>
                             <select class="sMunicipio" style="width:100%;"  name="sMunicipio" id="sMunicipio"  class="form-control">
                                 <option value='' selected="true" style="text-align: center;">Seleccione o busque un municipio</option>
                                <% 
                                        ArrayList<Municipio> lista1 = municipioDAO.mostrarMunicipios();
                                         for (Municipio elem : lista1) {
                                       
                                %>
                                <option value="<%=elem.getIdMunicipio()%>"><%=elem.getMunicipio()%></option>
                                <%                                    
                                    }
                                %>
                             </select>
                          </center>                                                       
                             <span>Estado</span>
                             <select name="sEstado" id="sEstado" onclick="activar(this.form)" class="form-control">
                                 <option value="Confirmado">Confirmado</option>
                                 <option value="Entregado">Entregado</option>
                                 <option value="Cancelado">Cancelado</option>   
                             </select>
                                                           
                             <div class=" container-fluid row justify-content-center">
                             <div>    
                             <span>Costo inicial</span>
                             <input type="number" id="txtCostoI"  name="txtCostoI" class="form-control">
                             </div>                             
                             &nbsp&nbsp&nbsp&nbsp&nbsp;                             
                             <div style="float: right;">    
                             <span>Costo final</span>
                             <input type="number" id="txtCostoF" name="txtCostoF" class="form-control">
                             </div> 
                             <div>    
                             <span>Fecha inicial</span>
                             <input type="date" id="txtFechaI" name="txtFechaI" class="form-control">
                             </div>
                             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
                             <div>                                   
                             <span>Fecha final</span>
                             <input type="date" id="txtFechaF" name="txtFechaF" class="form-control">
                             </div>    
                             </div>
                             <div id="aparece" style="display:none" >
                             <span>Comentario</span>
                             <textarea class="form-control" disabled=""  name="txtComentario" id="txtComentario"></textarea>
                             </div>
                             </div> 
                              
                          <div class="modal-footer"> 
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
                            <button class="btn btn-primary" id="btnGuardar" name="btnGuardar">Guardar</button>  
                            <button class="btn btn-warning" id="btnModificar" name="btnModificar">Modificar</button> 
                            <button class="btn btn-danger" id="btnEliminar" name="btnEliminar">Eliminar</button> 
                          </div>
                             </form>
                        </div>
                      </div>          
                    </div>
                   
                   <div class="modal"  role="dialog" id="mdlAgregar">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">AGREGAR PROYECTO</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                              <form action="${pageContext.servletContext.contextPath}/ProyectoServlet" id="Form" method="post">
                              <span>Id</span>
                              <input type="number" name="txtId" data="xdsd" id="txtId" value="0" class="form-control" readonly>
                             <span>Nombre del Proyecto</span>
                             <input type="text" name="txtProyecto" id="txtProyecto" class="form-control">                                                         
                             <span>Municipio</span>  
                             <center>
                             <select class="sMunicipio" style="width:100%;"  name="sMunicipio" id="sMunicipio"  class="form-control">
                                 <option value='' style="text-align: center;">Seleccione o busque un municipio</option>
                                <% 
                                        ArrayList<Municipio> lista2 = municipioDAO.mostrarMunicipios();
                                         for (Municipio elem : lista2) {
                                       
                                %>
                                <option value="<%=elem.getIdMunicipio()%>"><%=elem.getMunicipio()%></option>
                                <%                                    
                                    }
                                %>
                             </select>
                          </center>
                             <span>Estado</span>
                             <select name="sEstado" id="sEstado" dropzone="" onclick="activar(this.form)" class="form-control">
                                 <option value="Ingresado">Ingresado</option> 
                             </select>
                                                           
                             <div class=" container-fluid row justify-content-center">
                             <div>    
                             <span>Costo inicial</span>
                             <input type="number" id="txtCostoI"  name="txtCostoI" class="form-control">
                             </div>                             
                             &nbsp&nbsp&nbsp&nbsp&nbsp;                             
                             <div style="float: right;">    
                             <span>Costo final</span>
                             <input type="number" id="txtCostoF" value="0" readonly name="txtCostoF" class="form-control">
                             </div> 
                             <div>    
                             <span>Fecha inicial</span>
                             <input type="date" id="txtFechaI" name="txtFechaI" class="form-control">
                             </div>
                             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
                             <div>                                   
                             <span>Fecha final</span>
                             <input type="date" id="txtFechaF" value="00-00-0000" readonly name="txtFechaF" class="form-control">
                             </div>    
                             </div>
                             <div id="aparece" style="display:none" >
                             <span>Comentario</span>
                             <textarea class="form-control" value=" " readonly name="txtComentario" id="txtComentario"></textarea>
                             </div>
                             </div> 
                              
                          <div class="modal-footer"> 
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
                            <button class="btn btn-primary" id="btnGuardar" name="btnGuardar">Guardar</button>  
                            <button class="btn btn-warning" disabled="" id="btnModificar" name="btnModificar">Modificar</button> 
                            <button class="btn btn-danger" disabled="" id="btnEliminar" name="btnEliminar">Eliminar</button> 
                          </div>
                             </form>
                        </div>
                      </div>          
                    </div>          
                                               
            <% if (request.getAttribute("mensaje")!=null) {
                         %>
             <script>alert("<%=request.getAttribute("mensaje")%>");</script>
            <%
                }
            %>
       

            <br><br>

        <jsp:include page="../template/pie.jsp"/>
    </body> 
     <script>
            $(document).ready(function () {
                $('#tblProyecto').DataTable({
                     "language": {
                            "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"}
                });
            });
     </script>
   
     <script src="${pageContext.servletContext.contextPath}/js/proyecto.js"></script>   

                                   <script type="text/javascript">
	                            $(document).ready(function(){
			             $('.sMunicipio').select2();
	                                  });
                                       </script>  
</html>
