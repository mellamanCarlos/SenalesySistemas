%% Práctica 5: Series de Fourier en tiempo continuo
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
% * Realizar gráficas de series de Fourier exponenciales y trigonométricas
% en tiempo continuo
% * Manipulación de instrucciones en MATLAB
% * Calculo númerico de los coeficientes de Fourier
%
%% Introducción
% Nos apoyaremos del codigo que viene en la sección 6.6 de Lathi (Ejemplo
% de computadora C6.4). Con este codigo podemos hacer una aproximación para
% calcular los coeficientes Dn
%
%   T_0 = ; %Periodo
%   N_0 =; %Muestreo
%   T = T_0/N_0; 
%   t = (0:T:T*(N_0-1))'; 
%   x = ; %Aqui va la función
%   x(1) = (x + 1)/2; %Aqui calcula D_0
%   D_n = fft (x)/N_0; %Aqui se calculan los Dn
%
% Este codigo utiliza la funcion fft para aproximar los valores de los coeficientes Dn
%
% fft significa fast fourier transform o transformada rapida de fourier
%% Desarrollo
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
%% Problema 1
%
% * *Ejemplo 6.1* Con serie  y espectro trigonometrico, no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
% *Con 4 armonicos* 
close all;
clear all;
a0=0.504;
an=@(n) 0.504*(2/(1+16*n^2));
bn=@(n) 0.504*(8*n/(1+16*n^2));
t0=0;
tf=pi;
f=@(t) exp(-t/2);
armo=4;
a=-pi;
b=4*pi;
sft(t0,tf,a0,an,bn,f,armo,a,b)
%%
% *Con 15 armonicos* 
close all;
clear all;
a0=0.504;
an=@(n) 0.504*(2/(1+16*n^2));
bn=@(n) 0.504*(8*n/(1+16*n^2));
t0=0;
tf=pi;
f=@(t) exp(-t/2);
armo=15;
a=-pi;
b=4*pi;
sft(t0,tf,a0,an,bn,f,armo,a,b)
%% Problema 2
%
% * *Ejemplo 6.2.* Con serie y espectro exponencial y A=3,  no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
% *Con 4 armonicos* 
close all;
clear all;
A=3;
d0=0;
dn=@(n) (A*exp(-(pi*n*3i)/2)*(exp(pi*n*1i) - 1)*(2 + pi*n*1i + n*pi*exp(pi*n*1i)*1i - 2*exp(pi*n*1i)))/(2*n^2*pi^2);
t0=-1/2;
tf=3/2;
g=@(t) 2.*A.*t.*(t>=-1/2 & t<=1/2);
h=@(t) 2.*A.*(1-t).*(t>1/2 & t<=3/2);
f=@(t) g(t)+h(t);
armo=4;
a=-1/2;
b=19/2;
sfc(t0,tf,dn,d0,f,armo,a,b)
%%
% *Con 15 armonicos* 
close all;
clear all;
A=3;
d0=0;
dn=@(n) (A*exp(-(pi*n*3i)/2)*(exp(pi*n*1i) - 1)*(2 + pi*n*1i + n*pi*exp(pi*n*1i)*1i - 2*exp(pi*n*1i)))/(2*n^2*pi^2);
t0=-1/2;
tf=3/2;
g=@(t) 2.*A.*t.*(t>=-1/2 & t<=1/2);
h=@(t) 2.*A.*(1-t).*(t>1/2 & t<=3/2);
f=@(t) g(t)+h(t);
armo=15;
a=-1/2;
b=19/2;
sfc(t0,tf,dn,d0,f,armo,a,b)
%% Problema 3
% 
% * *Ejemplo 6.4.* Con serie y espectro exponencial,  no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento) 
%
% *Con 4 armonicos* 
close all;
clear all;
d0=(5734161139222659*pi)/36028797018963968;
dn=@(n) -(exp(-(pi.*n.*1i)./2).*(exp(pi.*n.*1i) - 1).*5734161139222659i)./(36028797018963968.*n);
t0=-pi;
tf=pi;
f=@(t) 0.*(t>=-pi & t<=-pi/2) + 1.*(t>-pi/2 & t<=pi/2) + 0.*(t>pi/2 & t<=pi);
armo=4;
a=-3*pi;
b=7*pi;
sfc(t0,tf,dn,d0,f,armo,a,b)
%%
% *Con 15 armonicos* 
close all;
clear all;
d0=(5734161139222659*pi)/36028797018963968;
dn=@(n) -(exp(-(pi.*n.*1i)./2).*(exp(pi.*n.*1i) - 1).*5734161139222659i)./(36028797018963968.*n);
t0=-pi;
tf=pi;
f=@(t) 0.*(t>=-pi & t<=-pi/2) + 1.*(t>-pi/2 & t<=pi/2) + 0.*(t>pi/2 & t<=pi);
armo=15;
a=-3*pi;
b=7*pi;
sfc(t0,tf,dn,d0,f,armo,a,b)
%% Problema 4
%
% * *Ejercicio 6.5.* Con serie y espectro exponencial,  no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
% *Con 4 armonicos* 
close all;
clear all;
d0=0.504;
dn=@(n) (0.504)./(1+j.*4.*n);
t0=0;
tf=pi;
f=@(t) exp(-t/2);
armo=4;
a=-pi;
b=4*pi;
sfc(t0,tf,dn,d0,f,armo,a,b)
%%
% *Con 15 armonicos* 
close all;
clear all;
d0=0.504;
dn=@(n) (0.504)./(1+j.*4.*n);
t0=0;
tf=pi;
f=@(t) exp(-t/2);
armo=15;
a=-pi;
b=4*pi;
sfc(t0,tf,dn,d0,f,armo,a,b)
%% Problema 5
%
% * *Ejemplo 6.7.* Con serie y espectro exponencial y $T_0=3$ sin incluir la
% gráfica de f, error ni energía del error,  no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
% *Con 4 armonicos* 
close all;
clear all;
T0=3;
d0=1/T0;
dn=@(n) 1/T0;
t0=0;
tf=T0;
f=@(t) 3.*(t==0);
armo=4;
a=0;
b=12;
sfc_sin_energia(t0,tf,dn,d0,f,armo,a,b)
%%
% *Con 15 armonicos* 
close all;
clear all;
T0=3;
d0=1/T0;
dn=@(n) 1/T0;
t0=0;
tf=T0;
f=@(t) 10.*(t==0);
armo=15;
a=0;
b=12;
sfc_sin_energia(t0,tf,dn,d0,f,armo,a,b)
%% Problema 6
%
% * Elabore un código similar al COMPUTER EXAMPLE C6.2 que se encuentra al 
% final de la sección 6.2 de Lathi para el Ejempo 6.2 con los datos
% indicados anteriormente (no utilice inline)
%
problema6
%% Problema 7
%
% * Elabore un código que implemente el algoritmo de trapecio compuesto
% para $n=15$, Utilice este código para aproximar $D_0,...,D_4$ del ejemplo
% de la práctica. Ahora implemente el código COMPUTER EXAMPLE C6.4 que se
% encuentra al final de la sección 6.6 de Lathi, y calcule nuevamente los 
% coeficientes $D_0,...,D_4$ del ejemplo propuesto. Muestre una tabla
% que contenga los coeficientes mencionados calculados con los dos
% algoritmos y de forma exacta, ¿Qué algoritmo aproxima mejor a los
% coeficientes?, para esto compare los coeficientes con el valor absoluto de
% la resta. 
%
% Los Dn
close all;
clear all;
Dn=[0:4]';
%%
% Valor analitico
 p=[0:4]';
 Analitico = (0.504)./(1+4.*p.*j);
 %%
