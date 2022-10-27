/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.modelo;

import com.conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Ernesto Navarro
 */
public class MunicipioDAO extends Conexion{
    
        public ArrayList<Municipio> mostrarMunicipios(){
       ArrayList<Municipio> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "Select*from municipio";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
             Municipio m = new Municipio();
             m.setIdMunicipio(rs.getInt(1));
             m.setMunicipio(rs.getString(3));
             lista.add(m);
            }
        } catch (Exception e) {
            System.out.println("Error al mostrar "+e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
}
