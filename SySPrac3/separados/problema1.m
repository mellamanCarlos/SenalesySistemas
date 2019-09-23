clear all;
close all;
w=input("Introduce el valor de w: ");
a=input("Introduce el valor de a: ");
fun1=@(w,a) (a)./(a^(2)+w.^(2));
resultadofun1 = fun1(w,a);

fprintf('\n El resultado de la evaluacion de la funcion fun1 es: %f', resultadofun1);
fprintf('\n');