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

/**
 *
 * @author Ernesto Navarro
 */
public class UsuarioDAO extends Conexion{
    public int validarLogin(Usuario u){
      int rol=0;
      try {
          this.conectar();
          String sql = "SELECT idRol FROM Empleado where usuario=? AND contraseña=?";
          PreparedStatement pre = this.getCon().prepareStatement(sql);
          pre.setString(1, u.getUsuario());
          pre.setString(2, md5(u.getClave()));
          
          
          ResultSet rs = pre.executeQuery();
          while (rs.next()) {
            rol = rs.getInt(1);
              
          }
      } catch (Exception e) {
          System.out.println("Error al validar el login"+e.getMessage());
      } finally {
          this.desconectar();
      }
      return  rol;
  }  
}
