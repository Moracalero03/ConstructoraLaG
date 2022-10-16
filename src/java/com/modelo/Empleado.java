/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.modelo;

import java.io.InputStream;

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
    private InputStream archivoimg;
    private byte[] archivoimg2;
    private String estadoE;

    public Empleado() {
    }

    public Empleado(int idEmpleado, int idRol, String rol, String empleado, String usuario, String password, Double salario, InputStream archivoimg, byte[] archivoimg2, String estadoE) {
        this.idEmpleado = idEmpleado;
        this.idRol = idRol;
        this.rol = rol;
        this.empleado = empleado;
        this.usuario = usuario;
        this.password = password;
        this.salario = salario;
        this.archivoimg = archivoimg;
        this.archivoimg2 = archivoimg2;
        this.estadoE = estadoE;
    }

    public String getEstadoE() {
        return estadoE;
    }

    public void setEstadoE(String estadoE) {
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

    public InputStream getArchivoimg() {
        return archivoimg;
    }

    public void setArchivoimg(InputStream archivoimg) {
        this.archivoimg = archivoimg;
    }

    public byte[] getArchivoimg2() {
        return archivoimg2;
    }

    public void setArchivoimg2(byte[] archivoimg2) {
        this.archivoimg2 = archivoimg2;
    }
    
    
}
