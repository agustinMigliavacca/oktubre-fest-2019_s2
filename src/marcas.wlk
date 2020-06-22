class Marcas {
	var property lupulo
	var property pais
	
}

class Corona inherits Marcas {
	var property graduacion
}

class Guiness inherits Marcas {
	
	
	method graduacion() {
		return graduacionReglamentaria.graduacion().min(lupulo * 2)
	}
}

object  graduacionReglamentaria {
	var property graduacion
} 

class Hofbrau inherits Guiness {
	override method graduacion() {
		return super() * 1.25
	}
		
}	


class Jarras {
	var property marca
	var property capacidad
	
}