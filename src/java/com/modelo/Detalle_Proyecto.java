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
    
    private int idDetalleProyecto;
    private String detalleProyecto;
    private int idMaquinaria;
    private String maquinaria;
    private int idEmpleado;
    private String empleado;
    private int idProyecto;
    private String proyecto;
    private String estadoP;
    private String fechaInicio;
    private String fechaFin;
    private double costoInicial;
    private double costoFinal;
    private String comentario;

    public Detalle_Proyecto() {
    }

    public Detalle_Proyecto(int idDetalleProyecto, String detalleProyecto, int idMaquinaria, String maquinaria, int idEmpleado, String empleado, int idProyecto, String proyecto, String estadoP, String fechaInicio, String fechaFin, double costoInicial, double costoFinal, String comentario) {
        this.idDetalleProyecto = idDetalleProyecto;
        this.detalleProyecto = detalleProyecto;
        this.idMaquinaria = idMaquinaria;
        this.maquinaria = maquinaria;
        this.idEmpleado = idEmpleado;
        this.empleado = empleado;
        this.idProyecto = idProyecto;
        this.proyecto = proyecto;
        this.estadoP = estadoP;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.costoInicial = costoInicial;
        this.costoFinal = costoFinal;
        this.comentario = comentario;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public int getIdDetalleProyecto() {
        return idDetalleProyecto;
    }

    public void setIdDetalleProyecto(int idDetalleProyecto) {
        this.idDetalleProyecto = idDetalleProyecto;
    }

    public String getDetalleProyecto() {
        return detalleProyecto;
    }

    public void setDetalleProyecto(String detalleProyecto) {
        this.detalleProyecto = detalleProyecto;
    }

    public int getIdMaquinaria() {
        return idMaquinaria;
    }

    public void setIdMaquinaria(int idMaquinaria) {
        this.idMaquinaria = idMaquinaria;
    }

    public String getMaquinaria() {
        return maquinaria;
    }

    public void setMaquinaria(String maquinaria) {
        this.maquinaria = maquinaria;
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

    public String getProyecto() {
        return proyecto;
    }

    public void setProyecto(String proyecto) {
        this.proyecto = proyecto;
    }

    public String getEstadoP() {
        return estadoP;
    }

    public void setEstadoP(String estadoP) {
        this.estadoP = estadoP;
    }

    public String getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(String fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public String getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(String fechaFin) {
        this.fechaFin = fechaFin;
    }

    public double getCostoInicial() {
        return costoInicial;
    }

    public void setCostoInicial(double costoInicial) {
        this.costoInicial = costoInicial;
    }

    public double getCostoFinal() {
        return costoFinal;
    }

    public void setCostoFinal(double costoFinal) {
        this.costoFinal = costoFinal;
    }
    
    
    
    

    
}
