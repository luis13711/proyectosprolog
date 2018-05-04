contador(0).
contador(11).
contador(M):- M<11,M1 is M+1,imprimir(M),contador(M1).
opcion(1):- writeln('ejemplo de contador '),contador(1).
opcion(3):-writeln('salio del programa').
menu(3).
menu(V):-
	writeln('Programa de prolog'),
	writeln('1->para ver contador'),
	writeln('3->para salir del programa'),
	read(X),opcion(X),menu(X).

main:- menu(0).
