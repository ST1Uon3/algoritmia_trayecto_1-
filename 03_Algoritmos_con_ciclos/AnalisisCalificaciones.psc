Algoritmo AnalisisCalificaciones
    Definir n, i, reprobados Como Entero
    Definir nota, suma, mayor, menor Como Real
    
    Escribir "Ingrese la cantidad de estudiantes:"
    Leer n
    
    suma <- 0
    reprobados <- 0
    
    Escribir "Ingrese la nota del estudiante 1 (0 a 100):"
    Leer nota
    
    // Inicializamos los 4 patrones con el primer valor
    suma <- nota
    mayor <- nota
    menor <- nota
    Si nota < 60 Entonces
        reprobados <- reprobados + 1
    FinSi
    
    // Recorrido único para el resto de estudiantes
    Para i <- 2 Hasta n Hacer
        Escribir "Ingrese la nota del estudiante ", i, ":"
        Leer nota
        
        suma <- suma + nota               // Patrón 1: Suma
        
        Si nota > mayor Entonces          // Patrón 2: Máximo
            mayor <- nota
        FinSi
        
        Si nota < menor Entonces          // Patrón 3: Mínimo
            menor <- nota
        FinSi
        
        Si nota < 60 Entonces             // Patrón 4: Conteo
            reprobados <- reprobados + 1
        FinSi
    FinPara
    
    Escribir "=== RESULTADOS ==="
    Escribir "Promedio del grupo: ", suma / n
    Escribir "Nota más alta: ", mayor
    Escribir "Nota más baja: ", menor
    Escribir "Estudiantes reprobados (<60): ", reprobados
FinAlgoritmo
