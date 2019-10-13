function [Integral]=Trapecio(funcion,a,b,trapecios)
 h=(b-a)/trapecios;
 f=0;
 for t=1:trapecios-1
     x=a+h*t;
     f=f+eval(funcion);
 end
 f=2*f;
 x=a; 
 f=f+eval(funcion); 
 x=b; 
 f=f+eval(funcion);
 Integral=(h/2)*(f);
end