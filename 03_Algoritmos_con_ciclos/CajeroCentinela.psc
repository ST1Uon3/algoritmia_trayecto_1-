Algoritmo CajeroCentinela
    Definir monto, totalRetirado Como Real
    Definir cantidadRetiros Como Entero
    
    totalRetirado <- 0
    cantidadRetiros <- 0
    
    Escribir "=== CAJERO AUTOMÁTICO ==="
    Escribir "Ingrese el monto a retirar (Ingrese 0 para salir):"
    Leer monto
    
    Mientras monto <> 0 Hacer
        Si monto > 0 Entonces
            totalRetirado <- totalRetirado + monto
            cantidadRetiros <- cantidadRetiros + 1
            Escribir "Retiro exitoso. Saldo acumulado."
        Sino
            Escribir "Monto inválido. Ingrese un valor positivo."
        FinSi
        
        Escribir "Ingrese siguiente monto (0 para salir):"
        Leer monto
    FinMientras
    
    Escribir "--------------------------------"
    Escribir "Total retirado: $", totalRetirado
    Escribir "Cantidad total de retiros: ", cantidadRetiros
FinAlgoritmo
