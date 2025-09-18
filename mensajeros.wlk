object morfeo {
    const property pesoMorfeo = 90
    var property pesoTotal = 0
    var property transporte = camion

    method peso(){
        pesoTotal = pesoMorfeo + transporte.peso()
        return pesoTotal
    }

    method transporte(vehiculo){
        transporte = vehiculo
    }

}

object trinity {
    var property peso = 900
    
}

object neo {

}

object camion {
    var property peso = 0
    
   

    method acoplados(cantidad){
        peso = cantidad * 500
        return peso
    }


}

object monopatin {
    var property  peso = 1 

}

object puente {

    method dejarPasar(persona){
        return persona.peso() <= 1000
    }
    
}


object paquete {
    var property pago = false
    var destino = puente
    var precio = 0

    method pagar() {
        pago = true             
    }
    
    method estaPago() {
        return pago
    }

    method destino(lugar){
        destino = lugar
    }

    method puedeSerEntregadoPor(persona){
        return self.estaPago() && destino.dejarPasar(persona)
    }

    method precio(cantidad){
        precio= cantidad
        return precio
    }
}

object paquetito {
    
    method estaPago() {
        return true
    }

    method puedeSerEntregadoPor(mensajero) {
        return true
    }
}

object paqueton {
    var property precio = 100
}