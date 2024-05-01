from empleado import Empleado
from empresa import Empresa

# Equipo Letra D

empleado1 = Empleado()
empleado1.setNombre("Juan")
empleado1.setApellido("Perez")
empleado1.setEdad(25)
empleado1.setID(1)
empleado1.setSalario(50)

empleado2 = Empleado()
empleado2.setNombre("Daniel")
empleado2.setApellido("Perez")
empleado2.setEdad(26)
empleado2.setID(2)
empleado2.setSalario(100)

empleado3 = Empleado()
empleado3.setNombre("Carlos")
empleado3.setApellido("Gonzalez")
empleado3.setEdad(30)
empleado3.setID(3)
empleado3.setSalario(120)

empleado4 = Empleado()
empleado4.setNombre("Ana")
empleado4.setApellido("Martinez")
empleado4.setEdad(28)
empleado4.setID(4)
empleado4.setSalario(110)

empresa1 = Empresa()
empresa2 = Empresa()
empresa3 = Empresa()

empresa1.agregarEmpleado(empleado1)
empresa1.agregarEmpleado(empleado2)

empresa2.agregarEmpleado(empleado3)
empresa2.agregarEmpleado(empleado4)

empresa1.buscarEmpleado(1)
empresa1.buscarEmpleado(2)

empresa3 = empresa1 + empresa2

print("Empresa 1: ", str(empresa1))
print("Empresa 2: ", str(empresa2))
print("Empresa 3: ", str(empresa3))
print("De todos los empleados registrados, la edad promedio es ", Empleado.cacularEdadPromedio())

print("El salario del empleado ", empleado1.getID(), " es de ", empleado1.getSalario())
empleado1.duplicarSalario()
print("pero si lo duplicamos queda de: ", empleado1.getSalario())
