/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controlador;

import com.modelo.Detalle_Proyecto;
import com.modelo.Detalle_ProyectoDAO;
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
public class Detalle_ProyectoServlet extends HttpServlet {

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
           int id = Integer.parseInt(request.getParameter("txtIdD"));
           int idMaquinaria = Integer.parseInt(request.getParameter("sMaquinaria"));
           int idEmpleado = Integer.parseInt(request.getParameter("sEmpleado"));
           int idProyecto = Integer.parseInt(request.getParameter("sProyecto"));
           
           Detalle_ProyectoDAO detalle_ProyectoDAO = new Detalle_ProyectoDAO();
           Detalle_Proyecto detalle_Proyecto = new Detalle_Proyecto(id, idMaquinaria, "", idEmpleado, "", idProyecto, "");
           String mensaje = "";
           
            if (request.getParameter("btnGuardar")!=null) {
               int res = detalle_ProyectoDAO.ingresarDetalleProyecto(detalle_Proyecto);
                      mensaje =(res!=0)?"Detalle de proyecto Ingresado":"Error";    
            }else if (request.getParameter("btnModificar")!=null){
               int res = detalle_ProyectoDAO.modificarDetalleProyecto(detalle_Proyecto);
                       mensaje =(res!=0)?"Detalle de proyecto Modificado":"Error";  
            }else if (request.getParameter("btnEliminar")!=null){
                int res = detalle_ProyectoDAO.eliminarDetalleProyecto(detalle_Proyecto);
                      mensaje =(res!=0)?"Detalle de proyecto Eliminado":"La marce dice que no :v";  
            }

            
            request.setAttribute("mensaje",mensaje);
            
            request.getRequestDispatcher("/vistas/Detalle_Proyecto.jsp").forward(request, response); 
           
            
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
