%% Práctica 4: Convolución y Correlación de señales en tiempo continuo
%
%% Simulación numérica de convolución
%
% Existen diferentes formas de implementar simulaciones numéricas de
% convoluciones. De acuerdo a la definición matemática de convolución
% necesitamos resolver una integral de una multiplicación de señales,
% entonces implementar una simulación de convolución se subdivide en entender
% que significa integrar numéricamente y posteriormente elegir un algoritmo
% que resuelva el problema de integración.
% 
% La siguiente
% <https://www.youtube.com/playlist?list=PLSC7gO5dTNPewJkJ5Zh3Y7xHfy_fnDKqD lista de reproducción> 
% explica sobre la simulación numérica de integrales, no se explican todos
% los algoritmos exitentes (hay bastantes) pero sirve para tener una idea
% de lo que se busca en general cuando se realizan simulaciones numericas
%
% Para la implementación númerica es importante tener en cuenta 
% la duración de cada señal,
% recuerde que es imposible hacer simulaciones númericas que involucren
% cantidades infinitas. Si una señal tiene duración $T_1$ y otra señal 
% $T_2$ la convolución tendrá duración $T_1+T_2$; donde la duración se
% refiere al intervalo para el cual la señal no es totalmente cero. 
% 
% 
% <<duracion.png>>
% 
% 
%%
% Cabe señalar que si las señales involucradas tienen duración infinita
% podría elegirse $T_1$ y $T_2$ lo suficientemente grande para tener una
% idea de lo que sucede con el resultado de su convolución
%
% Por ejemplo si queremos realizar la convolución de las siguientes
% señales 
% 
% $$x(t)=1.5sen(\pi t)(u(t)-u(t-1))$$
% 
% 
% $$h(t)=1.5((u(t)-u(t-1))-(u(t-2)-u(t-2.5)))$$
% 
% la señal resultante tendrá longitud de 3.5. 
%
% <<convoecu.png>>
% 
% Ahora se pueden implementar la grafica en MATLAB, 
%
figure
subplot(1,3,1)
syms t
x=piecewise(t<0,0,0<t<1,1.5*sin(pi*t),t>1,0);
fplot(x,[-0.25,1.25],'r')
grid on
title('x(t)')
axis([-1 3.6 -2 2]);
subplot(1,3,2)
h=piecewise(t<0,0,0<t<1,1.5,1<t<2,0,2<t<2.5,-1.5,t>2.5,0);
fplot(h,[-0.25,2.75],'r')
grid on
title('h(t)')
axis([-1 3.6 -2 2]);
t1=0:0.01:1;
t2=1:0.01:2;
t3=2:0.01:2.5;
t4=2.5:0.01:3;
t5=3:0.01:3.5;
subplot(1,3,3)
plot(t1,(1.5^2/pi)*(1-cos(pi*t1)))
hold on
plot(t2,(1.5^2/pi)*(1-cos(pi*t2)))
plot(t3,(1.5/pi)*(cos(pi*t3)-1))
plot(t4,(1.5/pi)*(cos(pi*t4)-sin(pi*t4)))
plot(t5, (-1.5/pi)*(1+sin(pi*t5)))
grid on
title('x(t)*h(t)')
axis([-1 3.6 -2 2]);
%%
% El siguiente código es una modificación del código de Lathi 
% (Código del capítulo 2, M2.4 pág 161), ejemplo de convoluciones 
% continuas
%
% <include>convconm.m</include>
%
%%
% Si ejecutamos las siguientes instrucciones en el Command Window y el
% directorio de trabajo es el mismo donde se encuentra la función _convconm_
% tendrémos el siguiente resultado
% 
x = @(t) 1.5*sin(pi*t).*(t>=0 & t<1);
h = @(t) 1.5*((t>=0&t<1.0) - (t>=2&t<2.5));
convconm(x,h)
%% 
% El cual puede compararse con la gráfica del resultado análitico y
% observar que la solución númerica es una buena aproximación de la exacta. 
% 

