 %Ejercicio 1.2.2
    %Señal x(t)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(t);
    plot(t,x(t));
    xlabel('t');
    ylabel('x(t)');
    axis([-5 3 -1 5]);
    grid on;
    
    %Inciso a) Señal x(t-4)
     
    t=[-10:0.0001:10];
    x(t-4);
    plot(t,x(t-4));
    xlabel('t');
    ylabel('x(t-4)');
    axis([-1 7 -1 5]);
    grid on;
    
    %Inciso b) Señal x(t/1.5)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(t/1.5);
    plot(t,x(t/1.5));
    xlabel('t');
    ylabel('x(t/1.5)');
    axis([-7 4 -1 5]);
    grid on;
    
    %Inciso c) Señal x(-t)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(-t);
    plot(t,x(-t));
    xlabel('t');
    ylabel('x(-t)');
    axis([-3 5 -1 5]);
    grid on;
    
    %Inciso d) Señal x(2t-4)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(2*t-4);
    plot(t,x(2*t-4));
    xlabel('t');
    ylabel('x(2t-4)');
    axis([-1 4 -1 5]);
    grid on;
    
    %Inciso e) Señal x(2-t)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(2-t);
    plot(t,x(2-t));
    xlabel('t');
    ylabel('x(2-t)');
    axis([-0.5 6.5 -1 5]);
    grid on;
    
    