/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controlador;

import com.modelo.Maquinaria;
import com.modelo.MaquinariaDAO;
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
public class MaquinasServlet extends HttpServlet {

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
            /* captura de datos */
            int idMaquinaria = Integer.parseInt(request.getParameter("txtIdM"));
            String nombre = request.getParameter("txtNombreM");
            String modelo = request.getParameter("txtModelo");
            String marca = request.getParameter("txtMarca");
            String tipo = request.getParameter("txtTipo");
            double operativo = Double.parseDouble(request.getParameter("txtOperatividad"));
            String estado = request.getParameter("sEstado");
            
            Maquinaria maquinaria = new Maquinaria(idMaquinaria, nombre, modelo, marca, tipo, operativo, estado);
            MaquinariaDAO maquinariaDAO = new MaquinariaDAO();
            //CRUD
            String mensaje="";
            if (request.getParameter("btnAgregar")!=null) {
                int res = maquinariaDAO.insertarMaquinaria(maquinaria);
                mensaje = (res!=0)?"Maquinaria insertada":"Error";
            }else if (request.getParameter("btnEditar")!=null) {
                int res = maquinariaDAO.modificarMaquinaria(maquinaria);
                mensaje = (res!=0)?"Maquinaria actualizada":"Error";
            }else if (request.getParameter("btnEliminar")!=null) {
                int res = maquinariaDAO.eliminarMaquinaria(maquinaria);
                mensaje = (res!=0)?"Maquinaria Eliminada":"Error";
            }
            //enviar data a la vista
            request.setAttribute("mensaje", mensaje);
            //redirecionar
            request.getRequestDispatcher("/vistas/Maquina.jsp").forward(request, response);
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
