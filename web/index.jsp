<%-- 
    Document   : index
    Created on : 10-12-2022, 10:10:46 AM
    Author     : marce
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>             
        <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/bootstrap/style.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
    integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
    </script>
    
    <body style="background-image: url('./img/banner.png')">          
        <div class="container" >
<div class="row align-items-center justify-content-center vh-100" >
    <div class="col-lg-4 col-md-4 col-sm-12 card"  style="box-shadow: 0px 0px 5px 2px #AFCBC0 ;background: #FFFEE7;  background: rgba(250, 250, 250, 0.8) ">
        <div class="card-body">
        <img src="${pageContext.servletContext.contextPath}/img/logo.png" width='200' class="mx-auto img-fluid d-block my-1">       
         <br> 
            <form action="${pageContext.servletContext.contextPath}/Login2Servlet" method="POST">
                Usuario
                <input type="text" class="form-control" name="txtUsuario" id="txtUsuario">
                Contraseña 
            <div class="container contenedor">
            <input type="password" class="passw form-control" name="txtContrasena" id="txtContrasena"> 
            <img src="${pageContext.servletContext.contextPath}/img/Show.png" alt="" class="icon" id="Eye">                               
            </div>
            <br>                                 
            <button class="btn btn-primary mt-2 btn-block btn-sm" type="submit" name="btnLogin">
            <svg xmlns="http://www.w3.org/2000/svg" width="4%" height="4%" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
            </svg>&nbsp;
               Iniciar sesión</button>
            </form>
        </div>                              
    </div>
</div>
</div>
    </body>    
        <script src="${pageContext.servletContext.contextPath}/js/code.js"></script>
</html>
<%
    if (request.getParameter("cerrar")!=null) {
                               HttpSession sesion = request.getSession();
                               sesion.invalidate();
        }
%>