/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

/**
 *
 * @author marce
 */
public class Municipio {
    private int idMunicipio; 
    private int idDepartamento; 
    private String municipio; 
    private String departamento; 

    public Municipio(int idMunicipio, int idDepartamento, String municipio, String departamento) {
        this.idMunicipio = idMunicipio;
        this.idDepartamento = idDepartamento;
        this.municipio = municipio;
        this.departamento = departamento;
    }

    public Municipio() {
    }

    public int getIdMunicipio() {
        return idMunicipio;
    }

    public void setIdMunicipio(int idMunicipio) {
        this.idMunicipio = idMunicipio;
    }

    public int getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }
    
    
}
