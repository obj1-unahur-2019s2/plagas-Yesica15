class Plaga{
	var property poblacion = 0
	
	method nivelDanio()
	method transmiteEnfermedad() = poblacion >=10
	method atacar(elemento){
		elemento.recibeAtaque(self)
		poblacion += poblacion*0.1
	}
}

class Cucaracha inherits Plaga{
	var property peso
	
	override method nivelDanio() = poblacion/2
	override method transmiteEnfermedad() = super() and peso>=10
	override method atacar(elemento){
		super(elemento)
		peso += 2
	}
}

class Pulgas inherits Plaga{	
	override method nivelDanio() = poblacion*2
}

class Garrapatas inherits Plaga{	
	override method nivelDanio() = poblacion*2
	override method atacar(elemento){
		elemento.recibeAtaque(self)
		poblacion += poblacion*0.2
	}
}

class Mosquitos inherits Plaga{
	override method nivelDanio() = poblacion
	override method transmiteEnfermedad() = super() and poblacion % 3 == 0
}

