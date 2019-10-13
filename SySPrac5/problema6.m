function problema6

clear all;
close all;

A=3;
g=@(t) 2.*A.*t.*(t>=-1/2 & t<=1/2);
h=@(t) 2.*A.*(1-t).*(t>1/2 & t<=3/2);
x=@(t) g(t)+h(t);
t = linspace(-1/2, 3/2,1000);
sumterms = zeros(16,length(t)); 
sumterms(1,:) = 0;
for n = 1:size(sumterms,1)-1;
    sumterms(n+1,:) = (8.*A)./(n.^2.*pi.^2).*sin(n.*pi./2).*sin(n.*pi.*t);
end

x_N = cumsum(sumterms); 
figure(1); 
clf; 
ind = 0;

for N = [0,1:2:size(sumterms, 1)-1],
    ind = ind+1;
    subplot (3,3,ind);
    plot(t,x_N(N+1,:),'k',t,x(t), 'k--');
    axis([-1/2 3/2 -4 4]);
    xlabel('t'); 
    ylabel(['x_{',num2str(N),'} (t)']);
end

end