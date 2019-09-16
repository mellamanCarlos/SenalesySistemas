%% Práctica 3: Señales continuas
%
%
% *Autores:*
%
% * Argaez Herrera Antonia Margarita
% * Leguizamo Lara Daniela Denisse
% * Rojas Solis Juan Carlos
% 
% *Grupo: 2TV1*
%
% *Profesor:*
%
% Dr. Rafael Martínez Martínez
%% Objetivos
%
%%
% 
% * Manipulación básica de MATLAB
% * Gráficas de señales reales y complejas continuas
% * Transformación de señales continuas (escalamientos y traslaciones)
% * Calculo de energía y potencia de señales continuas
%
%
%% Introducción
%
% *¿Qué es MATLAB?*
%
% MATLAB (abreviatura de MATrix LABoratory, «laboratorio de matrices») es un sistema de 
% cómputo numérico que ofrece un entorno de desarrollo integrado (IDE) 
% con un lenguaje de programación propio (lenguaje M). Está disponible para 
% las plataformas Unix, Windows, Mac OS X y GNU/Linux.
%
% Entre sus prestaciones básicas se hallan la manipulación de matrices, la 
% representación de datos y funciones, la implementación de algoritmos, la creación 
% de interfaces de usuario (GUI) y la comunicación con programas en otros 
% lenguajes y con otros dispositivos hardware. El paquete MATLAB dispone de dos 
% herramientas adicionales que expanden sus prestaciones, a saber, Simulink 
% (plataforma de simulación multidominio) y 
% GUIDE (editor de interfaces de usuario - GUI). Además, se pueden ampliar 
% las capacidades de MATLAB con las cajas de herramientas (toolboxes); y las de 
% Simulink con los paquetes de bloques (blocksets).
%
% Es un software muy usado en universidades y centros de investigación y 
% desarrollo. En los últimos años ha aumentado el número de prestaciones, 
% como la de programar directamente procesadores digitales de señal o crear código VHDL.
%
% En 2004, se estimaba que MATLAB era empleado por más de un millón de personas 
% en ámbitos académicos y empresariales.
% <https://es.wikipedia.org/wiki/MATLAB [1]>
%
% *Alternativas a MATLAB*
%
% * GNU Octave
%
% GNU Octave puede ser la alternativa más conocida a MATLAB. En desarrollo 
% activo durante casi tres décadas, Octave se ejecuta en Windows, Mac y 
% Linux, y está empaquetado para la mayoría de las distribuciones principales. 
% Si está buscando un proyecto que sea lo más parecido posible al 
% lenguaje MATLAB real, Octave puede ser una buena opción para usted; se 
% esfuerza por una compatibilidad exacta, por lo que muchos de sus proyectos 
% desarrollados para MATLAB pueden ejecutarse en Octave sin necesidad de 
% modificaciones.
% 
% Octave tiene licencia GPL, y su código fuente se puede encontrar en el 
% sitio FTP de GNU.
% 
% * Scilab
%
% Scilab es otra opción de código abierto para computación numérica que se 
% ejecuta en todas las plataformas principales: Windows, Mac y Linux 
% incluidos. Scilab es quizás la alternativa más conocida fuera de Octave, 
% y (como Octave) es muy similar a MATLAB en su implementación, aunque 
% la compatibilidad exacta no es un objetivo de los desarrolladores del proyecto.
% 
% Scilab se distribuye como fuente abierta bajo la licencia CeCILL compatible 
% con GPL, y su código fuente está disponible en su página oficial.
% 
% * Sage
%
% SageMath es otro sistema de software de matemáticas de código abierto que 
% podría ser una buena opción para aquellos que buscan una alternativa 
% de MATLAB. Está construido sobre una variedad de conocidas bibliotecas de 
% computación científica basadas en Python, y su propio lenguaje es 
% sintácticamente similar a Python. Tiene muchas características que incluyen 
% una interfaz de línea de comandos, cuadernos basados en navegador, 
% herramientas para incrustar fórmulas en otros documentos y, por supuesto, 
% muchas bibliotecas matemáticas.
% 
% SageMath está disponible bajo una licencia GPL, y su código fuente se 
% puede encontrar en el sitio web del proyecto.
% <hhttps://maslinux.es/3-alternativas-de-codigo-abierto-a-matlab/ [2]>
%% Desarrollo
% A continuación se presentan los problemas resueltos.
%
%% Problema 1
%
% Crea una función que se llame _fun1_ y reciba dos parametros $\omega$ y 
% $a$ la función debe regresar la evaluación $F(\omega)=a/(a^2+\omega^2)$,
% esta función debe trabajar con $a\in R$ y $t\in  R^n$. Debe
% mostrar su código en el reporte (sin ejecutar).
%
%% Problema 2
%
% Construya una función que gráfique funciones de
% $f:R\rightarrow R$ en el formato de su elección y pruebe
% su código mostrando la gráfica de $F(\omega)$ vs $\omega$ en el intervalo
% $[-2,2]$ para $a=1$, no debe
% incluir el código, solo el uso de la función para mostrar la gráfica.
%
%% Problema 3
%
% Este problema no se hace.
%
%% Problema 4
%
% Realiza las mismas operaciones que Lathi en las secciones M1.1 a M1.4
% que se encuentra al final del capítulo 1 y antes de la sección de
% problemas, cambie los _inline_ por funciones anonimas.
%
%% Problema 5
%
% Resuelve el problema 1.2.2 usando las herramientas del paso anterior. 
%
%% Problema 6
%
% Escriba una función que se llame _energia_ que reciba como argumento
% una función (anonima o simbolica) y que regrese el calculo de la energía,
% para esto puede resultar útil investigar las instrucciones _int_ , 
% _integral_. Se presupone utilizar el código solo con funciones de energia. Muestre
% el código sin ejecutar, y posteriormente resuelva el problema 1.1.3
%
%% Problema 7
%
% Escriba una función que se llame _potencia_ que reciba como argumento
% una función (anonima o simbolica) y que regrese el calculo de la potencia
% para esto puede resultar útil investigar las instrucciones _int_ , 
% _integral_. Se presupone utilizar el código solo con funciones de potencia. Muestre
% el código sin ejecutar, y posteriormente resuelva el problema 1.1.4
%