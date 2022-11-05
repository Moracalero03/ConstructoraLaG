/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controlador;


import com.modelo.Empleado;
import com.modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@MultipartConfig
/**
 *
 * @author canel
 */
@WebServlet(name = "EmpleadoServlet", urlPatterns = {"/EmpleadoServlet"})
public class EmpleadoServlet extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
            /* TODO output your page here. You may use following sample code. */
          
          int id = Integer.parseInt(request.getParameter("txtIdEmpleado"));
          int idRol = Integer.parseInt(request.getParameter("sRol"));
          String empleado = request.getParameter("txtEmpleado");
          String  usuario = request.getParameter("txtUsuario");
          String contra =  request.getParameter("txtContrasena");
          double salario = Double.parseDouble(request.getParameter("txtSalario"));
           String foto = request.getParameter("txtFoto");
          String estado = request.getParameter("sEstado");
          
          Empleado empleados = new Empleado(id, idRol, "", empleado, usuario, contra, salario, foto, estado);
          EmpleadoDAO empleadoDAO = new EmpleadoDAO();
          String mensaje="";
          
            if (request.getParameter("btnAgregar")!=null) {
               int res = empleadoDAO.insertarEmpleado(empleados);
                      mensaje =(res!=0)?"Empleado Ingresado":"Error";    
            }else if (request.getParameter("btnEditar")!=null){
               int res = empleadoDAO.modificarEmpleado(empleados);
                       mensaje =(res!=0)?"Empleado Modificado":"Error";  
            }else if (request.getParameter("btnEliminar")!=null){
                int res = empleadoDAO.eliminarEmpleado(empleados);
                      mensaje =(res!=0)?"Empleado Eliminado":"Error";  
            }

            
            request.setAttribute("mensaje",mensaje);
            
            request.getRequestDispatcher("/vistas/Empleado.jsp").forward(request, response); 
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
