# Equipo Letra D
from empleado import Empleado

class Empresa:
	def __init__(self):
		self.Plantilla = []
		print("Creaste una plantilla")
	
	def __del__(self):
		print("Dejaste en bancarrota a la empresa")
	
	def agregarEmpleado(self, empleadoAgregado):
		self.Plantilla.append(empleadoAgregado)
		print("Agregaste al empleado: ", empleadoAgregado.getID())
	
	def actualizarEmpleado(self,nombre, apellido, edad, ID, salario):
		for indice in enumerate(self.Plantilla):
			if(ID == self.Plantilla[indice].getID()):
					self.Plantilla[indice].setNombre(nombre)
					self.Plantilla[indice].setApellido(apellido)
					self.Plantilla[indice].setEdad(edad)
					self.Plantilla[indice].setID(ID)
					self.Plantilla[indice].setSalario(salario)
					print("Empleado actualizado")
	
	def buscarEmpleado(self, ID):
		for indice in self.Plantilla:
			if(ID == indice.getID()):
					print("Empleado encontrado: ", indice.getNombre())
	
	def __add__(self, otraEmpresa):
		empresa3 = Empresa()
		empresa3.Plantilla = self.Plantilla + otraEmpresa.Plantilla
		print("Creaste una empresa a partir de dos anteriores")
		return empresa3
	
	def __repr__(self):
			return f'Empresa({self.Plantilla})'

	def __str__(self):
			return f'Esta empresa tiene {len(self.Plantilla)} empleados.'

		
pass