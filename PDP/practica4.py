from Persona import Persona

p01 = Persona("Pedro", 23, "Masculino")
# p01.darID()
p01.obtenerEdad()
p02 = Persona("Angel", 26, "Masculino")
# p02.darID()
p02.obtenerEdad()
p03 = Persona("Dani", 20, "Masculino")
# p03.darID()
p03.obtenerEdad()
p04 = Persona("Maria", -20, "Femenino")
# p04.darID()
p04.obtenerEdad()

p01.diferenciaEdad(p02)
p03.diferenciaEdad(p02)
p01.diferenciaEdad(p03)




print("Total de personas: ", Persona.contador_personas)

