/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

import com.conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author marce
 */
public class RolDAO extends Conexion{
    public ArrayList<Rol> mostrarRol(){
        ArrayList<Rol> listaRol = new ArrayList<>();
        try {
            this.conectar();  
            String sql = "select * from rol"; 
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            
            while (rs.next()) {
               Rol r = new Rol();
               r.setIdRol(rs.getInt(1)); 
               r.setNivelAcceso(rs.getString(2));
               
               listaRol.add(r);
            }
        } catch (Exception e) { 
            System.out.println("Error al mostrar: "+ e.getMessage());
        } 
        
        return listaRol;
    }
}
