# Laboratorio dos

# Sumador-restador de 4 bits

se diseño un sumador-restador de 4 bits usando full adders o sumadores completos, circuito diseñado para que con una entrada se pude elegir entre sumar o restar.

el esquema de este circuito es el siguiente:

![image](https://github.com/Danrou97/labOne/blob/main/Images/sumador%20restador.png)

en el cual se puede observar como se usan compuertas xor para negar la entrada B cuando se quiere restar o no alterar su estado cuando se quiere sumar, ademas de que al estar la entrada activa para realizar la resta, tambien se activa el carry de entrada del sumador de los bits menos significativo para completar el complemento a dos.
Este diseño trae un problema ya que cuando el numero B es mayor que el numero A, el resultado al ser negativo debe aplicar de nuevo el complemento a dos para saber el resultado exacto.

## Módulo Sumador-Restador

Este módulo Verilog, denominado "sumadorestador," implementa una unidad aritmética capaz de realizar operaciones de suma y resta en números binarios de 4 bits. El módulo toma dos entradas de 4 bits, A y B, junto con una entrada de operación (Op), que determina si se debe realizar una suma (Op=0) o una resta (Op=1).

El módulo produce una salida de 4 bits (S) que representa el resultado de la operación, un bit de carry/borrow (C) que indica si se ha producido acarreo o préstamo durante la operación, y un bit de overflow (V) que señala si ha ocurrido un desbordamiento en la operación.

Internamente, el módulo utiliza cuatro sumadores completos (full adders) para realizar las operaciones de bits, y también realiza una lógica XOR para manejar la operación de resta y determinar los valores de carry y overflow apropiados.

Este módulo es útil para realizar operaciones aritméticas binarias en circuitos digitales y puede ser integrado en diseños más complejos que requieran capacidades de suma/resta.

![Resultado gráfico de la simulación](https://github.com/Danrou97/labOne/blob/main/Images/OndasSumador4bit.png)


![Salida por la terminal de la simulación](https://github.com/Danrou97/labOne/blob/main/Images/SalidaTerminal.png)
