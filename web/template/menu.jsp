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