% Valor obtenido del codigo de Lathi
T_0 = pi; 
N_0 = 5; 
T = T_0/N_0; 
t = (0:T:T*(N_0-1))'; 
x = exp(-t/2); 
x(1) = (exp(-pi/2) + 1)/2;
Lathi = fft (x)/N_0; %Este es el valor de Dn
%%
% Valor obtenido por el codigo del trapecio compuesto
syms t;
trapecios=15;
f=@(t) exp(-t/2);
T0=pi;
w0=2;
a=0;
b=pi;
n=[0:4]';
Trapecio_compuesto= (1/T0).*Trapecio(f(t).*cos(n.*w0.*t),a,b,trapecios) - j.*(1/T0).*Trapecio(f(t).*sin(n.*w0.*t),a,b,trapecios);%Calcula los Dn por el trapecio compuesto
%
%%
% Calculamos el Error de Analitico - Lathi
EAL= abs(Analitico-Lathi);
%%
% Calculamos el Error de Analitico - Trapecio compuesto
EAT= abs(Analitico-Trapecio_compuesto);
%%
%Sacamos la tabla
T = table(Dn,Analitico,Lathi,Trapecio_compuesto,EAL,EAT)
%% Codigo de la función de trapecio compuesto 
%   function [Integral]=Trapecio(funcion,a,b,trapecios)
%   h=(b-a)/trapecios;
%   f=0;
%   for t=1:trapecios-1
%    x=a+h*t;
%    f=f+eval(funcion);
%   end
%   f=2*f;
%   x=a; 
%   f=f+eval(funcion); 
%   x=b; 
%   f=f+eval(funcion);
%   Integral=(h/2)*(f);
%   end
%% Conclusiones del Problema 7
% Como se puede observar en la tabla, los valores  del codigo de Lathi se
% aproximan a los obtenidos del valor analítico. Sin embargo, los valores
% obtenidos con el codigo del trapecio compuesto si difieren bastante de
% los obtenidos en el metodo analítico. Por lo que podemos concluir que el
% metodo de Lathi son mas precisos que los obtenidos por el metodo del
% trapecio compuesto.
%% Referencias
% 
% [1] Lathi, B. (2005). Linear systems and signals, second edition. Oxford University Press
%
% [2] http://obbycc.scienceontheweb.net/Practices/practica8.PDF
