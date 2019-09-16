%% Práctica 3: Señales continuas
%
% 
%%
%% Descripción general de MATLAB
%
% <html> <iframe width="560" height="315" src="https://www.youtube.com/embed/YF_32dT2fNU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
% </html>
%
% <https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-094-introduction-to-matlab-january-iap-2010/lecture-notes/MIT6_094IAP10_lec01.pdf Documento>
%% Crear documento con publish
% Ayuda en linea para publicar <https://www.mathworks.com/help/matlab/matlab_prog/marking-up-matlab-comments-for-publishing.html Publish>
%% Creación de vectores
% <https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-094-introduction-to-matlab-january-iap-2010/lecture-notes/MIT6_094IAP10_lec01.pdf Documento>
% Creamos  vectores (fila)
t1= -10:5; % El punto y coma es para que el resultado no sea desplegado
t2=-2:0.01:15; 
%%
% Para saber las dimensiones 
size(t1)
size(t2)
%% Operación elemento a elemento y matricial
% Las operaciones elemento a elemento nos ayudan a evaluar funciones para
% valores de su dominio al mismo tiempo, el sigueinte código genera error  
%%
% 
%   t1*t1
%       
% En cambio el sigueinte codigo es correcto
t1.*t1

%% Crear funciones
% <https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-094-introduction-to-matlab-january-iap-2010/lecture-notes/MIT6_094IAP10_lec02.pdf Documento>
% 
% Las funciones en MATLAB tienen la siguiente sintaxis
%
%   function [sal1,sal2,sal3]=nombreFuncion(ent1,ent2,ent3)
%       %codigo de la funcion 
%   end
% 
% Algunas notas sobre las funciones
% 
% * El archivo debe guardarse como  nombreFuncion.m
% * Debes de estar trabajando en el directorio donde este tu función para
% poder ocuparla, o agregar el directorio
% * Las salidas y las entradas son opcionales, en este sentido, hay 4 tipos 
% funciones: con entradas y salidas, con salidas sin entrada, con entrada
% sin salidas, sin entradas y sin salidas
%
% ¿Podrías escribir varias funciones en el mismo archivo y ocupar unas
% funciones dentro de otras?

%% Algunas funciones implementadas
%
%   help sin 
%   help cos
%   help exp
%   help abs
%   help angle
%   help pi
%   help plot
%   help square
%   help sinc
%   help rectpuls
%   help tripuls
%   help sawtooth
%   help heaviside
%   help dirac
%
% Entonces si ejecutamos alguna de las intrucciones anteriores se
% desplegara una breve descripción de la instrucción solicitada, si se
% quiere una descripción más completa tendría que ejecutarse _doc sinc_  
% (por ejemplo)o directamente en la ayuda.
%
help sinc

%%
% Como ya tenemos declarado un vecto de valores podríamos intentar con 
%
sinc(t1)
%% Funciones anonimas
% Observemos el siguiente código
%%
% 
f = @(t) exp(-t).*t+exp(-t).*cos(2*t);
u = @(t) t>=0;
p = @(t) (t>=0) & (t<1);

%% Gráficas: plot, subplot, plot3, edición con GUI, generar código de gráfica

plot([1,3],[5,-4])

%%

figure
plot(t1,sinc(t1))

%%

figure
plot(t2,sinc(t2))

%%

figure
t4=-100:0.1:100;
plot(t4,t4.^3,'LineWidth',2)
grid on
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box = 'off';
title('Gráfica de la señal f(t)=t^3 ')

%%

figure
t3=-100:0.1:100;
plot3(t3,cos(t3),sin(t3),'LineWidth',2)
grid on
xlabel('Dominio t')
ylabel('Re')
zlabel('Im')
title('Gráfica de la señal f(t)=e^{tj} ')

%%

figure
subplot(2,3,1)
plot(0:0.01:5,f(0:0.01:5))

subplot(2,3,2)
plot(t1,u(t1))

subplot(2,3,5)
plot(t2,p(t2))

%%

figure()
plot(t2,u(t2))

%%

figure()
plot(t1,p(t1))
grid on
axis([-12 10, -1, 2])

%%

figure()
subplot(1,2,1)
plot(t1,p(t1))
grid on
axis([-12 10, -1, 2])

subplot(1,2,2)
plot(t2,p(t2))
grid on
axis([-12 10, -1, 2])
%%
% Entonces veamos que sucede con lo siguiente
t=-10:0.001:10;
figure
subplot(2,1,1)
plot(t,p(t))
grid on
axis([-10, 10 -0.5 1.5]) 

subplot(2,1,2)
plot(t,p(t-2))
grid on
axis([-10, 10 -0.5 1.5]) 


