%% Pr�ctica 6: Sistemas diferenciales
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
% Dr. Rafael Mart�nez Mart�nez
%% Desarrollo
% Para sistemas diferenciales realiza un programa con las siguientes
% caracter�sticas
% 
% # Muestra la funci�n de transferencia del sistema
% # Muestra la respuesta al impulso (simb�lico, gr�fica)
% # Muestra la respuesta a entrada cero (simb�lico, gr�fica)
% # Muestra la respuesta a estado cero (simb�lico, gr�fica)
% # Muestra la respuesta total (simb�lico, gr�fica)
% # La respuesta total al escal�n con condiciones iniciales 0 (simb�lico, gr�fica) 
% # Usando subplot, despliega una figura con 5 gr�ficas
% 
% Para esta practica vamos a ocupar la siguiente ecuaci�n diferencial, con
% su respectiva entrada y condiciones iniciales.
%
% $$\ddot{y}(t)+ \dot{y}(t)+ y(t)=x(t),\;\;y(0)=1,\;\dot{y}(0)=-1,\;\;x(t)=e^{-t}u(t)  $$
%
%% Ejercicio 1
% *Funci�n de transferencia del sistema*
%
% METODO 1
%
% NOTA: Para la funci�n mitrans1 los coeficientes deben de ponerse de mayor a
% menor, tanto las salidas como las entradas
%
% El c�digo de la funci�n mitrans1 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
mitrans1([1 1 1],[1])
%%
% METODO 2
%
% El c�digo de la funci�n mitrans2 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
mitrans2([1 1 1],[1])
%
%% Ejercicio 2
% *Respuesta al impulso (simb�lico, gr�fica)*
%
% El c�digo de la funci�n fun2 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
fun2([1 1 1],[1],10)
%
%% Ejercicio 3
% *Respuesta a entrada cero (simb�lico, gr�fica)*
%
% El c�digo de la funci�n fun3 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
fun3([1 1 1],[1],[1,-1],10)
%
%% Ejercicio 4
% *Respuesta a estado cero (simb�lico, gr�fica)*
%
% El c�digo de la funci�n fun4 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
syms t
fun4([1 1 1],[1],exp(-t),10)
%
%% Ejercicio 5
% *Respuesta total (simb�lico, gr�fica)*
%
% El c�digo de la funci�n fun5 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
syms t
fun5([1 1 1],[1],exp(-t),[1,-1],10)
%
%% Ejercicio 6
% *Respuesta total al escal�n con condiciones iniciales 0 (simb�lico, gr�fica)*
%
% El c�digo de la funci�n fun6 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
sympref('HeavisideAtOrigin', 1);
syms t
fun6([1 1 1],[1],heaviside(t),[0,0],10)
%
%% Ejercicio 7
% *5 gr�ficas anteriores*
%
% El c�digo de la funci�n fun7 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
fun7()