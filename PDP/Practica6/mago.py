from personaje import Personaje

class Mago(Personaje):

	def __init__(self):
		Personaje.__init__(self)
		self._mana = 50
		self._poder = 5
	
	def recargaMana(self, recarga):
		self._mana += recarga
		print("\t", self.getNombre(), " : + ", recarga, " de mana")
	
	def restaMana(self, costo):
		self._mana -= costo

	def getMana(self):
		return self._mana

	def getPoder(self):
		return self._poder
	
	def ataqueMagico(self, enemigo):
		dmg = self.getPoder()
		self.restaMana(15)
		enemigo.golpeRecibido(dmg)
		print("\t*",self.getNombre(),"ataca a",enemigo.getNombre(),"con", dmg,"de daño magico.")

	def checarSVitalesMago(self):
		print("\t+",self.getNombre(),"\n\t\tVida:",self.getVida(),"\n\t\tMana:",self.getMana())

pass