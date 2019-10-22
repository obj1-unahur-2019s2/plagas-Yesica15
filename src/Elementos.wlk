import Plaga.*

class Hogar {
	var property mugre = 0
	var property confort = 0
	
	method esBueno() = confort/2 >= mugre
	method recibeAtaque(plaga){ mugre += plaga.nivelDanio()}
}

class Huerta{
	var property capacidadProduccion = 0
	
	method esBueno() = capacidadProduccion> nivelProduccion.nivel()
	method recibeAtaque(plaga){
		capacidadProduccion -= (plaga.nivelDanio()*0.1 + (if (plaga.transmiteEnfermedad()){10}else{0}))
	}
}

object nivelProduccion{
	var property nivel = 0
}

class Mascota {
	var property nivelSalud = 0
	
	method esBueno() = nivelSalud>250
	method recibeAtaque(plaga){
		nivelSalud -= if (plaga.transmiteEnfermedad()){plaga.nivelDanio()}else{0}
	}
}

class Barrio{
	var property lista = []
	
	method agregarElemento(elem){ lista.add(elem)}
	method quitarElemento(elem){ lista.remove(elem)}
	
	method esBueno() = lista.all({elem => elem.esBueno()})
}

