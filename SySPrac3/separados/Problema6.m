clear all;
close all;
syms t;
f=input("Introduce la función a la que se le va a calcular la energia: ");
a=input("Introduce el limite de integración inferior: ");
b=input("Introduce el limite de integración superior: ");
energia=@(f) int(f.^2,t,a,b);
energia(f);
fprintf('\n La energia de la función es: %f', energia(f));
fprintf('\n');

% Problema 1.1.3
    % Inciso a)
    % Instrucciones del problema:
    % Encuentre las energías del par de señales x (t) e y (t) representadas en las 
    % figuras P1.1-3a y P1.1-3b. Dibuja y encuentra las energías de las 
    % señales x (t) + y (t) yx (t) - y (t).
    
        %Primer par de funciones
            %Calculando la energia de x(t)
            t=[-4:0.01:4];
            x=@(t) ((1).*((t>=0)&(t<=2)));
            x(t);
            x_cuadrada=@(t) ((1).*((t>=0)&(t<=2))).^2;
            energia_x = integral(x_cuadrada,0,2);
            fprintf('\n La energia de la función x(t) es: %f', energia_x);
            fprintf('\n');
            plot(t,x(t));
            xlabel('t');
            ylabel('x(t)');
            grid on;
            axis([-1 3 -1 2]);

            %Calculando la energia de y(t)
            t=[-4:0.01:4];
            y=@(t) ((1).*((t>=0)&(t<=1))) + ((-1).*((t>=1)&(t<=2)));
            y(t);
            y_cuadrada=@(t) ( ((1).*((t>=0)&(t<=1))) + ((-1).*((t>1)&(t<=2))) ).^2;
            energia_y = integral(y_cuadrada,0,2);
            fprintf('\n La energia de la función y(t) es: %f', energia_y);
            fprintf('\n');
            plot(t,y(t));
            xlabel('t');
            ylabel('y(t)');
            grid on;
            axis([-1 3 -2 2]);
 
            %Calculando la energia de x(t) + y(t)
            t=[-10:0.01:10];
            f=@(t) ((1).*((t>=0)&(t<=2))) + ((1).*((t>=0)&(t<=1))) + ((-1).*((t>=1)&(t<=2))) ;
            f(t);
            f_cuadrada=@(t) ( ((1).*((t>=0)&(t<=2))) + ((1).*((t>=0)&(t<=1))) + ((-1).*((t>=1)&(t<=2))) ).^2 ;
            energia_suma = integral(f_cuadrada,-Inf,Inf);
            fprintf('\n La energia de la función x(t) + y(t) es: %f', energia_suma);
            fprintf('\n');
            plot(t,f(t));
            xlabel('t');
            ylabel('x(t) + y(t)');
            grid on;
            axis([-0.5 1.5 -0.5 2.5]);
            
            
            %Calculando la energia de x(t) - y(t)
            t=[-10:0.001:10];
            f=@(t) ((1).*((t>=0)&(t<=2))) - ( ((1).*((t>=0)&(t<=1))) + ((-1).*((t>=1)&(t<=2))) );
            f(t);
            f_cuadrada=@(t) ( ((1).*((t>=0)&(t<=2))) - ( ((1).*((t>=0)&(t<=1))) + ((-1).*((t>=1)&(t<=2))) ) ).^2 ;
            energia_resta = integral(f_cuadrada,-Inf,Inf);
            fprintf('\n La energia de la función x(t) - y(t) es: %f', energia_resta);
            fprintf('\n');
            plot(t,f(t));
            xlabel('t');
            ylabel('x(t) - y(t)');
            grid on;
            axis([0.8 2.2 -0.5 2.5]);
            
            
        %Segundo par de funciones
            %Calculando la energia de x(t)
            t=[-10:0.01:10];
            x=@(t) ((sin(t)).*((t>=0)&(t<=2*pi)));
            x(t);
            x_cuadrada=@(t) ((sin(t)).*((t>=0)&(t<=2*pi))).^2;
            energia_x = integral(x_cuadrada,0,2*pi);
            fprintf('\n La energia de la función x(t) es: %f', energia_x);
            fprintf('\n');
            plot(t,x(t));
            xlabel('t');
            ylabel('x(t)');
            grid on;
            axis([0 2*pi -2 2]);

            %Calculando la energia de y(t)
            t=[-10:0.01:10];
            y=@(t) ((1).*((t>=0)&(t<=2*pi)));
            y(t);
            y_cuadrada=@(t) ((1).*((t>=0)&(t<=2*pi))).^2;
            energia_y = integral(y_cuadrada,0,2*pi);
            fprintf('\n La energia de la función y(t) es: %f', energia_y);
            fprintf('\n');
            plot(t,y(t));
            xlabel('t');
            ylabel('y(t)');
            grid on;
            axis([-1 2.5*pi -2 2]);
            
            %Calculando la energia de x(t) + y(t)
            t=[-10:0.01:10];
            f=@(t) ((sin(t)).*((t>=0)&(t<=2*pi))) +  ((1).*((t>=0)&(t<=2*pi)));
            f(t);
            f_cuadrada=@(t) ( ((sin(t)).*((t>=0)&(t<=2*pi))) +  ((1).*((t>=0)&(t<=2*pi))) ).^2 ;
            energia_suma = integral(f_cuadrada,-Inf,Inf);
            fprintf('\n La energia de la función x(t) + y(t) es: %f', energia_suma);
            fprintf('\n');
            plot(t,f(t));
            xlabel('t');
            ylabel('x(t) + y(t)');
            grid on;
            axis([-1 7 -0.5 2.5]);
           
            %Calculando la energia de x(t) - y(t)
            t=[-10:0.01:10];
            f=@(t) ((sin(t)).*((t>=0)&(t<=2*pi))) -  ((1).*((t>=0)&(t<=2*pi)));
            f(t);
            f_cuadrada=@(t) ( ((sin(t)).*((t>=0)&(t<=2*pi))) -  ((1).*((t>=0)&(t<=2*pi))) ).^2 ;
            energia_resta = integral(f_cuadrada,-Inf,Inf);
            fprintf('\n La energia de la función x(t) - y(t) es: %f', energia_resta);
            fprintf('\n');
            plot(t,f(t));
            xlabel('t');
            ylabel('x(t) - y(t)');
            grid on;
            axis([-1 7 -2.5 0.5]);
        
    %Inciso b)
    %Tercer par de funciones
            %Calculando la energia de x(t)
            t=[-10:0.01:10];
            x=@(t) ((sin(t)).*((t>=0)&(t<=pi)));
            x(t);
            x_cuadrada=@(t) ((sin(t)).*((t>=0)&(t<=pi))).^2;
            energia_x = integral(x_cuadrada,0,pi);
            fprintf('\n La energia de la función x(t) es: %f', energia_x);
            fprintf('\n');
            plot(t,x(t));
            xlabel('t');
            ylabel('x(t)');
            grid on;
            axis([-0.5 3.5 -0.5 1.5]);

            %Calculando la energia de y(t)
            t=[-10:0.01:10];
            y=@(t) ((1).*((t>=0)&(t<=pi)));
            y(t);
            y_cuadrada=@(t) ((1).*((t>=0)&(t<=pi))).^2;
            energia_y = integral(y_cuadrada,0,pi);
            fprintf('\n La energia de la función x(t) es: %f', energia_y);
            fprintf('\n');
            plot(t,y(t));
            xlabel('t');
            ylabel('y(t)');
            grid on;
            axis([-0.5 3.5 -0.5 1.5]);
            
            %Calculando la energia de x(t) + y(t)
            t=[-10:0.01:10];
            f=@(t) ((sin(t)).*((t>=0)&(t<=pi))) +  ((1).*((t>=0)&(t<=pi)));
            f(t);
            f_cuadrada=@(t) ( ((sin(t)).*((t>=0)&(t<=pi))) +  ((1).*((t>=0)&(t<=pi))) ).^2 ;
            energia_suma = integral(f_cuadrada,-Inf,Inf);
            fprintf('\n La energia de la función x(t) + y(t) es: %f', energia_suma);
            fprintf('\n');
            plot(t,f(t));
            xlabel('t');
            ylabel('x(t) + y(t)');
            grid on;
            axis([-1 4 -0.5 2.5]);
            
            %Calculando la energia de x(t) - y(t)
            t=[-10:0.01:10];
            f=@(t) ((sin(t)).*((t>=0)&(t<=pi))) -  ((1).*((t>=0)&(t<=pi)));
            f(t);
            f_cuadrada=@(t) ( ((sin(t)).*((t>=0)&(t<=pi))) -  ((1).*((t>=0)&(t<=pi))) ).^2 ;
            energia_resta = integral(f_cuadrada,-Inf,Inf);
            fprintf('\n La energia de la función x(t) - y(t) es: %f', energia_resta);
            fprintf('\n');
            plot(t,f(t));
            xlabel('t');
            ylabel('x(t) - y(t)');
            grid on;
            axis([-0.5 3.5 -1.5 0.5]);
    
    