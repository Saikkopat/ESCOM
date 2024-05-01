from personaje import *
from g import Guerrero
from m import Mago
from c import Cazador
def combate(jugador_1, jugador_2):
    turno = 0
    while jugador_1.esta_vivo() and jugador_2.esta_vivo():
        print("\nTurno", turno)
        print(">>> Acción de ", jugador_1.nombre,":", sep="")
        jugador_1.atacar(jugador_2)
        print(">>> Acción de ", jugador_2.nombre,":", sep="")
        jugador_2.atacar(jugador_1)
        turno = turno + 1
    if jugador_1.esta_vivo():
        print("\nHa ganado", jugador_1.nombre)
    elif jugador_2.esta_vivo():
        print("\nHa ganado", jugador_2.nombre)
    else:
        print("\nEmpate")
def combate_2(jugador_1, jugador_3):
    turno = 0
    while jugador_1.esta_vivo() and jugador_3.esta_vivo():
        print("\nTurno", turno)
        print(">>> Acción de ", jugador_1.nombre,":", sep="")
        jugador_1.atacar(jugador_3)
        print(">>> Acción de ", jugador_2.nombre,":", sep="")
        jugador_2.atacar(jugador_1)
        turno = turno + 1
    if jugador_1.esta_vivo():
        print("\nHa ganado", jugador_1.nombre)
    elif jugador_3.esta_vivo():
        print("\nHa ganado", jugador_2.nombre)
    else:
        print("\nEmpate")

personaje_1 = Guerrero("Cloud", 20, 10, 4, 100, 4)
personaje_1.cambiar_espada()
personaje_1.atributos()

personaje_2 = Mago("Merlin", 5, 15, 4, 100, 3)
personaje_2.cambiar_libro()
personaje_2.atributos()

personaje_3 = Cazador("Hunter", 16, 16, 3, 100, 6)
personaje_3.cambiar_arma()
personaje_3.atributos()

personaje_1.atributos()
personaje_2.atributos()    
personaje_3.atributos() 

combate(personaje_1, personaje_2)
combate_2(personaje_1, personaje_3)