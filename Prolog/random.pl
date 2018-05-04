contador(0).
contador(11).
contador(M):- M<11,M1 is M+1,imprimir(M),contador(M1).

opcion(1):- writeln('muestra de random que muestra 1 o 2'),random(1,3,X),write('valor: '),writeln(X).
opcion(2):-writeln('salio del programa').
menu(2).
menu(V):-
	writeln('Programa de prolog'),
	writeln('1->para ver valores random'),
	writeln('2->para salir del programa'),
	read(X),opcion(X),menu(X).

main:- menu(0).
