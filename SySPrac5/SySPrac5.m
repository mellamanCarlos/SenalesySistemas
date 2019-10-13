%% Pr�ctica 5: Series de Fourier en tiempo continuo
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
% Dr. Rafael Mart�nez Mart�nez
%% Objetivos
% 
% * Realizar gr�ficas de series de Fourier exponenciales y trigonom�tricas
% en tiempo continuo
% * Manipulaci�n de instrucciones en MATLAB
% * Calculo n�merico de los coeficientes de Fourier
%
%% Introducci�n

%% Desarrollo
%
% Para el desarrollo se tienen que resolver cada uno de los siguientes
% problemas comenzando una nueva secci�n (para la publicaci�n) en cada uno de ellos.
%
% Para cada problema debes de realizar 
% 
% # Realizar el programa de la serie que se indica
% # Gr�fica de la serie de Fourier en un intervalo que muestre 5
% repeticiones
% # Gr�fica de la se�al y la serie de Fourier para 4 armonicos
% # Gr�fica del error
% # Gr�fica de la energ�a del error
% # Espectro de magnitud  para 4 armonicos
% # Espectro de fase para 4 armonicos
% # Todo lo anterior para 15 armonicos
%
%% Problema 1
%
% * *Ejemplo 6.1* Con serie  y espectro trigonometrico, no es
% necesario entregar el c�digo, solo la aplicaci�n al problema especifico,
% debe de indicar la funci�n y los valores de sus coeficientes (sin incluir
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
% necesario entregar el c�digo, solo la aplicaci�n al problema especifico,
% debe de indicar la funci�n y los valores de sus coeficientes (sin incluir
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
% necesario entregar el c�digo, solo la aplicaci�n al problema especifico,
% debe de indicar la funci�n y los valores de sus coeficientes (sin incluir
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
% necesario entregar el c�digo, solo la aplicaci�n al problema especifico,
% debe de indicar la funci�n y los valores de sus coeficientes (sin incluir
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
% gr�fica de f, error ni energ�a del error,  no es
% necesario entregar el c�digo, solo la aplicaci�n al problema especifico,
% debe de indicar la funci�n y los valores de sus coeficientes (sin incluir
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
% * Elabore un c�digo similar al COMPUTER EXAMPLE C6.2 que se encuentra al 
% final de la secci�n 6.2 de Lathi para el Ejempo 6.2 con los datos
% indicados anteriormente (no utilice inline)
%
problema6
%% Problema 7
%
% * Elabore un c�digo que implemente el algoritmo de trapecio compuesto
% para $n=15$, Utilice este c�digo para aproximar $D_0,...,D_4$ del ejemplo
% de la pr�ctica. Ahora implemente el c�digo COMPUTER EXAMPLE C6.4 que se
% encuentra al final de la secci�n 6.6 de Lathi, y calcule nuevamente los 
% coeficientes $D_0,...,D_4$ del ejemplo propuesto. Muestre una tabla
% que contenga los coeficientes mencionados calculados con los dos
% algoritmos y de forma exacta, �Qu� algortmo aproxima mejor a los
% coeficientes?, para esto compare los coeficientes con el valor absoluto de
% la resta. 
%
%% Referencias
% 
% [1] https://la.mathworks.com/matlabcentral/answers/94495-how-can-i-create-animated-gif-images-in-matlab
%
% [2] https://latex2png.com/
%
% [3] https://www.quora.com/How-do-I-add-a-GIF-image-using-HTML-code
%
%% Apendice
