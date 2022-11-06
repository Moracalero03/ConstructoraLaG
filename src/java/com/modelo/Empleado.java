/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.modelo;

import java.security.MessageDigest;



/**
 *
 * @author canel
 */
public class Empleado {
    private int idEmpleado;
    private int idRol;
    private String rol;
    private String empleado;
    private String usuario;
    private String password;
    private Double salario;
    private String ruta;
    private String estadoE;

    public Empleado() {
    }

    public Empleado(int idEmpleado, int idRol, String rol, String empleado, String usuario, String password, Double salario, String ruta, String estadoE) {
        this.idEmpleado = idEmpleado;
        this.idRol = idRol;
        this.rol = rol;
        this.empleado = empleado;
        this.usuario = usuario;
        this.password = password;
        this.salario = salario;
        this.ruta = ruta;
        this.estadoE = estadoE;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getEmpleado() {
        return empleado;
    }

    public void setEmpleado(String empleado) {
        this.empleado = empleado;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }

    public String getRuta() {
        return ruta;
    }

    public void setRuta(String ruta) {
        this.ruta = ruta;
    }

    public String getEstadoE() {
        return estadoE;
    }

    public void setEstadoE(String estadoE) {
        this.estadoE = estadoE;
    }

    
    public static String md5(String clear) throws Exception {
    MessageDigest md = MessageDigest.getInstance("MD5");
    byte[] b = md.digest(clear.getBytes());
    int size = b.length;
    StringBuffer h = new StringBuffer(size);
    //algoritmo y arreglo md5
        for (int i = 0; i < size; i++) {
            int u = b[i] & 255;
                if (u < 16) {
                    h.append("0" + Integer.toHexString(u));
                }
               else {
                    h.append(Integer.toHexString(u));
               }
           }
      //clave encriptada
      return h.toString();
    }

    
    
    
}
