from CuentaBancaria import CuentaBancaria

cuenta1 = CuentaBancaria("Juan Perez", 1000, 1234)
cuenta2 = CuentaBancaria("Maria Gonzalez", 1500, 5678)

cuenta1.depositar(500)
cuenta2.retirar(200, 5678)
cuenta2.retirar(200, 5555)
cuenta2.depositar(300)
cuenta1.obtener_saldo(1234)
cuenta2.obtener_saldo(5678)

cuenta2.transferir(cuenta1, cuenta2.saldo, 5678)
cuenta2.obtener_saldo(5678)
cuenta1.obtener_saldo(1234)