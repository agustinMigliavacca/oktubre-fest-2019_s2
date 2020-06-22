import marcas.*



class Persona {
	var property peso
	var property escuchaTradicional
	var property nivelDeAguante 
	
	var jarras = []
	method comprar(jarra) {
		jarras.add(jarra)
	}
	method cantidadDeJarras() {
		return jarras.size()
	}
	
	method estaEbria() {
		
		return jarras.capacidad() * peso > nivelDeAguante
	}	
	
}

class Belgas inherits Persona {
	method leGusta(cerveza) {
		return cerveza.lupulo() > 4
	}

	
}

class Checos inherits Persona {
	method leGusta(cerveza) {
		return cerveza.graduacion() > 8
	}
	
}

class Alemanes inherits Persona {
	method leGusta(cerveza) {
		
	}
}
