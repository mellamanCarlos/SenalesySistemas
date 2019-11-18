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
% Para esta practica vamos a ocupar la siguiente ecuación diferencial, con
% su respectiva entrada y condiciones iniciales.
%
% $$\ddot{y}(t)+ \dot{y}(t)+ y(t)=x(t),\;\;y(0)=1,\;\dot{y}(0)=-1,\;\;x(t)=e^{-t}u(t)  $$
%
%% Ejercicio 1
% *Función de transferencia del sistema*
%
% METODO 1
%
% NOTA: Para la función mitrans1 los coeficientes deben de ponerse de mayor a
% menor, tanto las salidas como las entradas
%
% El código de la función mitrans1 se puede encontrar en el siguiente 
% <https://carloscet1.github.io/SenalesySistemas/SySPrac6/mitrans1.m enlace>
%
mitrans1([1 1 1],[1])
%%
% METODO 2
%
% El código de la función mitrans2 se puede encontrar en el siguiente 
% <https://carloscet1.github.io/SenalesySistemas/SySPrac6/mitrans2.m enlace>
%
mitrans2([1 1 1],[1])
%% Ejercicio 2
% *Respuesta al impulso (simbólico, gráfica)*
%
% El código de la función fun2 se puede encontrar en el siguiente 
% <https://carloscet1.github.io/SenalesySistemas/SySPrac6/fun2.m enlace>
%
fun2([1 1 1],[1],10)
%% Ejercicio 3
% *Respuesta a entrada cero (simbólico, gráfica)*
%
% El código de la función fun3 se puede encontrar en el siguiente 
% <https://carloscet1.github.io/SenalesySistemas/SySPrac6/fun3.m enlace>
%
fun3([1 1 1],[1],[1,-1],10)
%% Ejercicio 4
% *Respuesta a estado cero (simbólico, gráfica)*
%
% El código de la función fun4 se puede encontrar en el siguiente 
% <https://carloscet1.github.io/SenalesySistemas/SySPrac6/fun4.m enlace>
%
syms t
fun4([1 1 1],[1],exp(-t),10)
%% Ejercicio 5
% *Respuesta total (simbólico, gráfica)*
%
% El código de la función fun5 se puede encontrar en el siguiente 
% <https://carloscet1.github.io/SenalesySistemas/SySPrac6/fun5.m enlace>
%
syms t
fun5([1 1 1],[1],exp(-t),[1,-1],10)
%% Ejercicio 6
% *Respuesta total al escalón con condiciones iniciales 0 (simbólico, gráfica)*
%
% El código de la función fun6 se puede encontrar en el siguiente 
% <https://carloscet1.github.io/SenalesySistemas/SySPrac6/fun6.m enlace>
%
sympref('HeavisideAtOrigin', 1);
syms t
fun6([1 1 1],[1],heaviside(t),[0,0],10)
%% Ejercicio 7
% *5 gráficas anteriores*
%
% El código de la función fun7 se puede encontrar en el siguiente 
% <https://carloscet1.github.io/SenalesySistemas/SySPrac6/fun7.m enlace>
%
syms t
fun7([1 1 1],[1],exp(-t),[1,-1],10)