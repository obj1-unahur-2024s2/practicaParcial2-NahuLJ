import ejercito.*
import personajes.*
import roles.*
class Localidad {
  var ocupantes 

  method recibirInvasionDe(unEjercito){
    if(unEjercito.potencialOfensivo() > self.potencialOfensivo()){
      self.cambiarOcupanteA(unEjercito)
    }
  }

  method potencialOfensivo() = ocupantes.potencialOfensivo()

  method cambiarOcupanteA(unEjercito)

}

class Aldea inherits Localidad {
  const capacidadMaxima 

  override method cambiarOcupanteA(unEjercito){
    if(unEjercito.size() > capacidadMaxima){
      ocupantes = unEjercito.nuevoEjercitoFuerte()
    }
  }
}

class Ciudad inherits Localidad {
  
  override method potencialOfensivo() = ocupantes.potencialOfensivo() + 300

  override method cambiarOcupanteA(unEjercito){
    ocupantes = unEjercito
  }
}