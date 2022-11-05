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

    public int ingresarDetalleProyecto(Detalle_Proyecto d){
    int res= 0;
    try {
        this.conectar();
        String sql = "INSERT INTO detalle_proyecto (idMaquinaria,idEmpleado,idProyecto) Values (?,?,?)";
        PreparedStatement pre = this.getCon().prepareStatement(sql);
        pre.setInt(1, d.getIdMaquinaria());
        pre.setInt(2, d.getIdEmpleado());
        pre.setInt(3, d.getIdProyecto());

        res= pre.executeUpdate();
        
    } catch (SQLException e) {
        System.out.println("Error al ingresar el detalle del proyecto "+e.getMessage());
    } finally {
        this.desconectar();
    }
    return res;
}

public ArrayList<Detalle_Proyecto> mostrarDetalles(){
       ArrayList<Detalle_Proyecto> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "select idDetalleProyecto, de.idProyecto, proyecto, empleado, maquinaria from detalle_proyecto de \n" +
"INNER JOIN proyecto pr ON de.idProyecto=pr.idProyecto\n" +
"INNER JOIN empleado em ON de.idEmpleado=em.idEmpleado\n" +
"INNER JOIN maquinaria ma ON de.idMaquinaria=ma.idMaquinaria";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
             Detalle_Proyecto d = new Detalle_Proyecto();
             d.setIdDetalle_Proyecto(rs.getInt(1));
             d.setIdProyecto(rs.getInt(2));
             d.setProyecto(rs.getString(3));
             d.setEmpleado(rs.getString(4));
             d.setMaquiaria(rs.getString(5));
             lista.add(d);
            }
        } catch (Exception e) {
            System.out.println("Error al mostrar "+e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }


    public int modificarDetalleProyecto(Detalle_Proyecto d){
    int res= 0;
    try {
        this.conectar();
        String sql = "update detalle_proyecto set idMaquinaria=?, idEmpleado=?, idProyecto=? Where idDetalleProyecto=?";
        PreparedStatement pre = this.getCon().prepareStatement(sql);
        pre.setInt(1, d.getIdMaquinaria());
        pre.setInt(2, d.getIdEmpleado());
        pre.setInt(3, d.getIdProyecto());
        pre.setInt(4, d.getIdDetalle_Proyecto());

        res= pre.executeUpdate();
        
    } catch (SQLException e) {
        System.out.println("Error al modificar el detalle del proyecto "+e.getMessage());
    } finally {
        this.desconectar();
    }
    return res;
    }
    
    public int eliminarDetalleProyecto(Detalle_Proyecto d){
    int res= 0;
    try {
        this.conectar();
        String sql = "delete from detalle_proyecto where idDetalleProyecto=?";
        PreparedStatement pre = this.getCon().prepareStatement(sql);
        pre.setInt(1, d.getIdDetalle_Proyecto());

        res= pre.executeUpdate();
        
    } catch (SQLException e) {
        System.out.println("Error al eliminar el detalle del proyecto "+e.getMessage());
    } finally {
        this.desconectar();
    }
    return res;
    }
    
}