%% Correlación númerica 
% Una manera de abordar este problema es recordando una equivalencia de la
% correlación 
%%
% 
% $$r_{fg}(t)=f(t)*g(-t)$$
% 
% Entonces por ejemplo si se quisiera realizar la correlación de las 
% señales
%
% $$g(t)=u(t+0.25)-u(t)$$
% 
% 
% $$f(t)=u(t)-u(t-2)$$
%
% El código de convolución podría ocuparse de la siguiente manera 
g = @(t) (t>=0 & t<0.25);
f = @(t) (t>=0&t<2);
convconm(g,f)
%% Entregables
% Se revisa una publicación (html) de la práctica. En este caso inicie
% indicando el nombre de la práctica y sus datos personales,
% equipos de dos o tres personas
% (Portada). El índice del contenido lo genera Publish (Índice). Los
% objetivos son los sigueintes:
%
% * Conocer métodos básicos de integración numérica 
% * Manipulación de instrucciones en MATLAB
% * Simular convoluciones y correlaciones de señales continuas
%
% Como introducción elabore un reporte de los métodos descritos en la lista
% de reproducción que incluya el desarrollo de los ejemplos expuestos. 
%
% Para el desarrollo se tienen que resolver cada uno de los siguientes
% problemas comenzando una nueva sección (para la publicación) en cada uno de ellos.
% 
% Para cada problema se tendrán que hacer las modíficaciones necesarias al
% código de ejemplo, convendría entonces pensar en realizar una modificación
% general de tal manera que el programa funcione para cualesquiera dos
% funciones, pero esto es opcional.
%
% # Para el PR04 reporte la grafica de la simulación númerica
% de la convolución y compare con el resultado análitico que obtuvo para el problema 1, esto
% es, su práctica tendrá que incluir una llamada a la funciónn
% _convconm_ y posteriormente se tendrá que mostrar (mediante el
% Publish) la gráfica tanto de las señales invlucradas como el resultado de
% la convolución, y en esta última gráficara su resultado analitico, se
% tendrá que incluir el resultado analitico.  Investigue como crear un giff
% e inserte la animación. 
% # Para el PR04 reporte la grafica de la simulación númerica
% de la convolución y compare con el resultado análitico que obtuvo para el problema 3, esto
% es, su práctica tendrá que incluir una llamada a la funciónn
% _convconm_ y posteriormente se tendrá que mostrar (mediante el
% Publish) la gráfica tanto de las señales invlucradas como el resultado de
% la convolución, y en esta última gráficara su resultado analitico, se
% tendrá que incluir el resultado analitico. Investigue como crear un giff
% e inserte la animación. 
% # Para el PR06 reporte la grafica de la simulación númerica
% de la correalción y compare con el resultado análitico que obtuvo para el problema e), esto
% es, su práctica tendrá que incluir una llamada a la funciónn
% _convconm_ y posteriormente se tendrá que mostrar (mediante el
% Publish) la gráfica tanto de las señales involucradas como el resultado de
% su correlación, y en esta última graficara su resultado analitico, se
% tendrá que incluir el resultado analitico. Investigue como crear un giff
% e inserte la animación. 
% # Para el PR06 reporte la grafica de la simulación númerica
% de la correalción y compare con el resultado análitico que obtuvo para el problema f), esto
% es, su práctica tendrá que incluir una llamada a la funciónn
% _convconm_ y posteriormente se tendrá que mostrar (mediante el
% Publish) la gráfica tanto de las señales involucradas como el resultado de
% su correlación, y en esta última graficara su resultado analitico, se
% tendrá que incluir el resultado analitico. Investigue como crear un giff
% e inserte la animación. 



%%
% El código de esta publicación lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/px6ne3mko1wj6d1/P04SyS20201.m?dl=0 enlace>