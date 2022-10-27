/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controlador;

import com.modelo.Proyecto;
import com.modelo.ProyectoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ernesto Navarro
 */
public class ProyectoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          int id = Integer.parseInt(request.getParameter("txtId"));
          String proyecto = request.getParameter("txtProyecto");
          int  municipio = Integer.parseInt(request.getParameter("sMunicipio"));
          String estado =  request.getParameter("sEstado");
          String comentario = request.getParameter("txtComentario");
          double costoI = Double.parseDouble(request.getParameter("txtCostoI"));
          double costoF = Double.parseDouble(request.getParameter("txtCostoF"));  
          String fechaInicial = request.getParameter("txtFechaI");
          String fechaFinal = request.getParameter("txtFechaF");
          
          Proyecto proyectos = new Proyecto(id, proyecto, municipio, "", estado, comentario, costoI, costoF, fechaInicial, fechaFinal);
          ProyectoDAO proyectoDAO = new ProyectoDAO();
          String mensaje="";
          
            if (request.getParameter("btnGuardar")!=null) {
               int res = proyectoDAO.ingresarProyecto(proyectos);
                      mensaje =(res!=0)?"Proyecto Ingresado":"Error";    
            }else if (request.getParameter("btnModificar")!=null){
               int res = proyectoDAO.modificarProyecto(proyectos);
                       mensaje =(res!=0)?"Proyecto Modificado":"Error";  
            }else if (request.getParameter("btnEliminar")!=null){
                int res = proyectoDAO.eliminarProyecto(proyectos);
                      mensaje =(res!=0)?"Proyecto Eliminado":"Error";  
            }

            
            request.setAttribute("mensaje",mensaje);
            
            request.getRequestDispatcher("/vistas/Proyecto.jsp").forward(request, response);  
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
