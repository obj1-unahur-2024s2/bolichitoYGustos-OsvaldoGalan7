import objetos.*
import personas.*

object bolichito{

    var mostrador = remera
    var vidriera = pelota

    method objetoEnMostrador(){ return mostrador}
    method objetoEnVidriera(){ return vidriera}
    method cambiarObjetoMostrador(unObjeto){ mostrador = unObjeto}
    method cambiarObjetoVidriera(unObjeto){ vidriera = unObjeto}

    method esBrillante(){ 
        mostrador.esBrillante() && vidriera.esBrillante()
    }
    method esMonocromatico(){
        return mostrador.color() == vidriera.color()
    }
    method estaEquilibrado(){
        return mostrador.peso() > vidriera.peso()
    }
    method esObjetoDeColor(color){
        mostrador.color() == color || vidriera.color() == color 
    }
    method puedeMejorar(){
        return not self.estaEquilibrado() || self.esMonocromatico() 
    }
    
    
    method puedeOfrecerAlgoA(persona){
        persona.leGusta(mostrador) || persona.leGusta(vidriera)
    }
}





