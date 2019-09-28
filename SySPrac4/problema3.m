function problema3()
hold on
syms t
t1=1:0.01:2;
t2=2:0.01:3;
t3=3:0.01:4;
t4=4:0.01:5;
subplot (2, 1, 2)
plot(t1,t1.^2/2 -t1 + 1/2)
hold on
plot(t2,t2-3/2)
plot(t3,-t3.^2/2+3*t3-3)
plot(t4,-t4+5)
grid on
end