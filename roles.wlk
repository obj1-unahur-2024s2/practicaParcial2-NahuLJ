import personajes.*
object guerrero {

  method extra() = 100

  method esGroso(unPersonaje) = unPersonaje.fuerza() > 50
}

class Cazador {
  const mascota

  method extra() = mascota.potencialOfensivo()

  method esGroso(unPersonaje) = mascota.esLongeva()
}

class Mascota {
  const property fuerza
  const property edad
  const property tieneGarras

  method potencialOfensivo() = if(not tieneGarras) fuerza else fuerza * 2

  method esLongeva() = edad > 10
}

object brujo {

  method extra() = 0

  method esGroso(unPersonaje) = true
}