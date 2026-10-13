class pack {

    const duracion 
    const precioBase
    const beneficios = []
    const coordinador

    method duracion() = duracion
    method precioBase() = precioBase
    method beneficios() = beneficios
    method coordinador() = coordinador   

    method beneficiosVigentes()= beneficios.filter({
        beneficios => beneficios.estaVigente()
    })
    method costoBeneficios() = self.beneficiosVigentes().sum ({
    beneficios => beneficios.costos ()
    })
    method cantidadDeBeneficiosVigentes() =
     self.beneficiosVigentes().size()

    method precioAntesDePremium () = precioBase + self.costoBeneficios()

    method precioFinal() = self.precioAntesDePremium() *
     if (self.esPremium())1.05 else (1)

    method esPremium()
       }

class PackNacionales inherits pack {

    const provincia
    const actividades = []

    method provincia () = provincia
    method actividades () = actividades

    override method esPremium () = self.duracion() > 10 &&
    self.coordinador().estaAltamenteCalificado() 

}

class PackInternacional inherits pack {

const pais
const escala 
const lugarDeInteres

method pais() = pais

method escala() = escala

method lugarDeInteres () = lugarDeInteres

  override method esPremium () = lugarDeInteres && self.duracion() 
    > 20 && escala == 0

     // override method precioAntesDePremium() = 

}

class PacksProvinciales inherits PackNacionales {

  
}

class Coordinador {
  const añosExperiencia
  const motivado
  const cantViajes
  var rol

  method añosDeExperiencia() = añosExperiencia
  method estaMotivado() = motivado
  method cantViajesRealizados() = cantViajes
  method rolActual() = rol
  method cambiarRol(unRol) {
    if (unRol == "guia")
    rol = unRol
    else if (unRol == "asistenteLogistico")
    rol = unRol
    else if (unRol == "acompañante")
    rol = unRol
    else 
    self.error("este rol no existe")
  }
  method esAltamenteCalificado() {
    return self.cantViajesRealizados() > 
    20 && self.cumpleRol()
  }
  method cumpleRol() {
    return if (rol == "guia") self.estaMotivado() 
        else if (rol == "asistenteLogistico")
         self.añosDeExperiencia() >= 3
        else true
  }
}

class Beneficios {
    const tipo 
    const costo 
    const vigente 

    method tipo() = tipo
    method costo () = costo
    method vigente () = vigente

    method estaVigente() = vigente

}




  
