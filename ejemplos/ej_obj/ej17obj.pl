% �Podemos conocer qu� dolencia tiene Pedro?  
%:-pdc(p,X).
 

% �Qui�n padece gripe?
%:-pdc(X,gripe).

% �Qu� s�ntomas tiene Pedro? 
%:-pdc(_,_e),stm(S,_e).

% �Qui�n padece diarrea? 
%:-pdc(X,_A),stm(diar,_A).

%�Y qui�n est� cansado?
%:-pdc(P,_E),stm(can,_E).

% �Hay alg�n f�rmaco que debe tomar Pedro? 
%:-tm(_,F).

% �Hay alg�n s�ntoma que compartan Juan y Mar�a?
%:-pdc(p,_E1),pdc(m,_E2),stm(S,_E1),stm(S,_E2).

% Que farmacos debo comprar para todos
:-pdc(p,_E),alv(F,_E).









