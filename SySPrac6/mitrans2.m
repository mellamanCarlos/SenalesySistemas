function mitrans2(a,b)
% a coeficientes de las derivadas de la salida menor a mayor [a_0, ..., a_n]
% b coeficientes de las derivadas de la entrada menor a mayor [b_0, ..., b_m]
close all
tam=size(a);
tami=size(b);
syms y(t) Y(s) x(t) X(s) Yy fp;
syms edd edi 
edd=0;
edi=0;
edi2=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*X(s);
end

for i=1:tami(2)
   edi2=edi2+b(i)*s^(i-1);
end

mensaje('APLICAMOS TRANSFORMADA DE LAPLACE')

pretty(edd)
disp('=')
pretty(edi)



mensaje('DESPEJAMOS H(s)')

edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi2;
disp('H(s)=')
edd=solve(eq1, Yy);
pretty(simplify(edd))

end

function mensaje(texto)
disp( ' ')
disp(texto)
disp( ' ')
end