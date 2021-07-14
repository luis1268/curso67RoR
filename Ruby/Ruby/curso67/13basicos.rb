# 1
para i en 1 .. 255
    pone yo
final

1 . hasta ( 255 ) { | yo | imprimir i , "" }

imprimir ( 1 .. 255 ) . to_a

( 1 .. 255 ) . cada uno hace | elemento |
    pone elemento
final

i = 1
num = 255
mientras que yo <= núm .
    pone yo
    i + = 1
final

# 2
pone ( 1 .. 255 ) . rechazar { | yo | i % 2 == 0 } . to_s
pone ( 1 .. 255 ) . seleccione { | yo | i % 2 ! = 0 } . to_s

imprimir ( 1 .. 255 ) . to_a . seleccione { | yo | i % 2 ! = 0 }

impar = 1
para yo en 1 .. 128
    pone impar
    impar = impar + 2
final

para i en 1 .. 255
    pone i si i % 2 ! = 0 
final

pone ( 1 .. 255 ) . find_all { | a | a . ¿impar? }
pone ( 1 .. 255 ) . find_all { | a | a % 2 ! = 0 }

i = 1
num = 255
mientras que yo <= 255
    pone yo
    yo = yo + 2
final

( 1 .. 255 ) . paso ( 2 ) hacer | yo |
    pone yo
final

# 3
suma = 0
para i en 0 .. 255
    suma = suma + i
    pone "Numero:" + i . to_s + "y la suma:" + sum . to_s
final

para i en 0 .. 255
    pone "Numero: # { i } y la suma: # { suma + = i } "
final

( 0 .. 255 ) . cada { | i , suma | pone "elemento: # { i } , suma: # { ( 0 .. i ) . sum } " }

i = 0
suma = 0
mientras que yo <= 255
    pone "Nuevo numero: # { i } Suma: # { suma + = i } "
    i + = 1
final

# 4
x = [ 1 , 3 , 5 , 7 , 9 , 13 ]
para i en 0 .. x . longitud - 1
    pone "Elemento:" + x [ i ] . to_s
final

porque yo en x
    pone "elemento: # { i } "
final

x . cada { | yo | pone yo . to_s }

# 5
def maximoArreglo arreglo
     arreglo de rendimiento . max
final
maximoArreglo ( [ - 1 , 5 , - 3 , 13 , 6 ] ) { | yo | pone "el maximo es: # { i } " }

def getMax arreglo
    pone arreglo . ¡clasificar! . último
final

getMax ( [ - 1 , 5 , - 3 , 13 , 6 ] )

# 6
x = [ 1 , 3 , 5 , 7 , 9 , 13 ]
suma = 0
para i en 0 .. x . longitud - 1
    suma = suma + x [ i ]
final
pone "El promedio del arreglo x es # { sum } / # { i + 1 } : # { sum / ( i + 1 ) } "

nums = 10 . veces . map { rand ( - 100 .. 100 ) } # genera 10 numeros aleatorios entre -100 y 100

pone "El promedio del arreglo # { x . to_s } es: # { x . sum / x . length . to_f } "

pone " # { x . suma / x . longitud } "

suma = 0
x . cada uno hace | num |
    suma = suma + num
final
pone " # { suma / x . length } "

# 7

y = ( 1 .. 125 ) . to_a . seleccione { | yo | i % 2 ! = 0 }
pone y . clase
pone "Numeros impares del 1 al 125: # { y . to_s } "

impar = 1
impares = [ ]
para yo en 1 .. 128
    impares . empujar ( impar )
    impar = impar + 2
final

pone impares . clase

y = ( 1 .. 255 ) . to_a
pone y . clase
pone y . find_all { | a | a . ¿impar? } . to_s

# 8
x = [ 1 , 3 , 5 , 7 ]
y = 3
pone "Cantidad de números mayores a # { y } dentro del arreglo # { x } : # { x . select { | i | i > y } . length } "

def mayorQueY valor , arr
    para i en 0 .. arr . longitud - 1
        pone "El numero # { arr [ i ] } es mayor que # { valor } " if valor < arr [ i ]
    final
final
mayorQueY 5 , x

pone "Cantidad de números mayores a # { y } dentro del arreglo # { x } : # { x . find_all { | i | i > y } . size } "

# 9

y = [ 1 , 5 , 10 , - 2 ]
pone "El cuadrado de cada elemento del array # { y } : # { y . collect! { | i | i * i } } "

