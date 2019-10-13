function [Integral]=Trapi(funcion,a,b,trapecios)
funcion2=@(t) funcion;
h=(b-a)/trapecios;
S=feval(funcion2,a);
for t=1:trapecios-1
    x(t)=a+h*t;
    S=S+2*feval(funcion2,x(t));
end
S=S+feval(funcion2,b);
Integral=h*S/2
end