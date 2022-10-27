/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.modelo;

import com.conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Ernesto Navarro
 */
public class Detalle_ProyectoDAO extends Conexion{


public ArrayList<Detalle_Proyecto> mostrarDetalles(){
       ArrayList<Detalle_Proyecto> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "select idDetalleProyecto, proyecto, empleado, maquinaria from detalle_proyecto de\n" +
                         "INNER JOIN proyecto pr ON de.idProyecto=pr.idProyecto\n" +
                         "INNER JOIN empleado em ON de.idEmpleado=em.idEmpleado\n" +
                         "INNER JOIN maquinaria ma ON de.idMaquinaria=ma.idMaquinaria";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
             Detalle_Proyecto d = new Detalle_Proyecto();
             d.setIdDetalle_Proyecto(rs.getInt(1));
             d.setProyecto(rs.getString(2));
             d.setEmpleado(rs.getString(3));
             d.setMaquiaria(rs.getString(4));
             lista.add(d);
            }
        } catch (Exception e) {
            System.out.println("Error al mostrar "+e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }

    
    
}
