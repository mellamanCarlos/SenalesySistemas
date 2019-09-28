function problema1()
hold on
syms t
t1=0:0.01:1;
t2=1:0.01:2;
t3=2:0.01:3;
subplot (2, 1, 2)
plot(t1,(-t1.^2/2) + t1)
hold on
plot(t2,t2.^2 -3*t2 + 5/2)
plot(t3,-t3.^2/2 + 2*t3 -3/2)
grid on
end