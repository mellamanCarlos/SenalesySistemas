function [f]=Trapi(funcion,a,b,trapecios)
    h=(b-a)/trapecios;
 f=0;
 for k=1:trapecios-1
 x=a+h*k;
 f=f+eval(funcion);
 end
 f=2*f;
 x=a; f=f+eval(funcion); 
 x=b; 
 f=f+eval(funcion);
 f=(h/2)*(f);
end