x = [ 1 , 3 , 5 , 7 , 9 , 13 ]
def alCuadrado arr
    cuadra = [ ]
    para i en 0 .. arr . longitud - 1
        cuadra . empujar ( arr [ i ] * arr [ i ] )
    final
    volver cuadra
final
pone "Arreglo original: # { x . to_s } "
x = alCuadrado x
pone "Arreglo al cuadrado: # { x . to_s } "

#raiz arreglo arreglo

# 10
#Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que reemplace cualquier número negativo con 0. Cuando el programa termine, x no debe tener valores negativos, es decir [1, 5, 10, 0].

x = [ 1 , 5 , 10 , - 2 ]
def reemplazar_negativos ( x )
  x . each_with_index hacer | valor , indice |
    si valor < 0
      x [ índice ] = 0
    final
  final
final

reemplazar_negativos ( [ 1 , 5 , 10 , - 2 ] )

x = [ 1 , 5 , 10 , - 2 ]
def noNegativo arr
    para i en 0 .. arr . longitud - 1
        si arr [ i ] < 0
            arr [ i ] = 0
        final
    final
    volver arr
final
pone "Arreglo original: # { x . to_s } "
x = no Negativo x
pone "Arreglo sin negativos: # { x . to_s } "

x = [ 1 , 5 , 10 , - 2 ]
def val_pos n
    si ( n > 0 )
        norte
    demás
        0
    final
final
pone "El cuadrado de cada elemento del array # { x } : # { x . collect! { | i | val_pos i } } "

# 11
x = [ 1 , 5 , 10 , - 2 ]
pone "maximo # { x . max } , minimo # { x . min } , y promedio # { x . sum / x . length } "

def max_min_prom arr
    { : max => arr . max , : min => arr . min , : prom => arr . suma / arr . longitud . to_f }
final

pone "Elimina negativo del array # { x } : # { max_min_prom x } "


def maxYmin arr
    suma = 0
    max = arr [ 0 ]
    min = arr [ 0 ]
    para i en 0 .. arr . longitud - 1
        suma = suma + arr [ i ]
        si arr [ i ] > max
            max = arr [ i ]
        final
        si arr [ i ] < min
            min = arr [ i ]
        final
    final
    retorno { : max => max , : min => min , : prom => ( suma / ( i + 1 ) ) }
final
x = [ 3 , 5 , 7 , 2 , 3 ]
pone "Notas: # { x . to_s } "
datos = maxYmin x
pone datos

# 12
x = [ 1 , 5 , 10 , 7 , - 2 ]
x . eliminar_en ( 0 )
x . empujar ( 0 )
pone x . to_s

x = [ 1 , 5 , 10 , 7 , - 2 ]
pone x . rebanada ( 1 , x . longitud ) . empujar ( 0 ) . to_s

x = [ 1 , 5 , 10 , 7 , - 2 ]
def cambioArr arr
    para i en 0 .. arr . longitud - 2
        arr [ i ] = arr [ i + 1 ]
    final
    arr [ i + 1 ] = 0
    volver arr  
final
pone "Arreglo original: # { x . to_s } "
pone "Con el cambio: # { ( cambioArr x ) . to_s } "


# 13
#Escriba un programa que tome un arreglo de números y reemplace cualquier número negativo con la palabra "Dojo". Por ejemplo, dado el arreglo x = [-1, -3, 2], después de que el programa haya terminado, ese arreglo debe ser ['Dojo', 'Dojo', 2].

def dojo ( x )
    x . ¡mapa! { | yo | yo < 0 ? "Dojo" : i }
    pone x . to_a . to_s
final

x = [ - 1 , - 3 , 2 ]
dojo ( x )

x = [ - 1 , - 3 , 2 ]
def val_pos n
    si ( n > 0 )
        norte
    demás
        "Dojo"
    final
final
pone "Elimina negativo del array # { x } : # { x . collect! { | i | val_pos i } } "


def negativoDojo arr
    para i en 0 .. arr . longitud - 1
        si arr [ i ] < 0
            arr [ i ] = "Dojo"
        final
    final
    volver arr
final
x = [ 1 , - 3 , 9 , 5 , - 2 , - 5 , 4 , 6 ]
pone "Arreglo original: # { x . to_s } "
pone "Con el cambio: # { ( negativoDojo x ) . to_s 

