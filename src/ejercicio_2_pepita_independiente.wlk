/*
 * Ejercicio 2: Pepita independiente
 * Hacer que la golondrina Pepita (ejercicio 3 y 4 de la guía 1) entienda el mensaje
 * haceLoQueQuieras(). El comportamiento que tiene pepita al recibir ese mensaje es:
 * Si Pepita está débil, come 20 gramos.
 * Si Pepita está feliz, vuela la cantidad de km que quiera volar (usar el mensaje
 * cuantoQuiereVolar() ya resuelto en la guía 1)
 * Si Pepita no está ni débil ni feliz, entonces no hace nada
 */

object pepita {

	var energia = 0

	method cuantoQuiereVolar() {
		var kilometrosAVolar = energia / 5
		kilometrosAVolar += if(energia.between(300, 400)) 10 else 0
		kilometrosAVolar += if(self.cantidadDeEnergiaEsMultiploDe20()) 15 else 0
		return kilometrosAVolar
	}

	method comer(gramos) {
		energia += (gramos * 4)
	}

	method volar(kilometros) {
		energia -= (kilometros + 10)
	}

	method energia() = energia

	method estaDebil() = energia < 50

	method estaFeliz() = energia.between(500, 1000)

	method cantidadDeEnergiaEsMultiploDe20() = energia % 20 == 0

	method haceLoQueQuieras() {
		if (self.estaDebil()) self.comer(20) else if (self.estaFeliz()) self.cuantoQuiereVolar()
	}

}

