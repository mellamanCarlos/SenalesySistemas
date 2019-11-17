function fourier2016a(a,b,xi,t0)
% a coeficientes de las derivadas de la salida menor a mayor [a_0, ..., a_n]
% b coeficientes de las derivadas de la entrada menor a mayor [b_0, ..., b_m]
% xi función de entrada en terminos de la variable simbolica t previamente
% declarada en el command window
% t0 tiempo final para graficar la solucion, la derivada, y la segunda 
% derivada 
% ejemplo: resolver y^(2)+2y^(1)+2y=x^(1)+2x con y^(1)(0)=0
% y(0)=0, x(0)=0, x(t)=exp(-t)u(t), para 5 segundos, se resuleve como
% syms t
% fourier2016a([2 2 1],[2 1],exp(-t)*heaviside(t),5)
close all
tam=size(a);
tami=size(b);
syms y(t) Y(w) x(t) X(w) Yy fp;
syms edd edi 
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*(j*w)^(i-1)*Y(w);
end

for i=1:tami(2)
   edi=edi+b(i)*(j*w)^(i-1)*X(w);  
end
mensaje('APLICAMOS TRANSFORMADA DE FOURIER')

pretty(edd)
disp('=')
pretty(edi)

mensaje('SUBSTITUIMOS LA TRANSFORMADA DE LA ENTRADA')

edi=subs(edi,X(w), fourier(xi));
pretty(edd)
disp('=')
pretty(edi)

mensaje('DESPEJAMOS Y(w)')

edd=collect(edd,Y(w));
edd=subs(edd,Y(w),Yy);
eq1=edd==edi;
disp('Y(w)=')
edd=solve(eq1, Yy);
pretty(edd)

%%% Para versiones superiores a 2016
mensaje('DESARROLLAMOS LAS FRACCIONES PARCIALES DE Y(w)')
disp('Y(w)=')
pretty(partfrac(edd))
%%%% Si se ejecuta en 2015 o menor comentar las 3 lineas anteriores
 
mensaje('Aplicamos transformada inversa, asi la solución es')
disp('y(t)=')
y(t)=ifourier(edd,t);
pretty(y(t))

figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])
axes1 = axes('Parent',hFig,'FontWeight','bold','FontSize',16);
tiempo=0:0.01:t0;
fplot(xi,[0, t0],'b','LineWidth',2)
hold on
fplot(y,[0,t0],'r','LineWidth',2)
legend('Entrada x(t)','Salida y(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Entrada y Respuesta del sistema','FontWeight','bold','FontSize',16)
grid on
end

function mensaje(texto)
disp( ' ')
disp(texto)
disp( ' ')
end