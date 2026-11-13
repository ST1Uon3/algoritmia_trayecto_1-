Proceso FacturaRestaurante
    Definir subtotal, porcPropina, propina, total, pagoPorPersona Como Real
    Definir comensales Como Entero
    
    Escribir "Ingrese el subtotal de la cuenta:"
    Leer subtotal
    Escribir "Ingrese el porcentaje de propina (ej: 10):"
    Leer porcPropina
    Escribir "Ingrese el número de comensales:"
    Leer comensales
    
    propina <- CalcularPropina(subtotal, porcPropina)
    total <- subtotal + propina
    
    pagoPorPersona <- Redon(CalcularDivision(total, comensales))
    
    Escribir "----------------------------------"
    Escribir "Subtotal: $", subtotal
    Escribir "Propina: $", propina
    Escribir "Total con propina: $", total
    Escribir "Pago individual (Redondeado): $", pagoPorPersona
FinProceso

SubProceso p <- CalcularPropina(st, porc)
    Definir p Como Real
    p <- st * (porc / 100)
FinSubProceso

SubProceso div <- CalcularDivision(tot, com)
    Definir div Como Real
    div <- tot / com
FinSubProceso
