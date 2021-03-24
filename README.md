# lab01- sumador 
laboratorio 01 introducción a HDL


Daniel Felipe Cantor Santana

El desarrollo del laboratorio es el siguiente:

# 1)Sumamdor de 1 bit

Inicialmente se tuvo un error al momento de intentar lanzar la simulación  del laboratorio, esto debido a que  el trabajo se encuentra desarrollado
enuna versión distinta a la se tiene. Esto se solucionó eliminando la carpetoa db del dispositivo para así permitir la creación
se una nueva copia del archivo.


Se simuló el primer sumador  sum1bcc que como se observó funciona correctamente, se realizaron sus 8 posibles
combinaciones (como se ve en la siguiente tabla):

A  | B  | Cin | Out | Cout 
-- | -- | --  | --  |  --
0| 0 | 0 |0 | 0
0| 0 | 1 | 1| 0
0| 1 | 0 | 1| 0
0| 1 | 1 | 0| 1
1| 0 | 0 | 1| 0
1| 0 | 1 | 0| 1
1| 1 | 0 | 0| 1
1| 1 | 1 | 1| 1


Las simulaciones arrojaron el siguiente resultado:
*****************************************
 https://github.com/unal-edigital1-lab/lab00-dfcantors/blob/master/sumbcc.png

*****************************************
Como se ve, el sumador actua segun como es de esperarse. Los valores de la tabla de verdad y los de la simulación coinciden.


# 2) Sumador de 4 bits
Ahora un sumador de 4 bits puede construirse a traves de varios sumadores de 1 bit, es decir, ir concatenando varios sumadores de 1 bit.
como se muestra a continuación:
 
***************************
https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab02-sumador4b/doc/sum4b.jpg
***************************

Se tiene el siguiente codigo para programar este sumador:

https://github.com/unal-edigital1-lab/lab00-dfcantors/blob/master/sumador4bits.PNG

La extensión del archivo debe ser .qpf para poder simularse. Una vez se lanza el archivo, nos encontramos con que efectivamente
cada entrada requiere de 4 datos, como se ve en la siguiente imagen:

https://github.com/unal-edigital1-lab/lab00-dfcantors/blob/master/sumador4datos.PNG


Para la prueba de este suador, se realizó un archivo testbech

# 3) Archivo TestBech


Realizar las simulaciones cambiando manualmente los valores de las entradas del sumador resulta ser un trabajo dispendioso
por lo tanto, al implementar un TestBech podemos de cierto manera "automatizar" esa tarea:





