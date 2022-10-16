/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.modelo;

/**
 *
 * @author canel
 */
public class Maquinaria {
    private int idMaquinaria;
    private String maquinaria;
    private String modelo;
    private String marca;
    private String tipo;
    private Double operatividad;
    private String estado;

    public Maquinaria() {
    }

    public Maquinaria(int idMaquinaria, String maquinaria, String modelo, String marca, String tipo, Double operatividad, String estado) {
        this.idMaquinaria = idMaquinaria;
        this.maquinaria = maquinaria;
        this.modelo = modelo;
        this.marca = marca;
        this.tipo = tipo;
        this.operatividad = operatividad;
        this.estado = estado;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
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

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Double getOperatividad() {
        return operatividad;
    }

    public void setOperatividad(Double operatividad) {
        this.operatividad = operatividad;
    }
    
}
