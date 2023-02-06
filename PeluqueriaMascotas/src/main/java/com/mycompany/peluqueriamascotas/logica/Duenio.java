package com.mycompany.peluqueriamascotas.logica;


import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Barbarita ♥
 */
@Entity
public class Duenio implements Serializable {
    
    // ATRIBUTOS
    
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id_duenio;
    private String nombre;
    private String celDuenio;
    
    
    // CONSTRUCTORES
    
    public Duenio() {
    }

    public Duenio(int id_duenio, String nombre) {
        this.id_duenio = id_duenio;
        this.nombre = nombre;
    }
    
    // METODOS
    
    public int getId_duenio() {
        return id_duenio;
    }

    public void setId_duenio(int id_duenio) {
        this.id_duenio = id_duenio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCelDuenio() {
        return celDuenio;
    }

    public void setCelDuenio(String celDuenio) {
        this.celDuenio = celDuenio;
    }
    
    
    
    
    
}
