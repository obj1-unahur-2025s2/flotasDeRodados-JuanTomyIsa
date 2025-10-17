class Rodados{
  var property velocidadMaxima  
  var property color 
  var property capacidad
  var property peso  
}

class Corsa{
  //variables
  const color 
  //metodos de consultas
  method pasajeros() = 4
  method velocidadMaxima() = 150
  method peso() = 1300
  method color() = color 
  //metodos de indicacion
  
}

class Kwid{
  //variables
  var tanqueAdicional = false 
  //metodos de indicacion
  method funcionaAGas() = true//var o method
  method pasajeros() = if (tanqueAdicional) {4} else {3}
  method velocidadMaxima() = if (tanqueAdicional) {120} else {110}  
  method peso() = 1200 + if (tanqueAdicional) {150} else {0}
  method color() = "azul" 
  //metodos de indicacion
  method ponerTanqueAdicional() {
    tanqueAdicional = true
  }
  method sacarTanqueAdicional() {
    tanqueAdicional = false
  }
}

object trafic {
  var interior = interiorComodo
  var motor = pulenta

  //method consulta
  method capacidad() = interior.capacidad() 
  method velocidadMaxima() = motor.velocidadMaxima()
  method peso() = 4000 + interior.peso() + motor.peso()
  method color() = "blanco"   

  //metodo de indicacion
  method cambiarInterior(unInterior) {
    interior = unInterior
  }
  method cambiarMotor(unMotor) {
    motor = unMotor
  }
}
//interiores (solo 1 en stock de c/u)
object interiorComodo {
  method capacidad() = 5
  method peso() = 700
}
object interiorPopular {
  method capacidad() = 12
  method peso() = 1000
}
//motores (solo 1 en stock de c/u)
object pulenta {
  method peso() = 800
  method velocidadMaxima() = 130  
}
object bataton {
  method peso() = 500
  method velocidadMaxima() = 80  
}

class Gol {
  method capacidad() = 5
  method velocidadMaxima() = 120
  method peso() = 800
  method color() = "blanco"    
}

class Siena {
  method capacidad() = 6
  method velocidadMaxima() = 140
  method peso() = 600
  method color() = "negro"    
}

class Suzuki {
  method capacidad() = 7
  method velocidadMaxima() = 140
  method peso() = 500
  method color() = "negro"    
}
