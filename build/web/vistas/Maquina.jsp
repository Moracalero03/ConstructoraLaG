<%-- 
    Document   : Maquina
    Created on : 12 oct. 2022, 11:25:45
    Author     : Ernesto Navarro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Maquina</title>
    </head>
    <body> 
        <%@include file="../template/menu.jsp" %>
        <div class="container-fluid">
            <br>
            <center><h1>Maquina</h1> </center>
            <div class="row m-4 justify-content-center">
            <div class="col mt-4>"> 
                <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#mdlMaquina">Agregar maquinaria</button>
                <br>
        <table id="tblMaquina" class="table table-light table-bordered" style="width:100%">
            <thead class="thead-dark">
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011-04-25</td>
                <td>$320.800,00</td>
            </tr> 
        </tbody>
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </tfoot>
    </table> 
                
                    <div class="modal" tabindex="-1" role="dialog" id="mdlMaquina">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">Modal title</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <p>Modal body text goes here.</p>
                          </div>
                          <div class="modal-footer">
                              <button type="submit" class="btn btn-success" id="btnGuardar" name="btnGuardar">Guardar</button>
                            <button type="submit" class="btn btn-warning" id="btnModificar" name="btnModificar">Modificar</button> 
                            <button type="submit" class="btn btn-danger" id="btnEliminar" name="btnEliminar">Eliminar</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                          </div>
                        </div>
                      </div>
                    </div>
            </div>
            </div>
        </div>
        <jsp:include page="../template/pie.jsp"/>
        <script>
            $(document).ready(function () {
                $('#tblMaquina').DataTable({
                     "language": {
                            "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"}
                });
            });
        </script>
    </body>  
</html>
