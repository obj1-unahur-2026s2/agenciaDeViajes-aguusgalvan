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

class Cordinador {
 
 method añosDeExperiencia () 

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




  
