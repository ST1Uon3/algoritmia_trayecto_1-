# Documentación de Algoritmos en PSeInt

Este documento contiene las pruebas de escritorio (tablas de traza), tablas de firmas y árboles de componentes correspondientes a los algoritmos desarrollados en PSeInt.

---

## 1. Tabla de Traza: Pirámide de Asteriscos ($n = 3$)

Seguimiento paso a paso de los ciclos anidados para una pirámide de 3 niveles:

| Iteración Externa (`i`) | Iteración Interna (`j`) | Condición `j <= i` | Acción en Pantalla | Estado Actual de la Línea |
| :---: | :---: | :---: | :---: | :---: |
| **i = 1** | j = 1 | Verdadero ($1 \le 1$) | Imprime `*` | `*` |
| | j = 2 | Falso ($2 \le 1$) | Salto de línea (`""`) | Fin de fila 1 |
| **i = 2** | j = 1 | Verdadero ($1 \le 2$) | Imprime `*` | `*` |
| | j = 2 | Verdadero ($2 \le 2$) | Imprime `*` | `**` |
| | j = 3 | Falso ($3 \le 2$) | Salto de línea (`""`) | Fin de fila 2 |
| **i = 3** | j = 1 | Verdadero ($1 \le 3$) | Imprime `*` | `*` |
| | j = 2 | Verdadero ($2 \le 3$) | Imprime `*` | `**` |
| | j = 3 | Verdadero ($3 \le 3$) | Imprime `*` | `***` |
| | j = 4 | Falso ($4 \le 3$) | Salto de línea (`""`) | Fin de fila 3 |

---

## 2. Tabla de Firmas: Factura de Restaurante

Diseño modular previo a la codificación en SubProcesos:

| Nombre del SubProceso | Parámetros de Entrada | Tipo de Retorno | Descripción |
| :--- | :--- | :--- | :--- |
| `CalcularPropina` | `subtotal (Real)`, `porcentaje (Real)` | Real | Calcula el valor monetario correspondiente a la propina opcional. |
| `CalcularDivision` | `total (Real)`, `comensales (Entero)` | Real | Divide el monto total de forma equitativa entre los asistentes. |
| `RedondearMonto` | `monto (Real)` | Real | Ajusta el valor decimal al número entero más cercano. |

---

## 3. Árbol de Componentes: Página de Perfil

Estructura jerárquica de interfaz identificando los elementos reutilizables:

```text
[PaginaPerfil (Contenedor Principal)]
 ├── [CabeceraPerfil]
 │    ├── [ImagenAvatar]
 │    ├── [EtiquetaNombre]
 │    └── [BotonSeguir]
 ├── [SeccionEstadisticas]
 │    ├── [TarjetaDato (Seguidores)]      --> [Repetible]
 │    ├── [TarjetaDato (Siguiendo)]       --> [Repetible]
 │    └── [TarjetaDato (Publicaciones)]   --> [Repetible]
 └── [SeccionPublicaciones]
      ├── [TarjetaPublicacion]          --> [Repetible]
      │    ├── [CabeceraPublicacion]
      │    ├── [ContenidoMultimedia]
      │    └── [BarraInteraccion] (Like / Comentar / Compartir)
      └── [TarjetaPublicacion]          --> [Repetible]
```