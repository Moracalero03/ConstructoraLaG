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
    private int idMunicipio;
    private String proyecto;
    private String municipio;

    public Proyecto() {
    }

    public Proyecto(int idProyecto, int idMunicipio, String proyecto, String municipio) {
        this.idProyecto = idProyecto;
        this.idMunicipio = idMunicipio;
        this.proyecto = proyecto;
        this.municipio = municipio;
    }

    public int getIdProyecto() {
        return idProyecto;
    }

    public void setIdProyecto(int idProyecto) {
        this.idProyecto = idProyecto;
    }

    public int getIdMunicipio() {
        return idMunicipio;
    }

    public void setIdMunicipio(int idMunicipio) {
        this.idMunicipio = idMunicipio;
    }

    public String getProyecto() {
        return proyecto;
    }

    public void setProyecto(String proyecto) {
        this.proyecto = proyecto;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    
              
}
