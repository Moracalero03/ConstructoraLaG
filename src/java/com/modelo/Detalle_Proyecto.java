/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.modelo;

/**
 *
 * @author Ernesto Navarro
 */
public class Detalle_Proyecto {
    
   private int idDetalle_Proyecto;
   private int idMaquinaria;
   private String maquiaria;
   private int idEmpleado;
   private String empleado;
   private int idProyecto;
   private String proyecto;

    public Detalle_Proyecto() {
    }

    public Detalle_Proyecto(int idDetalle_Proyecto, int idMaquinaria, String maquiaria, int idEmpleado, String empleado, int idProyecto, String proyecto) {
        this.idDetalle_Proyecto = idDetalle_Proyecto;
        this.idMaquinaria = idMaquinaria;
        this.maquiaria = maquiaria;
        this.idEmpleado = idEmpleado;
        this.empleado = empleado;
        this.idProyecto = idProyecto;
        this.proyecto = proyecto;
    }

    public String getProyecto() {
        return proyecto;
    }

    public void setProyecto(String proyecto) {
        this.proyecto = proyecto;
    }

    public int getIdDetalle_Proyecto() {
        return idDetalle_Proyecto;
    }

    public void setIdDetalle_Proyecto(int idDetalle_Proyecto) {
        this.idDetalle_Proyecto = idDetalle_Proyecto;
    }

    public int getIdMaquinaria() {
        return idMaquinaria;
    }

    public void setIdMaquinaria(int idMaquinaria) {
        this.idMaquinaria = idMaquinaria;
    }

    public String getMaquiaria() {
        return maquiaria;
    }

    public void setMaquiaria(String maquiaria) {
        this.maquiaria = maquiaria;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public String getEmpleado() {
        return empleado;
    }

    public void setEmpleado(String empleado) {
        this.empleado = empleado;
    }

    public int getIdProyecto() {
        return idProyecto;
    }

    public void setIdProyecto(int idProyecto) {
        this.idProyecto = idProyecto;
    }
}      