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
public class ProyectoDAO extends Conexion{
  
    public int ingresarProyecto(Proyecto p){
    int res= 0;
    try {
        this.conectar();
        String sql = "insert into proyecto (idMunicipio, proyecto, EstadoP, comentario, costoInicial, costoFinal, FechaInicio, FechaFinal) Values(?,?,?,?,?,?,?,?)";
        PreparedStatement pre = this.getCon().prepareStatement(sql);
        pre.setInt(1, p.getIdMunicipio());
        pre.setString(2, p.getProyecto());
        pre.setString(3, p.getEstadoP());
        pre.setString(4, p.getComentario());
        pre.setDouble(5, p.getCostoInicial());
        pre.setDouble(6, p.getCostoFinal());
        pre.setString(7, p.getFechaInicio());
        pre.setString(8, p.getFechaFinal());
        res= pre.executeUpdate();
        
    } catch (SQLException e) {
        System.out.println("Error al ingresar Proyecto "+e.getMessage());
    } finally {
        this.desconectar();
    }
    return res;
}


public ArrayList<Proyecto> mostrarProyectos(){
       ArrayList<Proyecto> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT idProyecto, proyecto,m.municipio, EstadoP, comentario, costoInicial,\n" +
                         "costoFinal, FechaInicio, FechaFinal\n" +
                         "FROM proyecto p\n" +
                         "INNER JOIN municipio m\n" +
                         "ON p.idMunicipio = m.idMunicipio;";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
             Proyecto p = new Proyecto();
             p.setIdProyecto(rs.getInt(1));
             p.setProyecto(rs.getString(2));
             p.setMunicipio(rs.getString(3));
             p.setEstadoP(rs.getString(4));
             p.setComentario(rs.getString(5));
             p.setCostoInicial(rs.getDouble(6));
             p.setCostoFinal(rs.getDouble(7));
             p.setFechaInicio(rs.getString(8));
             p.setFechaFinal(rs.getString(9));
             lista.add(p);
            }
        } catch (Exception e) {
            System.out.println("Error al mostrar "+e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    

    public int modificarProyecto(Proyecto p){
    int res= 0;
    try {
        this.conectar();
        String sql = "update proyecto set idMunicipio=?, proyecto=?, EstadoP=?, comentario=?, costoInicial=?, costoFinal=?, FechaInicio=?, FechaFinal=? where idProyecto=?";
        PreparedStatement pre = this.getCon().prepareStatement(sql);
        pre.setInt(1, p.getIdMunicipio());
        pre.setString(2, p.getProyecto());
        pre.setString(3, p.getEstadoP());
        pre.setString(4, p.getComentario());
        pre.setDouble(5, p.getCostoInicial());
        pre.setDouble(6, p.getCostoFinal());
        pre.setString(7, p.getFechaInicio());
        pre.setString(8, p.getFechaFinal());
        pre.setInt(9, p.getIdProyecto());
        res= pre.executeUpdate();
        
    } catch (SQLException e) {
        System.out.println("Error al modificar Proyecto "+e.getMessage());
    } finally {
        this.desconectar();
    }
    return res;
}
    public int eliminarProyecto(Proyecto p){
    int res= 0;
    try {
        this.conectar();
        String sql = "delete from proyecto where idProyecto=?";
        PreparedStatement pre = this.getCon().prepareStatement(sql);
        pre.setInt(1, p.getIdProyecto());
        res= pre.executeUpdate();
        
    } catch (SQLException e) {
        System.out.println("Error al eliminar Proyecto "+e.getMessage());
    } finally {
        this.desconectar();
    }
    return res;
}
   
    
    
}
