# LABORATORIO 01- SUMADOR COMPLETO DE 1 BIT Y DE 4 BITS.
## Laboratorio 01-Introducción a HDL

Nicolás Velásquez Ospina.
### Introducción 
El primer paso en nuestra introducción a HDL fue la instalacion de Quartus, y la familiarización con GitHub. Posteriormente a esto, se realiza la creacion de un nuevo proyecto en Quartus (New Proyect Wizard), por el cual escogemos la ubicacion del proyecto y la selección de la tarjeta, que para este laboratorio no fue usada, sin embargo, es necesario realizar la escogencia en el sistema (Cyclone IV EP4CE10E22C8N). Una vez hecho esto, es necesario la creacion de un nuevo archivo Verilog HDL File.

## Sumador completo de 1 bit
Una vez creado el archivo, siguiendo los liniamentos de la guia en primera instancia se hace necesario comprender el sumador primitivo, representado por el siguiente codigo:


    module sum1bcc_primitive (A, B, Ci,Cout,S);
    
      input  A;
      input  B;
      input  Ci;
      output Cout;
      output S;
    
    
      wire a_ab;
      wire x_ab;
      wire cout_t;
    
      and(a_ab,A,B);
      xor(x_ab,A,B);
    
      xor(S,x_ab,Ci);
      and(cout_t,x_ab,Ci);
    
      or (Cout,cout_t,a_ab);
    
    endmodule

Podemos notar como en el codigo se tienen las entradas (input) y las salidas (output), asi como la instanciacion de las compuertas logicas (AND, OR Y XOR), presentes en el esquematico elaborado a partir de la simplificacion de las expresiones del algebra booleana extraidas de la tabla de verdad. Es por esto que se utiliza el componente de tipo wire, que cumple la funcion de realizar las conexiones entre las compuertas anteriormente definidas.
Se habia mencionado que este sumador era de la forma primitiva, debido a que existe una manera un poco mas general de trabajar con circuitos combinacionales. Esta manera fue con la que se trabajo en el Quartus, resultando el modulo de la siguiente manera.
![Screenshot](Codigo1.png)
