object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var totalCobrado=  0 
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){ 
		totalCobrado = totalCobrado + sueldo 
	}
	method totalCobrado(){ return totalCobrado }
}

object baigorria {
	var cantidadEmpanadasVendidas = 1000 // cambio la cantidad de empanadas vendidas para que arranque en 15000 como lo indica el ejercicio 
	var montoPorEmpanada = 15
	var totalDinero = 0 
	var deuda= 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		totalDinero = totalDinero + self.sueldo()
		self.pagarDeudas()
	}
	
	method pagarDeudas(){
		if (totalDinero >= deuda ) {
			totalDinero = totalDinero - deuda
			deuda =	0
		}else{
			deuda = deuda - totalDinero
			totalDinero = 0
		}
	}
	
	method gastar(cuanto){
		if (self.totalDinero() > cuanto) {
			totalDinero = totalDinero - cuanto
		}
		else{
			deuda= deuda + (cuanto - totalDinero)
			totalDinero = 0
		}
	}
	method totalDeuda(){return deuda}
	method totalDinero(){return totalDinero}
	
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
