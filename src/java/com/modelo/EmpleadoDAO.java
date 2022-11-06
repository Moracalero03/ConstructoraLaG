/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.modelo;

import com.conexion.Conexion;
import static com.modelo.Empleado.md5;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author canel
 */
public class EmpleadoDAO extends Conexion {
    
    
    //funcion para insertar imagen

    
    public int insertarEmpleado(Empleado em){
    int res =0;
        try {
            this.conectar();
            String sql = "INSERT INTO empleado (idRol, empleado, usuario, contraseña, salario, foto, estadoE) VALUES(?,?,?,?,?,?,?)";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setInt(1, em.getIdRol());
            pre.setString(2, em.getEmpleado());
            pre.setString(3, em.getUsuario());
            pre.setString(4, md5(em.getPassword()));
            pre.setDouble(5, em.getSalario());
            pre.setString(6, em.getRuta());
            pre.setString(7, em.getEstadoE());
            
             res= pre.executeUpdate();
        }catch (Exception e) {
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
                c.setRuta(rs.getString(7));
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
            pre.setString(4, md5(c.getPassword()));
            pre.setDouble(5, c.getSalario());
            pre.setString(6, c.getRuta());
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
    
    
    
    public int eliminarEmpleado(Empleado c){
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
    
}
