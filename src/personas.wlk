import marcas.*
import carpas.*


class Persona {
	var property peso
	var property escuchaTradicional
	var property nivelDeAguante 
	
	var property jarras = []
	method comprar(jarra) {
		jarras.add(jarra)
	}
	method cantidadDeJarras() {
		return jarras.size()
	}
	method ingerido() {
		return jarras.sum({jarra => jarra.alcohol() })
	}
	method estaEbria() {
		
		return self.ingerido() * peso  > nivelDeAguante
	}	
	
	method quiereEntrar(carpa) {
		return self.leGusta(carpa.cervezaQueVende())
		
		and self.escuchaTradicional() == carpa.tieneBanda() 
		
		
		}
	
	
	method leGusta(cerveza) {
		return true	
	}
	
}



class Belgas inherits Persona {
	override method leGusta(cerveza) {
		return cerveza.lupulo() > 4
	}

	
}

class Checos inherits Persona {
	override method leGusta(cerveza) {
		return cerveza.graduacion() > 8
	}
	
}

class Alemanes inherits Persona {
	   override method quiereEntrar(carpa) {
        return super(carpa) and carpa.capacidadPar()
	}
	
	}

