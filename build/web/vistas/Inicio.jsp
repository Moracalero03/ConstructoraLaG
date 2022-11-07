<%-- 
    Document   : Inicio
    Created on : 6 nov. 2022, 19:49:30
    Author     : Ernesto Navarro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("usuario") != null) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title> 
<%@ page language="java"%>
      
         <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  
    </head>
<script> 
    $(function (){
       $("#header").load("${pageContext.servletContext.contextPath}/template/menu.jsp");
       $("#footer").load("${pageContext.servletContext.contextPath}/template/pie.jsp");
    });
</script>
    <body  style="background-color: #EFF0EB">  
        <div id="header"></div>      
        <br>
        <center><h1>"Constructora La Gerencia"</h1></center> 
        <div class="container-fluid">
            <div class="row mb-3 justify-content-center">
                <div class="col-6">
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                              <img src="${pageContext.servletContext.contextPath}/img/construccion.jpg" class="d-block w-90" alt="construccion" width="750px" height="375px">
                          </div>
                          <div class="carousel-item">
                            <img src="${pageContext.servletContext.contextPath}/img/construccion2.jpg" class="d-block w-90" alt="construccion" width="750px" height="375px">
                          </div>
                          <div class="carousel-item">
                            <img src="${pageContext.servletContext.contextPath}/img/casa.jpg" class="d-block w-90" alt="construccion" width="750px" height="375px">
                          </div>
                        </div>
                       <button class="carousel-control-prev" style="background-color: transparent ;border: none;" type="button" data-target="#carouselExampleControls" data-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="sr-only">Previous</span>
                        </button>
                        <button class="carousel-control-next" style="background-color: transparent ;border: none;" type="button" data-target="#carouselExampleControls" data-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="sr-only">Next</span>
                        </button>
                      </div>
                </div>
            </div>
            <div class="row">
                 <div class="col-12">
                    <div class="card border-secondary mb-3">
                        <div class="card-header" style="background-color: #B6E6E9;">
                          MISIÓN
                        </div>
                        <div class="card-body text-secondary">
                          <h5 class="card-title"></h5>
                          <p class="card-text">Proveer servicios de Construcción de Obras Civiles y Arquitectura de la más alta calidad:</p> 
                          <ul>
                              <li>Satisfaciendo las necesidades de nuestros clientes y comprometidos con la mejora continua de nuestros procesos.</li>
                              <li>Desarrollando nuestras actividades en un ambiente de trabajo seguro y saludable, comprometidos con el medio ambiente y la comunidad, generando condiciones para el desarrollo profesional y personal de nuestra gente.</li>
                          </ul>          
                        </div>
                    </div> 
                 </div> 
            </div>
            
            <div class="row">
                <div class="col-12">
                     <div class="card border-secondary mb-3">
                        <div class="card-header" style="background-color: #F5BA8C;">
                          VALORES
                        </div>
                        <div class="card-body text-secondary">
                          <h5 class="card-title"></h5>
                          <p class="card-text">
                          <ul>
                            <li>Liderazgo</li>
                            <li>Compromiso</li>
                            <li>Integridad</li>
                            <li>Eficiencia</li>
                            <li>Proactividad</li>
                            <li>Trabajo en equipo</li>
                          </ul>
                          </p>
                        </div>
                    </div>
                 </div>
            </div>

                  <div class="row"> 
                 <div class="col-12">
                     <div class="card text-white border-secondary mb-3">
                        <div class="card-header bg-secondary border-secondary">
                          VISIÓN
                        </div>
                        <div class="card-body text-secondary">
                          <h5 class="card-title"></h5>
                          <p class="card-text">Ser líderes nacionales en la Construcción de Obras Civiles y de Arquitectura, siendo reconocidos como una empresa confiable, organizada, competitiva y con altos estándares de calidad.</p>
                        </div>
                    </div>
                 </div> 
            </div>
        </div>
        
 <div id="footer"></div>
</body>
  
</html>
<%
    }else{
    response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
%>