%% Un poco de simbólico
% <https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-094-introduction-to-matlab-january-iap-2010/lecture-notes/MIT6_094IAP10_lec05.pdf Documento>
%
% Realizar las siguientes integrales
% 
% $$\int_a^bxe^{-x}dx,\;\;\int_0^2xe^{-x}dx,\;\;\int_0^\infty xe^{-x}dx$$
% 

syms a b  x 
Q=int(x*exp(-x),a,b)
subs(Q,{a,b},{0,2})

%%
% El sigueinte código produce error 
%
%   subs(Q,{a,b},{0,inf})
% 
% Pero este código no, ¿Por qué?

Q=int(x*exp(-x),a,inf)
subs(Q,a,0)

close all

%% Observaciones
% Tener claro que esto no es absoluto, es una manera de implementación en 
% MATLAB, es decir, la implementación de las señales podría variar incluso
% en el mismo MATLAB, y por supuesto si se utiliza otro software
%% Notas 
% # Guia de Matlab del  <https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-094-introduction-to-matlab-january-iap-2010/index.htm MIT OCW>
% # Backgroun sección MB de Lathi

%% Entregables
% Se revisa una publicación (html) de la práctica. En este caso tendra que
% iniciar indicando el nombre de la práctica y sus datos personales,
% equipos de dos o tres personas
% (Portada). El índice del contenido lo genera Publish (índice). Los
% objetivos son los sigueintes:
%
% * Manipulación básica de MATLAB
% * Gráficas de señales reales y complejas continuas 
% * Transformación de señales continuas (escalamientos y traslaciones)
% * Calculo de energía y potencia de señales continuas
%
% Como introducción investigue un poco de la historia del desarrollo de
% MATLAB, hable un poco sobre alternativas de software libre (Octave, Python)
% y porporcione enlaces (confiables) donde se pueda consultar información
% para comenzar a utilizar dichas herramientas
%
% Para el desarrollo se tienen que resolver cada uno de los siguientes
% problemas comenzando una nueva sección (para la publicación) en cada uno de ellos.
%
% # Crea una función que se llame _fun1_ y reciba dos parametros $\omega$ y 
% $a$ la función debe regresar la evaluación $F(\omega)=a/(a^2+\omega^2)$,
% esta función debe trabajr con $a\in R$ y $t\in  R^n$. Debe
% mostrar su código en el reporte (sin ejecutar).
% # Construya una función que gráfique funciones de
% $f:R\rightarrow R$ en el formato de su elección y pruebe
% su código mostrando la gráfica de $F(\omega)$ vs $\omega$ en el intervalo
% $[-2,2]$ para $a=1$, no debe
% incluir el código, solo el uso de la función para mostrar la gráfica
% # Construya una función que gráfique funciones de
% $f:R\rightarrow R^2$ en el formato de su elección y pruebe
% su código mostrando la gráfica de la transformada de Fourier $F(w)$ en
% $[-10,10]$ de la función $f(t)=e^{-2t}u(t)$, puede utilizar una función
% anonima para este fin, no debe incluir el código, solo el uso de la 
% función para mostrarla gráfica. Reporte la gráfica de $f(t)$ de 
% $[-1,5]$ (recuerde que ya tiene una función para esto). Reporte 
% del espectro de magnitud y del espectro de fase en $[-10,10]$ (puedes con
% sultar con help la descripción de _abs_, _angle_, _atan2_). Solo
% reporte las graficas.
% # Realiza las mismas operaciones que Lathi en las secciones M1.1 a M1.4
%  que se encuentra al final del capítulo 1 y antes de la sección de
%  problemas, cambie los _inline_ por funciones anonimas
% # Resuelve el problema 1.2.2 usando las herramientas del paso anterior. 
% # Escriba una función que se llame _energia_ que reciba como argumento
% una función (anonima o simbolica) y que regrese el calculo de la energía,
% para esto puede resultar útil investigar las instrucciones _int_ , _integral_
% Se presupone utilizar el código solo con funciones de energia. Muestre
% el código sin ejecutar, y posteriormente resuelva el problema 1.1.3
% # Escriba una función que se llame _potencia_ que reciba como argumento
% una función (anonima o simbolica) y que regrese el calculo de la potencia
% para esto puede resultar útil investigar las instrucciones _int_ , _integral_
% Se presupone utilizar el código solo con funciones de potencia. Muestre
% el código sin ejecutar, y posteriormente resuelva el problema 1.1.4
%
% No es necesario incluir conclusiones en esta práctica, si lo considera
% necesario puede incluir apéndices, no olvide incluir sus referencias. 
%%
% El código de esta publicación lo puedes encontrar en el siguiente
% <https://www.dropbox.com/s/krv0lj76yy17qbn/P03SyS20201.m?dl=0 enlace>


