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
 * @author canel
 */
public class MaquinariaDAO extends Conexion {
    public int insertarMaquinaria(Maquinaria m){
    int res =0;
        try {
            this.conectar();
            String sql = "INSERT INTO maquinaria (maquinaria, modelo, marca, tipo, operatividad, estado) VALUES(?,?,?,?,?,?)";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setString(1, m.getMaquinaria());
            pre.setString(2, m.getModelo());
            pre.setString(3, m.getMarca());
            pre.setString(4, m.getTipo());
            pre.setDouble(5, m.getOperatividad());
            pre.setString(6, m.getEstado());
            
            res= pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al insertar wacha: "+e.getMessage());
        } finally {
            this.desconectar();
        }
        return res;
    }
    
    public ArrayList<Maquinaria>mostrarMaquinaria(){
        ArrayList<Maquinaria> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT * FROM maquinaria";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()){
                Maquinaria m = new Maquinaria();
                m.setIdMaquinaria(rs.getInt(1));
                m.setMaquinaria(rs.getString(2));
                m.setModelo(rs.getString(3));
                m.setMarca(rs.getString(4));
                m.setTipo(rs.getString(5));
                m.setOperatividad(rs.getDouble(6));
                m.setEstado(rs.getString(7));
                lista.add(m);
            }
        } catch (SQLException e) {
            System.out.println("Error al mostrar wacha: "+e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
     public ArrayList<Maquinaria>mostrarDetalleMaquinaria(){
        ArrayList<Maquinaria> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "select * from maquinaria where estado!=\"Asignado\"";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()){
                Maquinaria m = new Maquinaria();
                m.setIdMaquinaria(rs.getInt(1));
                m.setMaquinaria(rs.getString(2));
                m.setModelo(rs.getString(3));
                m.setMarca(rs.getString(4));
                m.setTipo(rs.getString(5));
                m.setOperatividad(rs.getDouble(6));
                m.setEstado(rs.getString(7));
                lista.add(m);
            }
        } catch (SQLException e) {
            System.out.println("Error al mostrar wacha: "+e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
    public int modificarMaquinaria(Maquinaria m){
    int res = 0;
        try {
            this.conectar();
            String sql = "UPDATE maquinaria SET maquinaria=?, modelo=?, marca=?, tipo=?, operatividad=?, estado=? WHERE idMaquinaria=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setString(1, m.getMaquinaria());
            pre.setString(2, m.getModelo());
            pre.setString(3, m.getMarca());
            pre.setString(4, m.getTipo());
            pre.setDouble(5, m.getOperatividad());
            pre.setString(6, m.getEstado());
            pre.setInt(7, m.getIdMaquinaria());
            
            res= pre.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error al mostrar wacha: "+e.getMessage());

        } finally {
            this.desconectar();
        }
        return res;
    }
    
    public int eliminarMaquinaria(Maquinaria m){
        int res = 0;
            try {
                this.conectar();
                String sql = "DELETE FROM maquinaria WHERE idMaquinaria=?";
                PreparedStatement pre = this.getCon().prepareStatement(sql);
                pre.setInt(1, m.getIdMaquinaria());

                res= pre.executeUpdate();
            } catch (Exception e) {
                System.out.println("Error al mostrar wacha: "+e.getMessage());

            } finally {
                this.desconectar();
            }
            return res;
    }
    
}
