# Equipo Letra D
class Empleado:
	edades = 0
	numero_empleados = 0
	def __init__(self):
		self.__nombre = ""
		self.__apellido = ""
		self.__edad = 0
		self.__ID = -1
		self.__salario = 0
		Empleado.numero_empleados += 1
	
	def setNombre(self, nombre):
		self.__nombre = nombre
	def setApellido(self, apellido):
		self.__apellido = apellido
	def setEdad(self, edad):
		Empleado.edades += edad
		self.__edad = edad
	def setID(self,ID):
		self.__ID = ID
	def setSalario(self,salario):
		self.__salario = salario

	def getNombre(self):
		return self.__nombre
	def getApellido(self):
		return self.__apellido
	def getEdad(self):
		return self.__edad
	def getID(self):
		return int(self.__ID)
	def getSalario(self):
		return self.__salario

	def cacularEdadPromedio():
		return Empleado.edades / Empleado.numero_empleados

	def duplicarSalario(self):
		self.setSalario(self.getSalario() * 2)

	def __del__(self):
		print("Despediste a un empleado")
pass