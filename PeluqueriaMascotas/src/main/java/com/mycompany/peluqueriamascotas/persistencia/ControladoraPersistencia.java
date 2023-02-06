package com.mycompany.peluqueriamascotas.persistencia;

import com.mycompany.peluqueriamascotas.logica.Duenio;
import com.mycompany.peluqueriamascotas.logica.Mascota;

/**
 *
 * @author Barbarita ♥
 */
public class ControladoraPersistencia {
    
    
    
    DuenioJpaController duenioJpa = new DuenioJpaController();
    MascotaJpaController mascoJpa = new MascotaJpaController();

    public void guardar(Duenio duenio, Mascota masco) {
        
        // crear en la BD el duenio
        duenioJpa.create(duenio);
        
        // crear en la BD la mascota
        mascoJpa.create(masco);
        
    }
    
    
    
    
    
    
}
