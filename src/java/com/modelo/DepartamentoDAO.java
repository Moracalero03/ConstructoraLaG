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
 * @author Josue Palacios - The Big Pili - Eriatsu Slorzan
 */
public class DepartamentoDAO extends Conexion{
    
    public ArrayList<Departamento> mostrarDepartamento(){
        ArrayList<Departamento> listaDep = new ArrayList<>();
        try {
            this.conectar();  
            String sql = "select * from departamento"; 
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            
            while (rs.next()) {
               Departamento d = new Departamento();
               d.setIdDepartamento(rs.getInt(1)); 
               d.setDepartamento(rs.getString(2));
               
               listaDep.add(d);
            }
        } catch (Exception e) { 
            System.out.println("Error al mostrar: "+ e.getMessage());
        } 
        
        return listaDep;
    }
}
