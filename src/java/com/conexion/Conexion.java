/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.conexion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author marce
 */
public class Conexion {
    private Connection con;

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }
    
    public void conectar(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/construtora","root",""); 
            System.out.println("Conectado");
        } catch (Exception e) { 
            System.out.println("Error al conectar" + e.getMessage());
        }
    } 
    
    public void desconectar(){
        try {
            if (!con.isClosed()) {
                con.close();
            }
        } catch (Exception e) { 
            System.out.println("Error" + e.getMessage());
        }
    }
}
