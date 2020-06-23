import marcas.*



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
		return true	
	}
}
