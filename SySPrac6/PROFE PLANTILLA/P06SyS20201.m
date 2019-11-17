%% Práctica 6:  Sistemas diferenciales 
%% Nota
% Se tiene que
% MATLAB presenta una definición del escalón unitario |heaviside(t)|, donde 
% |heaviside(0)=0.5|, para versiones mayores o iguales a 2016 esto puede
% configurarse al valor que se quiera, en nuestro caso queremos 
% |heaviside(0)=1|, esto se logra ejecutando la siguiente instrucción 
sympref('HeavisideAtOrigin', 1);
%% 
% de no ser posible establecer la configuración se tiene que tener en
% cuenta la definición de MATLAB.
%% Sistemas diferenciales (Transformada de Fourier) 
% Se utiliza el toolbox con herramientas de matemáticas símbolicas, para
% generar un programa que resuelve sistemas diferenciales de orden n
% mediante transformada de Fourier, el programa despliega: paso por paso 
% la metodología de solución, la solución de la ecuación diferencial, 
% y la gráfica tanto de la señal de entrada como de la señal de salida. El 
% código programado es el siguiente
%
% <include>fourier2016a.m</include>
%
%%
% Entonces si se quiere resolver la ecuación diferencial
%%
% 
% $$\ddot{y}(t)+7\dot{y}(t)+10y(t)=u(t),\;\;y(0)=0,\;y'(0)=0$$
% 
%% 
% Se ejecutan las siguientes instrucciones, aquí es importante recordar 
% que transformada de Fourier solo resuelve ecuaciones diferenciales 
% donde las condiciones iniciales son nulas.
%
syms t
fourier2016a([10 7 1],[1],heaviside(t),10)
%% 
% Se observa que la expresión resultante no esta totalmente simplificada,
% posiblemente con algunas modificaciones de las instrucciones el resultado
% pueda desplegarse de manera simplificada, también se observa que las
% fracciones parciales no estan totalmente desarrolladas, la manipulación 
% de símbolos en MATLAB no es lo suficientemente robusta, pero es buena. 
% Ahora observemos el resultado que se ha optenido en el siguiente
% <http://www.mateyasi.org/transformada-de-fourier-continua.html enlace> 
%
%%
% 
% $$y(t)=\frac{1}{10}u(t)-\frac{1}{6}e^{-2t}u(t)+\frac{1}{15}e^{-5t}u(t)$$
% 
%% 
% En la gráfica se puede observar consistencia, pues observamos que cuando 
% $t\to\infty$ el resultado tiende a $0.1$
%% Sistemas diferenciales (Transformada de Laplace) 
% Se utiliza el toolbox con herramientas de matemáticas símbolicas, para
% generar un programa que resuelve sistemas diferenciales de orden n
% mediante transformada de Laplace, y condiciones iniciales en 0 por la
% izquierda (cero menos) el programa despliega: paso por paso 
% la metodología de solución, la solución de la ecuación diferencial, 
% y la gráfica tanto de la señal de entrada como de la señal de salida 
% y una gráfica de la primera  y segunda derivada de la salida. El
% código programado es el siguiente
%
% <include>laplace2016a.m</include>
%
%%
% Entonces si se quiere resolver la ecuación diferencial
%%
% 
% $$\ddot{y}(t)+7\dot{y}(t)+10y(t)=u(t),\;\;y(0)=0,\;y'(0)=0$$
% 
%% 
% Se ejecutan las siguientes instrucciones,
%
syms t
laplace2016a([10 7 1],[1],[0,0],heaviside(t),10)
%% 
% Se observa que la expresión resultante esta totalmente simplificada,
% posiblemente por que es este caso no hay manipulaciópn de deltas de Dirac,
% es general la manipulación de
% símbolos en MATLAB no es lo suficientemente robusta, pero es buena. 
% Ahora observemos el resultado que se ha optenido en el siguiente
% <http://www.mateyasi.org/transformada-de-fourier-continua.html enlace> 
%
%%
% 
% $$y(t)=\frac{1}{10}u(t)-\frac{1}{6}e^{-2t}u(t)+\frac{1}{15}e^{-5t}u(t)$$
% 
%% 
% Así se lográ observar que el resultado es identico
%% Entregables
% Para sistemas diferenciales realiza un programa con las siguientes
% características
% 
% # Muestra la función de transferencia del sistema
% # Muestra la respuesta al impulso (simbólico, gráfica)
% # Muestra la respuesta a entrada cero (simbólico, gráfica)
% # Muestra la respuesta a estado cero (simbólico, gráfica)
% # Muestra la respuesta total (simbólico, gráfica)
% # La respuesta total al escalón con condiciones iniciales 0 (simbólico, gráfica) 
% # Usando subplot, depliega una figura con 5 gráficas
% 
% Observa que los entregables pueden resolverse (solvo la función de 
% transferencia) con llamadas a la funciones
% presentadas en esta publicación
%
% Nota: Ejecuta los ejemplos descritos dentro de los comentarios de cada
% código para que observes el uso de estos
%
% Se entrega una publicación en html de tu desarrollo y se probará para un
% problema específico. 
% 
% El código de esta publicación lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>

