<%-- 
    Document   : menu
    Created on : 10-06-2022, 07:18:21 PM
    Author     : marce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/bootstrap/bootstrap.min.css"> 
        <script src="${pageContext.servletContext.contextPath}/bootstrap/jquery-3.6.1.min.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath}/bootstrap/bootstrap.min.js" type="text/javascript"></script> 
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.3.0/css/responsive.bootstrap4.min.css"> 
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Sistema de gestion</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
    <a class="nav-item nav-link" href="${pageContext.servletContext.contextPath}/Inicio.jsp">Inicio</a>
    <a class="nav-item nav-link" href="${pageContext.servletContext.contextPath}/vistas/departamento.jsp">Departamentos</a>
      <a class="nav-item nav-link" href="${pageContext.servletContext.contextPath}/vistas/empleado.jsp">Empleados</a>
    </div>
  </div>
</nav>