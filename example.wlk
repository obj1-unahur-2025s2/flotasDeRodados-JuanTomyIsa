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
  method capacidad() = 4
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
  method capacidad() = if (tanqueAdicional) {4} else {3}
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
  const property velocidadMaxima = 120
  method capacidad() = 5
  const property peso = 500
  const property color = "blanco"   
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

//dependecia
class Dependencia{
 const property empleados
 const flotaDeRodados = []

  //metodos de consultas
  method pesoTotalFlota() = flotaDeRodados.sum({r => r.peso()}) 
  method estaBienEquipada() = flotaDeRodados.size()>= 3 and 
    flotaDeRodados.all({r => r.velocidadMaxima() >= 100})
  method capacidadTotalEnColor(unColor) = flotaDeRodados.filter({r=>r.color()==unColor}).sum({r=>r.capacidad()})
  method colorDelRodadoMasRapido() = flotaDeRodados.max({r=>r.velocidadMaxima()}).color()
  method capacidadFaltante() = empleados - flotaDeRodados.sum({r=>r.capacidad()})
  method esGrande() = empleados >= 40 and flotaDeRodados.size() >= 5    

 //metodos de indicacion
 method agregarAFlota(unRodado) {
   flotaDeRodados.add(unRodado)
 } 
 method quitarDeFlota(unRodado) {
   flotaDeRodados.remove(unRodado)
 }
}