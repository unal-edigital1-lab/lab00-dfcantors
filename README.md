# lab01- sumador 
laboratorio 01 introducción a HDL


Daniel Felipe Cantor Santana

El desarrollo del laboratorio es el siguiente:

Antes de empezar las simulaciones, cree un nuevo proyecto llamado lab01sum el cual configuré como se busca en este laboratorio
(especificar la ruta de simulación, emplear modelsim altera etc).

# 1)Sumador de 1 bit

Inicialmente tuve varios problemas al momento de intentar lanzar la simulación el primero ocurrió ya que el trabajo se desarrolló
en una versión mas antigua del programa a la que yo instalé. Esto se solucionó eliminando la carpeta db del dispositivo para así permitir la creación
de una nueva copia desde el repositorio.
El segundo error ocurrió al crear un nuevo proyecto (en este caso la carpeta Lab00) al copiar el codigo e intentar lanzarlo
aparecia un error, con esto caí en cuenta que el proyecto y el archivo a lanzar deben tener el mismo nombre.


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
 ![Imagen 1](https://github.com/unal-edigital1-lab/lab00-dfcantors/blob/master/imagenes/sum1b.PNG)

*****************************************
Como se ve, el sumador actua segun como es de esperarse. Los valores de la tabla de verdad y los de la simulación coinciden.
Al realizar la segunda simulación, es decir emplear el archivo sum1bcc_primitive no se presentaron inconvenientes. Este segundo
archivo arrojó los mismo resultados que sum1bcc como se ve a continuación:

![Imagen 2](https://github.com/unal-edigital1-lab/lab00-dfcantors/blob/master/imagenes/SumadorPrimitivo.PNG)

# 2) Sumador de 4 bits
Ahora un sumador de 4 bits puede construirse a traves de varios sumadores de 1 bit, es decir, ir concatenando varios sumadores de 1 bit.
como se muestra a continuación:
 
***************************
![Imagen 3](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab02-sumador4b/doc/sum4b.jpg)
***************************

Se tiene el siguiente codigo para programar este sumador:

![Imagen 4](https://github.com/unal-edigital1-lab/lab00-dfcantors/blob/master/imagenes/sumador4bits.PNG)

Una vez se lanza el archivo, nos encontramos con que efectivamente cada entrada requiere de 4 datos, 
como se ve en la siguiente imagen:

![Imagen 5](https://github.com/unal-edigital1-lab/lab00-dfcantors/blob/master/imagenes/sumador4datos.PNG)


Para la prueba de este sumador, se realizó un archivo testbech.

# 3) Archivo TestBech


Realizar las simulaciones cambiando manualmente los valores de las entradas del sumador resulta ser un trabajo dispendioso
por lo tanto, al implementar un TestBech podemos de cierto manera "automatizar" esa tarea. Vale la pena recordar, que el
archivo testbench debe indicar por cuanto tiempo va a funcionar de lo contrario al sintetizar aparecerá el siguiente error:

![Imagen 6](https://github.com/unal-edigital1-lab/lab00-dfcantors/blob/master/imagenes/error_testbench.png)

Indicando el tiempo de sintetización, tanto de inicio como de finalización, para evitar un ciclo infinito se tuvo el siguiente
resultado:


![Imagen 7](https://github.com/unal-edigital1-lab/lab00-dfcantors/blob/master/imagenes/sum4bTB.PNG)


Como se ve se indica el valor de cada compuerta del sumador en orden. Este es el resultado que se espera.


# 4)Implementación del sumador en la tarjeta
Ya con el codigo del sumador de 4 bit completado, se dispuso a integrar el codigo en la tarjeta JTAG.
Lo primero fue asignar los pines de salida y entrada con las vairables que se escriberon en sum4bcc, como se muestra a
continuación:


[FOTOOOO]

En esta etapa del desarrolo tuvimos un problema, el codigo no se podía cargar en la tarjeta, esto se debió a que inicialmente
no se conectó la tarjeta al voltaje. Una vez solucionamos el problema la tarjeta predió y configuró el codigo:

[FOTOTOO TARJETA]


Se oresentó otro problema en cada suma se teniaque habia un 1 de más, esto se debe a que los interruptores se encuentran de cabeza
por lo que tuvimos dos formas de solucionar este inconveniente:

1- Invertir la señal de salida en el código
2- Cambiar la orientación de como tomamos la JTAG
