import mensajeros.*

object mensajeria {
    var  property mensajeros = []
    var primerEmpleado = mensajeros[0]
    var property pendientes = []
    var property enviados = []

    method contratar(mensajero){
        mensajeros.add(mensajero)
    }

    method mensajerosConjunto() { 
        return mensajeros
    }

    method despedir(mensajero){
        mensajeros.remove(mensajero)
    }

    method despedirTodos(){
        mensajeros.clear()
    }

    method esGrande(){
        return mensajeros.size()>2
    }

    method puedePrimerEmpleado(){
        return paquete.puedeSerEntregadoPor(primerEmpleado)
    }

    method pesoUltimoMensajero(){
    if(mensajeros.size() > 0){
        return mensajeros[mensajeros.size() - 1].peso()
    } else {
        return 0   
    }
}

    method sobrepeso(){
        var suma = 0
        mensajeros.forEach{mensajeros => suma += mensajeros.peso()}
        return (suma/ mensajeros.size()) > 500
    }

    method enviar(persona, paquete){
        if (paquete.puedeSerEntregadoPor(persona)){
            enviados.add(paquete)
        }else {
            pendientes.add(paquete)
        }
    }
    
}
