function problema3()
hold on
syms t
t1=-4:0.01:-3;
t2=-3:0.01:-1;
t3=-1:0.01:0;
t4=0:0.01:1;
t5=1:0.01:3;
t6=3:0.01:4;
subplot (2, 1, 2)
plot(t1,-t1-4)
hold on
plot(t2,t2+2)
plot(t3,3*t3+4)
plot(t4,-3*t4+4)
plot(t5,-t5+2)
plot(t6,t6-4)
grid on
end