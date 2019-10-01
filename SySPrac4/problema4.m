function problema4()
hold on
syms t
t1=-4:0.01:-2;
t2=-2:0.01:-1;
t3=-1:0.01:0;
t4=0:0.01:1;
t5=1:0.01:2;
t6=2:0.01:3;
t7=3:0.01:4;
subplot (2, 1, 2)
plot(t1,-t1-4)
hold on
plot(t2,t2)
plot(t3,3*t3+2)
plot(t4,t4+2)
plot(t5,-3*t5+6)
plot(t6,-t6+2)
plot(t7,t7-4)
grid on
end