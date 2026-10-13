class pack {
    var duracion 
    var precioBase
    var beneficios = []
    var coordinador

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

    var provincia
    var actividades = []

    method provincia () = provincia
    method actividades () = actividades

    override method esPremium () = self.duracion() > 10 &&
    self.coordinador().estaAltamenteCalificado() 

}

class PackInternacional inherits pack {

var pais 
var escala
var lugarDeInteres

}

class PacksProvinciales inherits PackNacionales {

}





  
