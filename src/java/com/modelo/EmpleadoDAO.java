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
public class EmpleadoDAO extends Conexion {
    public int insertarEmpleado(Empleado em){
    int res =0;
        try {
            this.conectar();
            String sql = "INSERT INTO empleado (idRol, empleado, usuario, contraseña, salario, foto, estadoE) VALUES(?,?,?,?,?,?,?)";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setInt(1, em.getIdRol());
            pre.setString(2, em.getEmpleado());
            pre.setString(3, em.getUsuario());
            pre.setString(4, em.getPassword());
            pre.setDouble(5, em.getSalario());
            pre.setBlob(6, em.getArchivoimg());
            pre.setString(7, em.getEstadoE());
            
             res= pre.executeUpdate();
        }catch (SQLException e) {
            System.out.println("Error al insertar wacha: "+e.getMessage());
        } finally {
            this.desconectar();
        }
        return res;
    
    }
    
    public ArrayList<Empleado>mostrarEmpleados(){
        ArrayList<Empleado> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT * FROM  empleado em INNER JOIN rol ro ON em.idRol=ro.idRol";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()){
                Empleado c = new Empleado();
                c.setIdEmpleado(rs.getInt(1));
                c.setIdRol(rs.getInt(2));
                c.setEmpleado(rs.getString(3));
                c.setUsuario(rs.getString(4));
                c.setPassword(rs.getString(5));
                c.setSalario(rs.getDouble(6));
                c.setArchivoimg2(rs.getBytes(7));
                c.setEstadoE(rs.getString(8));
                c.setRol(rs.getString(10));
                lista.add(c);
            }
        } catch (SQLException e) {
            System.out.println("Error al mostrar wacha: "+e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
    
    public int modificarEmpleado(Empleado c){
    int res = 0;
        try {
            this.conectar();
            String sql = "UPDATE empleado SET idRol=?, empleado=?, usuario=?, contraseña=?, salario=?, foto=?, estadoE=? WHERE idEmpleado=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setInt(1, c.getIdRol());
            pre.setString(2, c.getEmpleado());
            pre.setString(3, c.getUsuario());
            pre.setString(4, c.getPassword());
            pre.setDouble(5, c.getSalario());
            pre.setBlob(6, c.getArchivoimg());
            pre.setString(7, c.getEstadoE());
            pre.setInt(8, c.getIdEmpleado());
            
            res= pre.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error al mostrar wacha: "+e.getMessage());

        } finally {
            this.desconectar();
        }
        return res;
    }
    
    public int modificarEmpleado2(Empleado c){
    int res = 0;
        try {
            this.conectar();
            String sql = "UPDATE empleado SET empleado=? WHERE idEmpleado=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setString(1, c.getEmpleado());
            pre.setInt(2, c.getIdEmpleado());
            
            res= pre.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error al mostrar wacha: "+e.getMessage());

        } finally {
            this.desconectar();
        }
        return res;
    }
    
    
    public int eliminarJugador(Empleado c){
        int res = 0;
            try {
                this.conectar();
                String sql = "DELETE FROM empleado WHERE idEmpleado=?";
                PreparedStatement pre = this.getCon().prepareStatement(sql);
                pre.setInt(1, c.getIdEmpleado());

                res= pre.executeUpdate();
            } catch (Exception e) {
                System.out.println("Error al mostrar wacha: "+e.getMessage());

            } finally {
                this.desconectar();
            }
            return res;
    }
    
    
    public Empleado getImagenVOById(int studentId) {
        Empleado vo = new Empleado();
        Conexion db = new Conexion();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String query = "SELECT * FROM empleado WHERE idEmpleado = ?;";
        try {
            preparedStatement = db.getCon().prepareStatement(query);
            preparedStatement.setInt(1, studentId);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
            vo.setIdRol(rs.getInt(1));
            vo.setEmpleado(rs.getString(2));
            vo.setUsuario(rs.getString(3));
            vo.setPassword(rs.getString(4));
            vo.setSalario(rs.getDouble(5));
            vo.setArchivoimg2(rs.getBytes(6));
            vo.setEstadoE(rs.getString(7));
            vo.setIdEmpleado(rs.getInt(8));
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                rs.close();
                preparedStatement.close();
                db.desconectar();
            } catch (Exception ex) {
            }
        }
        return vo;
    }

    
}
