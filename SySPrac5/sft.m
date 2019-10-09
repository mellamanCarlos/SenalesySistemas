function sft(t0,tf,a0,an,bn,f,armo,a,b)
% t0 el valor inicial para calcular la serie
% tf el valor final donde calcular la serie
% an función de la fórmula an de la serie de fourier trigonometrica
% bn función de la fórmula bn de la serie de fourier trigonometrica
% f función original
% armo número de armonicos a utilizar en la gráfica
% a, b intevalo para realizar la grafica de la serie

w0=2*pi/(tf-t0);

sf=a0;
t=a:0.0001:b;

for n=1:armo
    sf=sf+an(n).*cos(n.*w0.*t)+bn(n).*sin(n.*w0.*t);
end
figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])
subplot(3,2,1)
plot(t,sf,'LineWidth',2)
grid on
legend('Serie de Fourier','Location','Best')
xlabel('t','FontWeight','bold','FontSize',16)

sf=a0;
t1=t0:0.0001:tf;

for n=1:armo
     sf=sf+an(n).*cos(n.*w0.*t1)+bn(n).*sin(n.*w0.*t1);
end

subplot(3,2,2)
plot(t1,f(t1),'r','LineWidth',2)
grid on
hold on
plot(t1,sf,'LineWidth',2)
legend('Función original','Serie de Fourier ','Location','Best')
xlabel('t','FontWeight','bold','FontSize',16)
nn=0:armo;
axis auto

subplot(3,2,4)
e=f(t1)-sf;
plot(t1,e,'LineWidth',2)
title('Error','FontWeight','bold','FontSize',16)
xlabel('t','FontWeight','bold','FontSize',16)
axis auto
grid on

subplot(3,2,6)
e=f(t1)-sf;
area(t1,e.^2)
legend('Energia del error','Location','Best')
xlabel('t','FontWeight','bold','FontSize',16)
axis auto
grid on

absan=zeros(1,length(nn));
absbn=zeros(1,length(nn));
cont=1;

for i =0:armo
    if i==0
        absan(cont)=a0;
        cont=cont+1;
    else
    absan(cont)=an(i);
    absbn(cont)=bn(i);
    cont=cont+1;
    end
end


subplot(3,2,3)
stem((w0*nn),absan,'LineWidth',2)
title('a_n ','FontWeight','bold','FontSize',16)
xlabel('n\omega_0','FontWeight','bold','FontSize',16)
grid on

subplot(3,2,5) % % 
stem(w0*nn,absbn,'LineWidth',2) % % 
title('bn','FontWeight','bold','FontSize',16) % % 
xlabel('n\omega_0','FontWeight','bold','FontSize',16)
grid on

end