import personas.*

class Carpas {
	var property limiteDeGente
	var property tieneBanda
	var property vendeCerveza = true
	var property cervezaQueVende 
	
	var property gente = []
	method entrar(persona) {
		gente.add(persona)
	}
	method capacidadPar() {
		return gente.size().even()
}
method quiereEntrar(persona) {
	return persona.quiereEntrar(self) 
}
}





