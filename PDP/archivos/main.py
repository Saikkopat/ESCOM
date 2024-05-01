from contacto import Contacto

# Función para escribir contactos en un archivo
def guardar_contactos(contactos, archivo):
	with open(archivo, 'w') as file:
		for contacto in contactos:
			file.write(f"{contacto.nombre},{contacto.email},{contacto.telefono}\n")

# Función para leer contactos desde un archivo
def cargar_contactos(archivo):
	contactos = []
	with open(archivo, 'r') as file:
		for line in file:
			nombre, email, telefono = line.strip().split(',')
			contactos.append(Contacto(nombre, email, telefono))
	return contactos

contacto1 = Contacto("Juan Pérez", "juan@example.com", 5551136173)
contacto2 = Contacto("María López", "maria@example.com", 5584869907)
contacto3 = Contacto("Carlos Rodríguez", "carlos@example.com", 9498998825)

lista_de_contactos = [contacto1, contacto2, contacto3]

# Guardar contactos en un archivo
guardar_contactos(lista_de_contactos, "contactos.txt")

# Leer contactos desde un archivo
contactos_leidos = cargar_contactos("contactos.txt")

# Imprimir los contactos cargados desde el archivo
for contacto in contactos_leidos:
	print(contacto)