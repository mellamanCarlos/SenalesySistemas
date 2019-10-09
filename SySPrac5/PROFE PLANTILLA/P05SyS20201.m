%% Práctica 5: Series de Fourier en tiempo continuo
%
%% Programa serie de Fourier exponencial compleja
%
% La serie de Fourier de una señal $f(t)$ periódica puede ser construida  
% bajo ciertas condiciones matemáticas (las condiciones de Dirichlet, aunque estas podrían no 
% cumplirse y aún así la serie existir) de la señal. Si la señal
% no es periódica pero cumple las condiciones en un intervalo de longitud
% finita,
% se puede construir la serie de
% Fourier en el intervalo (cuando el intervalo 
% es de longitud infinita se puede abordar a la suma de Fourier, 
% exponencial compleja, como una integral y los coeficientes 
% $D_n$ son muestras de lo que llamamos transformada de Fourier.)
%
% Deberás realizar algunos problemas con las especificaciones que
% se encuentran al final del documento, para ello se proporciona el 
% siguiente código, que gráfica la serie de Fourier exponencial compleja.  
%%
%
% <include>sfc.m</include>
%
% Por ejemplo si 
%%
% 
% $$f(t)=e^{-t/2};\;\; 0<t<\pi$$
% 
% periódica, entonces si se calcula la serie de Fourier exponencial compleja
% se utilizan las siguientes instrucciones para observar las gráficas
% correspondientes

d0=0.504;
dn=@(n) 0.504/(1+4*n*j);
t0=0;
tf=pi;
f=@(t) exp(-t/2);
armo=4;
a=-7;
b=7;
sfc(t0,tf,dn,d0,f,armo,a,b)

%% Entregables
% Se revisa una publicación (html) de la práctica. En este caso inicie
% indicando el nombre de la práctica y sus datos personales,
% equipos de dos o tres personas
% (Portada). El índice del contenido lo genera Publish (Índice). Los
% objetivos son los sigueintes:
%
% * Realizar gráficas de series de Fourier exponenciales y trigonométricas
% en tiempo continuo
% * Manipulación de instrucciones en MATLAB
% * Calculo númerico de los coeficientes de Fourier
%
% Como introducción elabore un reporte de la aproximación númerica de los
% coeficientes de Fourier exponencial compleja, puede apoyarse de Lathi
% sección 6.6, aquí debe de observar que el autor hace un tipo de
% aproximación para la integral que calcula los $D_n$, pero como sabe (de
% la práctica anterior) existen diferentes algoritmos para aproximar
% numericamente una integral definida. 
%
% Para el desarrollo se tienen que resolver cada uno de los siguientes
% problemas comenzando una nueva sección (para la publicación) en cada uno de ellos.
%
% Para cada problema debes de realizar 
% 
% # Realizar el programa de la serie que se indica
% # Gráfica de la serie de Fourier en un intervalo que muestre 5
% repeticiones
% # Gráfica de la señal y la serie de Fourier para 4 armonicos
% # Gráfica del error
% # Gráfica de la energía del error
% # Espectro de magnitud  para 4 armonicos
% # Espectro de fase para 4 armonicos
% # Todo lo anterior para 15 armonicos
% 
% 
% * *Ejemplo 6.1* Con serie  y espectro trigonometrico, no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
% * *Ejemplo 6.2.* Con serie y espectro exponencial y A=3,  no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
% 
% * *Ejemplo 6.4.* Con serie y espectro exponencial,  no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento) 
%
% * *Ejercicio 6.5.* Con serie y espectro exponencial,  no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
% * *Ejemplo 6.7.* Con serie y espectro exponencial y $T_0=3$ sin incluir la
% gráfica de f, error ni energía del error,  no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
% * Elabore un código similar al COMPUTER EXAMPLE C6.2 que se encuentra al 
% final de la sección 6.2 de Lathi para el Ejempo 6.2 con los datos
% indicados anteriormente (no utilice inline)
%
% * Elabore un código que implemente el algoritmo de trapecio compuesto
% para $n=15$, Utilice este código para aproximar $D_0,...,D_4$ del ejemplo
% de la práctica. Ahora implemente el código COMPUTER EXAMPLE C6.4 que se
% encuentra al final de la sección 6.6 de Lathi, y calcule nuevamente el
% los coeficientes $D_0,...,D_4$ del ejemplo propuesto. Muestre una tabla
% que contenga los coeficientes mencionados calculados con los dos
% algoritmos y de forma exacta, ¿Qué algortmo aproxima mejor a los
% coeficientes?, para esto compare los coefientes con el valor absoluto de
% la resta. 
%
% No es necesario incluir conclusiones en esta práctica, si lo considera
% necesario puede incluir apéndices, no olvide incluir sus referencias. 
%
% El código de esta publicación lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/pxg0fhs1oi0dnyp/P05SyS20201.m?dl=0 enlace>




