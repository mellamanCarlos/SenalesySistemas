clear all;
close all;
w=[-2:0.01:2];
a=1;
fun1=@(w,a) (a)./(a^(2)+w.^(2));
plot(w,fun1(w,a))
grid on;
xlabel('\omega');
ylabel('F(\omega)');
title('Gráfica de la señal F(\omega) vs \omega');
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

