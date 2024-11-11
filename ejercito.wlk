class Ejercito {
  const soldados = []

  method potencialOfensivo() = soldados.sum({soldado => soldado.potencialOfensivo()})

  method invadir(unaLocalidad){
    unaLocalidad.recibirInvasionDe(self)
  }

  method nuevoEjercitoFuerte(){
    const ejercitoFuerteNuevo = soldados.sortBy({
      a, b => a.potencialOfensivo() > b.potencialOfensivo()}).take(10)
    soldados.clear()
    soldados.addAll(ejercitoFuerteNuevo)
  }
}