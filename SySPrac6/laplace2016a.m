function laplace2016a(a,b,ciy,xi,t0)
% a coeficientes de las derivadas de la salida menor a mayor [a_0, ..., a_n]
% b coeficientes de las derivadas de la entrada menor a mayor [b_0, ..., b_m]
% ciy condiciones iniciales de la salida de  menor a mayor [y(0), y(0)^(n-1)]
% xi función de entrada en terminos de la variable simbolica t previamente
% declarada en el command window
% t0 tiempo final para graficar la solucion, la derivada, y la segunda 
% derivada 
% ejemplo: resolver y^(3)+y^(2)+2y^(1)+2y=3x^(2)-x^(1)+2x con y^(2)(0)=1 y^(1)=3
% y(0)=2, x(t)=exp(-t)cos(t)u(t), para 10 segundos, se resuleve como
% syms t
% laplace2016a([2 2 1 1],[2 -1 3],[2 3 1],exp(-t)*cos(t)*heaviside(t),10)
close all
tam=size(a);
tami=size(b);
syms y(t) Y(s) x(t) X(s) Yy fp;
syms edd edi 
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
   for k=1:i-1
       edd=edd-a(i)*(s^(i-1-k)*ciy(k));
   end
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*X(s);
   %for k=1:i-1
     %  edi=edi-b(i)*(s^(i-1-k)*cix(k));
   %end
end
mensaje('APLICAMOS TRANSFORMADA DE LAPLACE y subtituimos condiciones iniciales')

pretty(edd)
disp('=')
pretty(edi)

mensaje('SUBSTITUIMOS LA TRANSFORMADA DE LA ENTRADA')

edi=subs(edi,X(s), laplace(xi));
pretty(edd)
disp('=')
pretty(edi)

mensaje('DESPEJAMOS Y(s)')

edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;
disp('Y(s)=')
edd=solve(eq1, Yy);
pretty(simplify(edd))

%%% Para versiones superiores a 2016
mensaje('DESARROLLAMOS LAS FRACCIONES PARCIALES DE Y(s)')
disp('Y(s)=')
pretty(partfrac(edd))
%%%% Si se ejecuta en 2015 o menor comentar las 3 lineas anteriores

mensaje('Aplicamos transformada inversa, asi la solución es')
disp('y(t)=')
y(t)=ilaplace(edd);
pretty(y(t))

dy(t)=diff(y,t);
ddy(t)=diff(dy,t);
figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])
axes1 = axes('Parent',hFig,'FontWeight','bold','FontSize',16);
tiempo=0:0.01:t0;
subplot(2,1,1)
fplot(xi,[0, t0],'b','LineWidth',2)

hold on
fplot(y,[0,t0],'r','LineWidth',2)

legend('Entrada x(t)','Salida y(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Entrada y Respuesta del sistema','FontWeight','bold','FontSize',16)
grid on
subplot(2,1,2)
fplot(dy,[0,t0],'g','LineWidth',2)

hold on
title('Primera y segunda derivada de la salida','FontWeight','bold','FontSize',16)
fplot(ddy,[0,t0],'m','LineWidth',2)

legend('dy(t)/dt','d^2y(t)/d^2t','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
grid on
end

function mensaje(texto)
disp( ' ')
disp(texto)
disp( ' ')
end