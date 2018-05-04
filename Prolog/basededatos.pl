% materiales

insumo(cemento,20).
insumo(arena,5).
insumo(cal,16).

% herramientas y maquinarias

equipo(grua,200).
equipo(taladro,50).

% proyecciones

proyectaN(Nombre):- insumo(Nombre,_),write(Nombre),nl,fail.

% uniones

unionIE(N,C):-
	insumo(N,C),write(N),write(' '),write(C);
	equipo(N,C),write(N),write(' '),write(C).

% interseccion

interseccionIE(X,Y):-
	insumo(X,Y),equipo(X,Y).

seleccionI(Nombre,Costo):-insumo(Nombre,Y),Y>Costo,writeln(Nombre),nl,fail.

% producto X

productoI(N1,C1,N2,C2):-insumo(N1,C1),insumo(N2,C2),writeln(N1+C1+N2+C2),nl,fail.

% diferencia -
% \+ es otra forma de negacion
diferenciaIE(X,Y):-insumo(X,Y),not(equipo(X,Y)).
% deiferenciaIE(X,Y):-unionIE(X,Y),\+(insumo(X,Y)).
