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
public class Rol {
    private int idRol;
    private String NivelAcceso; 

    public Rol(int idRol, String NivelAcceso) {
        this.idRol = idRol;
        this.NivelAcceso = NivelAcceso;
    }

    public Rol() {
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public String getNivelAcceso() {
        return NivelAcceso;
    }

    public void setNivelAcceso(String NivelAcceso) {
        this.NivelAcceso = NivelAcceso;
    }
    
    
}
