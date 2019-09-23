clear all;
close all;

%Problema M1.1
    %Ejercicio 1
    f=@(t) (exp(-t).*cos(2*pi*t));
    t=0;
    f(t);
    fprintf('\n El resultado de la evaluacion de la funcion f es: %f', f(t));
    fprintf('\n');
    
    %Ejercicio 2
    f=@(t) (exp(-t).*cos(2*pi*t));
    t=[-2:2];
    f(t);
    fprintf('\n El resultado de la evaluacion de la funcion f es: %f', f(t));
    fprintf('\n');
    plot(t,f(t));
    xlabel('t');
    ylabel('f(t)');
    grid on;

    %Ejercicio 3
    f=@(t) (exp(-t).*cos(2*pi*t));
    t=[-2:0.01:2];
    f(t);
    fprintf('\n El resultado de la evaluacion de la funcion f es: %f', f(t));
    fprintf('\n');
    plot(t,f(t));
    xlabel('t');
    ylabel('f(t)');
    grid on;
   
    
%Problema M1.2
    %Ejercicio 1
    u=@(t) (t>=0);
    t=[-2:2];
    u(t);
    plot(t,u(t));
    xlabel('t');
    ylabel('u(t)');
    grid on;
    
    %Ejercicio 2
    u=@(t) (t>=0);
    t=[-2:0.01:2];
    u(t);
    plot(t,u(t));
    xlabel('t');
    ylabel('u(t)');
    grid on;
    axis([-2 2 -0.1 1.1]);
    
    %Ejercicio 3
    p=@(t) ((t>=0)&(t<1));
    t=[-1:0.01:2];
    p(t);
    plot(t,p(t));
    xlabel('t');
    ylabel('p(t)= u(t)-u(t-1)');
    grid on;
    axis([-1 2 -0.1 1.1]);

%Problema M1.3
    %Ejercicio 1
    g=@(t) (exp(-t).*cos(2*pi*t).*(t>=0));
    t=[-2:0.01:2];
    g(2*t+1);
    plot(t,g(2*t+1));
    xlabel('t');
    ylabel('g(2*t+1)');
    grid on;
    
    %Ejercicio 2
    g=@(t) (exp(-t).*cos(2*pi*t).*(t>=0));
    t=[-2:0.01:2];
    g(-t+1);
    plot(t,g(-t+1));
    xlabel('t');
    ylabel('g(-t+1)');
    grid on;
    
    %Ejercicio 3
    g=@(t) (exp(-t).*cos(2*pi*t).*(t>=0));
    t=[-2:0.01:2];
    h=g(2*t+1) + g(-t+1);
    plot(t,h);
    xlabel('t');
    ylabel('h(t)');
    grid on;

%Problema M1.4
    %Ejercicio 1
    x=@(t) (exp(-t).*((t>=0)&(t<1)));
    t=[0:0.01:1];
    E_x=sum(x(t).*x(t)*0.01)
    
    %Ejercicio 2
    x=@(t) (exp(-t).*((t>=0)&(t<1)));
    t=[0:0.001:1];
    E_x=sum(x(t).*x(t)*0.001)
    
    %Ejercicio 3
    x_cuadrada=@(t) (exp(-2*t).*((t>=0)&(t<1)));
    E_x=quad(x_cuadrada,0,1)
    
    %Ejercicio 4
    g_cuadrada=@(t) (exp(-2*t).*(cos(2*pi*t).^2).*(t>=0));
    t=[0:0.001:100];
    E_g=sum(g_cuadrada(t)*0.001)
    
    %Ejercicio 5
    g_cuadrada=@(t) (exp(-2*t).*(cos(2*pi*t).^2).*(t>=0));
    E_g=quad(g_cuadrada,0,100)
   
    %Ejercicio 6
    g=@(t) (exp(-t).*cos(2*pi*t).*(t>=0));
    t=[-2:0.001:2];
    h_cuadrada=(g(2*t+1)+g(-t+1)).^2;
    E_h=sum(h_cuadrada*0.001)
    
    %Ejercicio 7
    g=@(t) (exp(-t).*cos(2*pi*t).*(t>=0));
    h_cuadrada=@(t) (g(2*t+1)+g(-t+1)).^2;
    E_h=quad(h_cuadrada,-2,2)
    
 