# Laboratorio dos

# Sumador-restador de 4 bits

se diseño un sumador-restador de 4 bits usando full adders o sumadores completos, circuito diseñado para que con una entrada se pude elegir entre sumar o restar.

el esquema de este circuito es el siguiente:


en el cual se puede observar como se usan compuertas xor para negar la entrada B cuando se quiere restar o no alterar su estado cuando se quiere sumar, ademas de que al estar la entrada activa para realizar la resta, tambien se activa el carry de entrada del sumador de los bits menos significativo para completar el complemento a dos.
Este diseño trae un problema ya que cuando el numero B es mayor que el numero A, el resultado al ser negativo sele debe aplicar de nuevo 
