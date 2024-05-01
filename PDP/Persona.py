class Persona:
    contador_personas = 0
    def __init__(self, nombre, edad, genero):
        self.nombre = nombre
        self._edad = edad
        self.genero = genero
        self.id = Persona.contador_personas
        print(self.nombre, " : ", self.id)
        Persona.contador_personas += 1

    def obtenerEdad(self):
        if(self._edad < 0):
            print("La edad de ", self.nombre, " es negativa")
        else:
            print("La edad de ", self.nombre, " es ", self._edad)

    def diferenciaEdad(self, persona2):
        print("La diferencia en edad de ", self.nombre, " y ", persona2.nombre, "es ", abs(self._edad-persona2._edad))

    def darID(self):
        self.id = Persona.contador_personas
        print(self.nombre, " : ", self.id)
        

pass