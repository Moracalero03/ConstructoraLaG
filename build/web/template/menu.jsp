<%-- 
    Document   : menu
    Created on : 10-06-2022, 07:18:21 PM
    Author     : marce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- jQuery -->
      <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/bootstrap/select2.css">
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="${pageContext.servletContext.contextPath}/bootstrap/select2.js"></script>
        <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/bootstrap/style.css">
        
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
    integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
    </script>
      
    
    <!--datatable-->
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <link href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet"> 
    
    <!--    validetta-->
    <script src="${pageContext.servletContext.contextPath}/bootstrap/validetta/validetta.min.js" type="text/javascript"></script>
    <link href="${pageContext.servletContext.contextPath}/bootstrap/validetta/validetta.min.css" rel="stylesheet" type="text/css"/>
    <script src="${pageContext.servletContext.contextPath}/bootstrap/validetta/validettaLang-es-ES.js" type="text/javascript"></script> 
    
   <!--    validacion de campos--> 
    <script src="${pageContext.servletContext.contextPath}/js/validarCampos.js" type="text/javascript"></script> 
    
    <!--SWEETALERT-->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>  

    
</head>

<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("usuario")==null && sesion.getAttribute("idRol")==null ) {
           response.sendRedirect(request.getContextPath()+"/index.jsp");

     }else{
%>
 <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-warning">
  <a class="navbar-brand" href="#"><img src="${pageContext.servletContext.contextPath}/img/logo.png" width="120px" height="40px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.servletContext.contextPath}/vistas/Inicio.jsp">Inicio</a>
      </li>
    <% 
                  if (session.getAttribute("idRol").toString().equals("1")) {
    %>
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
          <a class="dropdown-item" href="${pageContext.servletContext.contextPath}/reportes/Reporte1.jsp">Reporte 1</a>
          <a class="dropdown-item" href="${pageContext.servletContext.contextPath}/reportes/Reporte2.jsp">Reporte 2</a>
          <a class="dropdown-item" href="${pageContext.servletContext.contextPath}/reportes/Reporte3.jsp">Reporte 3</a>
          <a class="dropdown-item" href="${pageContext.servletContext.contextPath}/reportes/Reporte4.jsp">Reporte 4</a>
          <a class="dropdown-item" href="${pageContext.servletContext.contextPath}/reportes/Reporte5.jsp">Reporte 5</a>
        </div>
      </li>
      
      <%
        }
      %> 
       <li class="nav-item">
        <a class="nav-link" href="${pageContext.servletContext.contextPath}/vistas/Detalle_Proyecto.jsp">Detalle proyecto</a>
      </li>
      </li>  
              <li class="nav-item">
          <a class="nav-link" href="${pageContext.servletContext.contextPath}/reportes/ReporteBoleta.jsp">Boleta de pago</a>
      </li> 
    </ul> <lu class="navbar-nav col-2">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
          <%=sesion.getAttribute("usuario") %>
        </a>
 
        <div class="dropdown-menu">
            <a class="dropdown-item"  href="${pageContext.servletContext.contextPath}/index.jsp?cerrar=true"  onclick="window.close()" target="_blank" >Cerrar sesión</a>
        </div>
      </li>
    </lu>   
  </div>
 </nav>
            
<%
    }
%>
      <br>
      <br>
      