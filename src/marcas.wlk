class Marcas {
	var property lupulo
	var property pais
	
}

class CervezaRubia inherits Marcas {
	var property graduacion 
}

class CervezaNegra inherits Marcas {
	
	
	method graduacion() {
		return graduacionReglamentaria.graduacion().min(lupulo * 2) 
	}
}

object  graduacionReglamentaria {
	var property graduacion = 0.08
	
} 

class CervezaRoja inherits CervezaNegra {
	override method graduacion() {
		return super() * 1.25
	}
		
}	


class Jarras {
	var property capacidad
	var property marca

	method alcohol() {
		 return capacidad * marca.graduacion() 

	}

}