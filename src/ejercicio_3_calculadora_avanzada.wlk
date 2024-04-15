/*
Ejercicio 3: Calculadora avanzada
Agregar las siguientes funcionales a la calculadora desarrollada en el ejercicio 5 de la
guía 1

Parte 1: Memoria
La calculadora debe permitir guardar un valor en memoria con el cual se puede operar.
Para eso debe entender los siguientes mensajes
cargarMemoria(): Guarda el valor actual en la memoria.
limpiarMemoria(): Guarda 0 en la memoria.
memoria(): Devuelve el valor de la memoria.
sumarMemoria(): actualiza el valor actual sumándole el valor de la memoria.
restarMemoria(): actualiza el valor actual restándole el valor de la memoria.
multiplicarMemoria(): actualiza el valor actual multiplándole el valor de la memoria.
Nota: Se asume que nunca se invoca a un método que usa la memoria sin haberse
llamado a cargarMemoria() previamente.

Ojo con esto!: No vale repetir código. la operación de suma debe estar en un solo
lugar, al igual que la resta y la multiplicación.

Parte 2: Deshacer
La calculadora debe permitir poder deshacer la última operación a través del mensaje
deshacer(). Esto consiste en restaurar el valor actual al que tenía previo a una operación
de suma, resta, multiplicación o cargado de número, independientemente de si se operó
con la memoria o con un parámetro.
La calculadora solo permite deshacer la última operación. No se debe tener en cuenta los
casos de intentar deshacer cuando aún no se ha realizado ninguna operación, ni enviar
dos veces seguidas el mensaje deshacer().
*/

object calculadora {
	var valorActual = 0
	var valorEnMemoria = 0
	
	method cargar(numero) {
		valorActual = numero
	}
	
	method sumar(numero) {
		valorActual += numero
	}
	
	method restar(numero) {
		valorActual -= numero
	}
	
	method multiplicar(numero) {
		valorActual *= numero
	}
	
	method valorActual() {
		return valorActual
	}
	 // Guarda el valor actual en la memoria.
	method cargarMemoria(){
		valorEnMemoria = self.valorActual()
	} 
	// Guarda 0 en la memoria.
	method limpiarMemoria() {
		valorEnMemoria = 0
	}
	 // Devuelve el valor de la memoria.
	method memoria() = valorEnMemoria
	
	// actualiza el valor actual sumándole el valor de la memoria.
	method sumarMemoria() {
		self.sumar(valorEnMemoria)
	}
	// actualiza el valor actual restándole el valor de la memoria.
	method restarMemoria() {
		self.restar(valorEnMemoria)
	}
	// actualiza el valor actual multiplándole el valor de la memoria.
	method multiplicarMemoria() {
		self.multiplicar(valorEnMemoria)
	}
	method deshacer() {
		//TODO: Código autogenerado 
	}
	
}
