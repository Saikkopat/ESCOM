class Personaje:
	def __init__(self):
		self._nivel = 1
		self._vida = 100
		self._ataque = 10
		self._defensa = 5
		self._velocidad = 5
		print("Personaje creado.")
	

	#set,get para Nombre
	def setNombre(self, nombre):
		self._nombre = nombre
		print("\tHas nombrado a",nombre)
	
	def getNombre(self):
		return self._nombre
	
	def getVida(self):
		return int(self._vida)

	def getNivel(self):
		return int(self._nivel)
	
	def getAtaque(self):
		return int(self._ataque)

	def getDefensa(self):
		return int(self._defensa)
	
	def getVelocidad(self):
		return int(self._velocidad)
	
	def golpeRecibido(self, dmg):
		self._vida -= dmg
		
		
	#Metodos para aumentar las caracteristicas

	#Aumento de nivel, +10 vida, +1 ataque, +1 defensa, +1 velocidad
	def subirNivel(self):
		self._nivel += 1
		self._vida += 10
		self._ataque += 1
		self._defensa += 1
		self._velocidad += 1
		print(self.getNombre(), "ha subido al nivel ", self.getNivel())

	def ataque(self, enemigo):
		dmg = self.getAtaque() - enemigo.getDefensa()
		enemigo.golpeRecibido(dmg)
		print("\t*",self.getNombre(),"ataca a",enemigo.getNombre(),"con",dmg,"de daño.")

	def checarSVitales(self):
		print("\t+",self.getNombre(),"\n\t\tVida:",self.getVida())
	
pass