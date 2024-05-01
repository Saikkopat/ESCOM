class CuentaBancaria:
    def __init__(self, titular, saldo_inicial, nip):
        self.titular = titular
        self.saldo = saldo_inicial
        self.nip = nip
    
    def depositar(self, cantidad):
        self.saldo += cantidad
    
    def retirar(self, cantidad, nip):
        if(self.nip == nip):
            if(self.saldo >= cantidad):
                self.saldo -= cantidad
            else:
                print("Tu saldo es insuficiente")
        else:
            print("Tu NIP es incorrecto")
    
    def obtener_saldo(self, nip):
        if(self.nip == nip):
            print("Tu saldo es de $", self.saldo)
        else:
            print("Tu NIP es incorrecto")
    def transferir(self, CuentaBancaria, cantidad, nip):
        if(self.nip == nip):
            if(self.saldo >= cantidad):
                CuentaBancaria.saldo += cantidad
                self.saldo -= cantidad
            else:
                print("Tu saldo es insuficiente")
        else:
            print("Tu NIP es incorrecto")


