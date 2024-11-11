import roles.*
class Personaje {
  const property fuerza
  const property inteligencia
  var rol

  method cambiarRolA(unRol){
    rol = unRol
  }

  method potencialOfensivo() = fuerza * 10 + rol.extra()

  method esGroso() = self.esInteligente() or rol.esGroso(self)

  method esInteligente()
}

class Orco inherits Personaje {

  override method potencialOfensivo() = super() * 1.1

  override method esInteligente() = false
}

class Humano inherits Personaje {

  override method esInteligente() = inteligencia > 50
}