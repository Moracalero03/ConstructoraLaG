/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
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


    public ArrayList<Municipio> mostrarSelectMunicipio(int idDepartamento){
        ArrayList<Municipio> listaMun = new ArrayList<>();
        try {
            this.conectar();  
            String sql = ("select * from municipio where idDepartamento = " + idDepartamento); 
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();

            while (rs.next()) {
               Municipio m = new Municipio();
               m.setIdMunicipio(rs.getInt(1)); 
               m.setIdDepartamento(rs.getInt(2)); 
               m.setMunicipio(rs.getString(3));

               listaMun.add(m);
            }
        } catch (SQLException e) { 
            System.out.println("Error al mostrar: "+ e.getMessage());
        } 

        return listaMun;
    }

   


} 

