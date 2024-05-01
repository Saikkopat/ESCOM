from personaje import Personaje
from mago import Mago

jugador1 = Personaje()
jugador1.setNombre("Pedro")

jugador2 = Personaje()
jugador2.setNombre("Angel")

jugador3 = Mago()
jugador3.setNombre("Maid")

jugador1.ataque(jugador2)
jugador2.checarSVitales()

jugador2.ataque(jugador1)
jugador1.checarSVitales()

jugador3.ataqueMagico(jugador1)
jugador1.checarSVitales()

jugador3.checarSVitalesMago()

jugador3.ataqueMagico(jugador2)
jugador2.checarSVitales()

jugador3.checarSVitalesMago()

jugador1.subirNivel()
jugador2.subirNivel()
jugador3.subirNivel()

jugador1.checarSVitales()
jugador2.checarSVitales()
jugador3.checarSVitales()
jugador3.checarSVitalesMago()


jugador3.ataqueMagico(jugador2)
jugador2.checarSVitales()
jugador3.checarSVitalesMago()
jugador3.recargaMana(10)
jugador3.checarSVitalesMago()