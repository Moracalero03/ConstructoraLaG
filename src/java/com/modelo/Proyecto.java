/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.modelo;

/**
 *
 * @author Ernesto Navarro
 */
public class Proyecto {

private int idProyecto;
private String proyecto;
private int idMunicipio;
private String municipio;
private String estadoP;
private String comentario;
private double costoInicial;
private double costoFinal;
private String fechaInicio;
private String fechaFinal;

    public Proyecto() {
    }

    public Proyecto(int idProyecto, String proyecto, int idMunicipio, String municipio, String estadoP, String comentario, double costoInicial, double costoFinal, String fechaInicio, String fechaFinal) {
        this.idProyecto = idProyecto;
        this.proyecto = proyecto;
        this.idMunicipio = idMunicipio;
        this.municipio = municipio;
        this.estadoP = estadoP;
        this.comentario = comentario;
        this.costoInicial = costoInicial;
        this.costoFinal = costoFinal;
        this.fechaInicio = fechaInicio;
        this.fechaFinal = fechaFinal;
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

    public int getIdMunicipio() {
        return idMunicipio;
    }

    public void setIdMunicipio(int idMunicipio) {
        this.idMunicipio = idMunicipio;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getEstadoP() {
        return estadoP;
    }

    public void setEstadoP(String estadoP) {
        this.estadoP = estadoP;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
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

    public String getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(String fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public String getFechaFinal() {
        return fechaFinal;
    }

    public void setFechaFinal(String fechaFinal) {
        this.fechaFinal = fechaFinal;
    }




    
              
}
