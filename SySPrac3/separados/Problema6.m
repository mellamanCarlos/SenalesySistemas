clear all;
close all;
syms t;
f=input("Introduce la función a la que se le va a calcular la energia: ");
a=input("Introduce el limite de integración inferior: ");
b=input("Introduce el limite de integración superior: ");
energia=@(f) int(f.^2,t,a,b);
resultadoenergia=energia(f);
fprintf('\n La energia de la función es: %f', resultadoenergia);
fprintf('\n');

%Problema 1.1.3
    %Inciso a)
        %Primer par de funciones
            %Calculando la energia de x(t)
            syms t;
            x=1;
            energia=@(x) int(x.^2,t,0,2);
            resultadoenergiax=energia(x);
            fprintf('\n La energia de la función x(t) es: %f', resultadoenergiax);
            fprintf('\n');

            %Calculando la energia de y(t)
            syms t;
            y1=1;
            y2=-1;
            energia=@(y1,y2) int(y1.^2,t,0,1) + int(y2.^2,t,1,2);
            resultadoenergiay=energia(y1,y2);
            fprintf('\n La energia de la función y(t) es: %f', resultadoenergiay);
            fprintf('\n');
            
            %Calculando la energi a de x(t) + y(t)
            f=@(t) (((1).*((t>=0)&(t<=2))) + ((1).*((t>=0)&(t<=1))) + ((-1).*((t>=1)&(t<=2)))).^2;
            energia_suma = integral(f,-Inf,Inf);
            fprintf('\n La energia de la función x(t) + y(t) es: %f', energia_suma);
            fprintf('\n');
            
            %Calculando la energia de x(t) - y(t)
            f=@(t) ( ((1).*((t>=0)&(t<=2))) - (((1).*((t>=0)&(t<=1))) + ((-1).*((t>1)&(t<=2)))) ).^2;
            energia_resta = integral(f,-Inf,Inf);
            fprintf('\n La energia de la función x(t) - y(t) es: %f', energia_resta);
            fprintf('\n');
            
            
        %Segundo par de funciones
            %Calculando la energia de x(t)
            syms t;
            x=sin(t);
            energia=@(x) int(x.^2,t,0,2*pi);
            resultadoenergiax=energia(x);
             fprintf('\n La energia de la función x(t) es: %f', resultadoenergiax);
            fprintf('\n');

            %Calculando la energia de y(t)
            syms t;
            y=1;
            energia=@(y) int(y.^2,t,0,2*pi);
            resultadoenergiay=energia(y);
            fprintf('\n La energia de la función y(t) es: %f', resultadoenergiay);
            fprintf('\n');
            
            %Calculando la energia de x(t) + y(t)
            f=@(t) ( ((sin(t)).*((t>=0)&(t<=2*pi))) + ((1).*((t>=0)&(t<=2*pi))) ).^2;
            energia_suma = integral(f,-Inf,Inf);
            fprintf('\n La energia de la función x(t) + y(t) es: %f', energia_suma);
            fprintf('\n');
            
            %Calculando la energia de x(t) - y(t)
            f=@(t) ( ((sin(t)).*((t>=0)&(t<=2*pi))) - ((1).*((t>=0)&(t<=2*pi))) ).^2;
            energia_resta = integral(f,-Inf,Inf);
            fprintf('\n La energia de la función x(t) - y(t) es: %f', energia_resta);
            fprintf('\n');
        
    %Inciso b)
    %Tercer par de funciones
            %Calculando la energia de x(t)
            syms t;
            x=sin(t);
            energia=@(x) int(x.^2,t,0,pi);
            resultadoenergiax=energia(x);
            fprintf('\n La energia de la función x(t) es: %f', resultadoenergiax);
            fprintf('\n');

            %Calculando la energia de y(t)
            syms t;
            y=1;
            energia=@(y) int(y.^2,t,0,pi);
            resultadoenergiay=energia(y);
            fprintf('\n La energia de la función y(t) es: %f', resultadoenergiay);
            fprintf('\n');
            
            %Calculando la energia de x(t) + y(t)
            f=@(t) ( ((sin(t)).*((t>=0)&(t<=pi))) + ((1).*((t>=0)&(t<=pi))) ).^2;
            energia_suma = integral(f,-Inf,Inf);
            fprintf('\n La energia de la función x(t) + y(t) es: %f', energia_suma);
            fprintf('\n');
            
            %Calculando la energia de x(t) - y(t)
            f=@(t) ( ((sin(t)).*((t>=0)&(t<=pi))) - ((1).*((t>=0)&(t<=pi))) ).^2;
            energia_resta = integral(f,-Inf,Inf);
            fprintf('\n La energia de la función x(t) + y(t) es: %f', energia_resta);
            fprintf('\n');
    
    