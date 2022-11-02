<%-- 
    Document   : menu
    Created on : 10-06-2022, 07:18:21 PM
    Author     : marce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
    integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
    </script>
    
    <!--datatable--> 
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js" type="text/javascript"></script> 
    <link href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet">
</head>

 <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-warning">
  <a class="navbar-brand" href="#"><img src="${pageContext.servletContext.contextPath}/img/logo.png" width="120px" height="40px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.servletContext.contextPath}/index.jsp">Inicio</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.servletContext.contextPath}/vistas/Empleado.jsp">Empleado</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.servletContext.contextPath}/vistas/Proyecto.jsp">Proyecto</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="${pageContext.servletContext.contextPath}/vistas/Maquina.jsp">Maquina</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
          Reportes
        </a> 
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Reporte 1</a>
          <a class="dropdown-item" href="#">Reporte 2</a>
          <a class="dropdown-item" href="#">Reporte 3</a>
          <a class="dropdown-item" href="#">Reporte 4</a>
          <a class="dropdown-item" href="#">Reporte 5</a>
        </div>
      </li>            
    </ul> <lu class="navbar-nav col-2">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
          Usuario
        </a>
          
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Cerrar sesión</a>
        </div>
      </li>
    </lu>   
  </div>
 </nav>
      <br>
      <br>