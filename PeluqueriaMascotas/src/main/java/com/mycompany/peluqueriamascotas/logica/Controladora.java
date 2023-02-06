package com.mycompany.peluqueriamascotas.logica;

import com.mycompany.peluqueriamascotas.persistencia.ControladoraPersistencia;

/**
 *
 * @author Barbarita ♥
 */
public class Controladora {
    
    ControladoraPersistencia controlPersi = new ControladoraPersistencia();

    public void guardar(String nombreMasco, String colr, String tipoAnim, String observ, 
            String alergias, String aten, String nomDuenio, String celDuenio) {
        
        // creamos al dueño y le asignamos sus valoes
        Duenio duenio =new Duenio();
        duenio.setNombre(nomDuenio);
        duenio.setCelDuenio(celDuenio);
        
        // creamos a la mascota y asignamos sus valores
        Mascota masco = new Mascota();
        masco.setNombre(nombreMasco);
        masco.setTipoAnimal(tipoAnim);
        masco.setColor(colr);
        masco.setAlergico(alergias);
        masco.setAtencionEspecial(aten);
        masco.setObservaciones(observ);
        masco.setUnDuenio(duenio);
        
        controlPersi.guardar(duenio,masco);
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
