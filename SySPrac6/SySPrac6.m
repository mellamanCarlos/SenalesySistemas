%% Práctica 6: Sistemas diferenciales
%
%
% *Autores:*
%
% * Argaez Herrera Antonia Margarita
% * Leguizamo Lara Daniela Denisse
% * Rojas Solis Juan Carlos
% 
% *Grupo: 2TV1*
%
% *Profesor:*
%
% Dr. Rafael Martínez Martínez
%% Desarrollo
% Para sistemas diferenciales realiza un programa con las siguientes
% características
% 
% # Muestra la función de transferencia del sistema
% # Muestra la respuesta al impulso (simbólico, gráfica)
% # Muestra la respuesta a entrada cero (simbólico, gráfica)
% # Muestra la respuesta a estado cero (simbólico, gráfica)
% # Muestra la respuesta total (simbólico, gráfica)
% # La respuesta total al escalón con condiciones iniciales 0 (simbólico, gráfica) 
% # Usando subplot, despliega una figura con 5 gráficas
% 
% Observa que los entregables pueden resolverse (solo la función de 
% transferencia) con llamadas a las funciones
% presentadas en esta publicación
%
% Nota: Ejecuta los ejemplos descritos dentro de los comentarios de cada
% código para que observes el uso de estos
%
% Se entrega una publicación en html de tu desarrollo y se probará para un
% problema específico. 
% 
%% Ejercicio 1
% Para esta practica vamos a ocupar la siguiente ecuación diferencial, con
% su respectiva entrada y condiciones iniciales.
%
% $$\ddot{y}(t)+ \dot{y}(t)+ y(t)=x(t),\;\;y(0)=1,\;\dot{y}(0)=-1,\;\;x(t)=e^{-t}u(t)  $$
%
% NOTA: Para esta función, los coeficientes deben de ponerse de mayor a
% menor, tanto las salidas como las entradas
%
% El código de la función mitrans se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
mitrans([1 1 1],[1])
%
%% Ejercicio 2
% El código de la función fun2 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
fun2([1 1 1],[1],10)
%
%% Ejercicio 3
% El código de la función fun3 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
fun3([1 1 1],[1],[1,-1],10)
%
%% Ejercicio 4
% El código de la función fun4 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
fun4([1 1 1],[1],exp(-t),10)
%
%% Ejercicio 5
%
%
%
%% Ejercicio 6
%
%
%
%% Ejercicio 7
%
%
%