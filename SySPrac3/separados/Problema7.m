syms t;
f=input("Introduce la funci�n a la que se le va a calcular la potencia: ");
T=input("Introduce el periodo de la se�al: ");
potencia=@(f) (1/T)*int(f.^2,t,(-T/2),(T/2));
potencia(f);
fprintf('\n La potencia de la funci�n es: %f', potencia(f));
fprintf('\n');


% Problema 1.1.4
    %Encuentre la potencia de la se�al peri�dica x (t) que se muestra en la 
    %figura P1.1-4. Encuentre tambi�n las potencias y los valores rms de:
    %a. -x(t)
    %b. 2x(t)
    %c. cx(t)
    t=[-2:0.01:2];
    x=@(t) ((t.^3).*((t>=-2)&(t<=2)));
    x(t);
    plot(t,x(t));
    xlabel('t');
    ylabel('x(t)');
    grid on;
    axis([-2 2 -8 8]); 
    
    %Potencia y valor rms de la se�al original
    syms t;
    x_original=t.^3;
    potencia=@(x_original) (1/4)*int(x_original.^2,t,(-4/2),(4/2));
    valor_potencia=potencia(x_original);
    valor_rms=sqrt(valor_potencia);
    fprintf('\n La potencia de la funci�n x(t) es: %f', valor_potencia);
    fprintf('\n');
    
    fprintf('\n El valor rms de la funci�n x(t) es: %f', valor_rms);
    fprintf('\n');
    
    %Potencia y valor rms de -x(t)
    syms t;
    x_original=t.^3;
    x_cambiada=-(x_original);
    potencia=@(x_cambiada) (1/4)*int(x_cambiada.^2,t,(-4/2),(4/2));
    valor_potencia=potencia(x_cambiada);
    valor_rms=sqrt(valor_potencia);
    fprintf('\n La potencia de la funci�n -x(t) es: %f', valor_potencia);
    fprintf('\n');
    
    fprintf('\n El valor rms de la funci�n -x(t) es: %f', valor_rms);
    fprintf('\n');
    
    
    %Potencia y valor rms de 2x(t)
    syms t;
    x_original=t.^3;
    x_cambiada= 2.*(x_original);
    potencia=@(x_cambiada) (1/4)*int(x_cambiada.^2,t,(-4/2),(4/2));
    valor_potencia=potencia(x_cambiada);
    valor_rms=sqrt(valor_potencia);
    fprintf('\n La potencia de la funci�n 2x(t) es: %f', valor_potencia);
    fprintf('\n');
    
    fprintf('\n El valor rms de la funci�n 2x(t) es: %f', valor_rms);
    fprintf('\n');
    
    %Potencia y valor rms de cx(t)
    syms t c;
    x_original=t.^3;
    x_cambiada= c.*(x_original);
    potencia=@(x_cambiada) (1/4)*int(x_cambiada.^2,t,(-4/2),(4/2));
    valor_potencia=potencia(x_cambiada);
    valor_rms=sqrt(valor_potencia);
    fprintf('\n La potencia de la funci�n cx(t) es: %s', valor_potencia);
    fprintf('\n');
    
    fprintf('\n El valor rms de la funci�n cx(t) es: %s', valor_rms);
    fprintf('\n');
    