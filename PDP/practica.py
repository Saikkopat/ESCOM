import operaciones as op

while True:
    print("Calculadora")
    print("\tOperaciones")
    print("\t\t1. Suma")
    print("\t\t2. Resta")
    print("\t\t3. Multiplicacion")
    print("\t\t4. Division")
    print("\t\t5. Modulo")

    opcion = input("Ingresa una opcion: ")

    num1 = int(input("\tIngresa el primer numero: "))
    num2 = int(input("\tIngresa el segundo numero: "))
    if opcion == "1":
        print("Resultado: ", op.suma(num1,num2))
    elif opcion == "2":
        print("Resultado: ", op.resta(num1,num2))
    elif opcion == "3":
        print("Resultado: ", op.mult(num1,num2))
    elif opcion == "4":
        print("Resultado: ", op.div(num1,num2))
    elif opcion == "5":
        print("Resultado: ", op.suma(num1,num2))
    
    
