opcion(1):- writeln('hola mundo').
opcion(2):-writeln('salio del programa').
menu(2).
menu(V):-
	writeln('Programa de prolog'),
	writeln('1->para dar saludo'),
	writeln('2->para salir del programa'),
	read(X),opcion(X),menu(X).

main:- menu(0).
