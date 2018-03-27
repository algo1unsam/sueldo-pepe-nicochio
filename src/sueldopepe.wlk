/** First Wollok example */
object pepe {
	var categoria = cadete
	var presentismo = nofalto
	var resultado = sobreelneto
	
	method cambiodeCategoria(categorianueva) {
		categoria = categorianueva
	}
	
	method cambiodePresentismo(presentismonuevo) {
		presentismo = presentismonuevo
	}
	
	method cambiodeResultado(resultadonuevo) {
		resultado = resultadonuevo
	}
	
	method sueldo() {
	return categoria.neto() + presentismo.bono() + resultado.bono(categoria)
	}
}

object gerente {
	
	method neto() {
		return 1000
	}
}

object cadete {
	
	method neto(){
		return 1500
	}
}

object falto {
	
	method bono() {
		return 0
	}
}

object faltounavez {
	
	method bono() {
		return 50
	}
}

object nofalto {
	method bono() {
		return 100
	}
}

object sobreelneto {
	method bono(categoria){
		return categoria.neto()*0.10
	}
}

object fijo {
	method bono(categoria){
		return 80
	}
}

object nada {
	method bono(categoria){
		return 0
	}
}