function mitrans1(a,b)
% a coeficientes de las derivadas de la salida mayor a menor [a_n, ..., a_0]
% b coeficientes de las derivadas de la entrada mayor a menor [b_m, ..., b_0]
disp('H(S) =')
tf(b,a)
end