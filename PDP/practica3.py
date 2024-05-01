class Persona:
    def __init__(self, nombre, edad, nacionalidad):
        self.nombre = nombre
        self.edad = edad
        self.nacionalidad = nacionalidad

    def presentarse(self):
        print(f"Mi nombre es {self.nombre}, tengo {self.edad} años y soy de nacionalidad {self.nacionalidad}.")

    def saludar(self):
        print(f"{self.nombre} dice buenas tardes")

    def programar(self, estructura):
        print(f"Estoy programando y se me dificulta la estructura {estructura}")

pass

p01 = Persona("Pedro", 23, "mexicana")
p02 = Persona("Angel", 26, "mexicana")
p03 = Persona("Dani", 20, "mexicana")

p01.saludar()
p01.presentarse()
p01.programar("While")

p02.saludar()
p02.presentarse()
p02.programar("For")

p03.saludar()
p03.presentarse()
p03.programar("el flow")