/*Ejercicio 1: TIM
TIM (The Incredible Machine) es un videojuego clásico que consta de conectar distintos
artefactos al mejor estilo Coyote del Correcaminos. Cada artefacto puede actuar sobre
otro, generando una simpática cadena de efectos que logra un objetivo.
Se pide modelar con objetos la siguiente secuencia de eventos para encender una vela
que inicialmente está apagada:
1. Cuando la pelota cae, enciende una linterna
2. Cuando la linterna se enciende, ilumina una lupa
3. Cuando la lupa es iluminada, se prende la vela

Se espera que luego de ejecutar la siguientes líneas:
pelota.caer()
vela.encendida()
la respuesta sea: true
*/

object pelota {
	method caer() {
		linterna.encender()
	}
}

object linterna {
	var estaPrendida = false
	
	method encender() {
		estaPrendida = true
		lupa.iluminar()
	}
}

object lupa {
	
var estaIluminada = false

	method iluminar() {
		estaIluminada = true
		vela.prender()
	}  
}

object vela {
	var estaPrendida = false
	
	method prender() {
		estaPrendida = true
	}
	
	method encendida() = estaPrendida
}
