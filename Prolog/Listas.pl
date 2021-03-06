% nil se le llama a lista de longitud cero []
%
penultimo(X,L):-invertir(L,[_,X|_]).
antepenultimo(X,L):-invertir(L,[_,_,X|_]).

sublista(L1,L2):-concatenar(_,L3,L2),concatenar(L1,_,L3).

main:-
  menu(0).

menu(15).
menu(Y):-
	writeln('programa de listas\n'),
	writeln('1.-si elemento esta en lista'),
	writeln('2.-para concatenar dos listas'),
	writeln('3.-para invertir lista'),
	writeln('4.-para crear lista a partir de dos'),
	writeln('5.-tamanio de una lista'),
	writeln('6.-sumar elementos de una lista'),
	writeln('7.-ver si lista es palindromica'),
	writeln('8.-numero de elemento en la lista'),
	writeln('9.-eliminar un elemento de una lista'),
	writeln('10.-cuantas veces elemento aparece en lista'),
	writeln('11.-comparar si elemento esta en lista y es el resultado de otra'),
	writeln('12.-eliminar elementos iguales en una lista')
	,writeln('13.-primer elemento de una lista')
	,writeln('14.-ultimo elemento de una lista')
	,writeln('15.-para salir del programa'),
	read(Z),
	opcion(Z),
	menu(Z).
opcion(1):-
        write('ingrese elemento\n'),
        write('y lista para buscarlo'),
        read(X),
        read(Y),
        resto(X,Y).
resto(X,[X|_]):-write('igual a '+X).
resto(X,[_|Y]):-resto(X,Y).

opcion(2):-
        write('ingrese lista 1 y lista 2'),
        read(X),read(Y),concatenar(X,Y,Z),
        write(Z+'ya se concatenaron\n').
concatenar([],L,L).
concatenar([X|L1],L2,[X|L3]):-concatenar(L1,L2,L3).

opcion(3):-
write('ingrese lista'),
read(X),
invertir(X,Z),
write(Z+'lista ya invertida\n').
invertir([],[]).
invertir([X|L1],L2):- invertir(L1,L3),concatenar(L3,[X],L2).

opcion(4):-
write('ingrese dos listas'),
read(X),
read(Y),crear(X,Y,Z),write('\nlista creada es '+Z).
crear(X,Y,[X|Y]).

opcion(5):-
write('ingrese lista para calcular longitud\n'),
read(X),len(X,N),write('\ntamanio de lista es '+N).
len([],0).
len([_|T],N):-len(T,S), N is 1+S.

opcion(6):-
	writeln('ingrese lista para sumar sus elementos'),read(X),suma(X,Z),writeln('suma resulta en '+Z).
suma([],0).
suma([X|Y],Z):-suma(Y,Q),Z is Q+X.

opcion(7):-
	writeln('ingrese la lista'),
	read(X),
	palindromo(X).
palindromo(L):-invertir(L,L).

opcion(8):-
	writeln('ingrese elemento y luego la lista'),
	read(X),
	read(Y),
	lugar(X,Y,Z),
	writeln('se encuentra en la posicion '+Z).
lugar(X,[Y|W],Z):-X==Y,Z is 1;lugar(X,W,Q), Z is Q+1.

opcion(9):-
	writeln('ingrese elemento luego la lista'),
	read(X),
	read(Y),
	eliminidor(X,Y,W),
	writeln(W).
eliminador(X,[X|W],W).
eliminador(X,[Y|W],[Y|Z]):-eliminador(X,W,Z).

opcion(10):-
	writeln('ingrese elemento luego la lista'),
	read(X),
	read(Y),
	existe(X,Y,Z).
existe(X,[],0).
existe(X,[X|W],Z):- existe(X,W,Q),Z is Q+1.
existe(X,[Y|W],Z):-existe(X,W,Q), Z is Q.

opcion(11):-
	writeln('ingrese elemento seguido de las dos listas'),read(X),read(Y),read(Z),comparas(X,Y,Z).
eliminar(X,[X|T],T).
eliminar(X,[H|T],[H|T1]):-eliminar(X,T,T1).
igual(X,X).
comparas(X,Y,Z):- eliminar(X,Y,W),igual(W,Z).

opcion(12):-
	writeln('ingrese elemento luego lista'),
	read(X),
	read(Y),
	prueba(X,Y,1).
prueba(X,Y,T):-
	T==0,writeln(Y);
	existe(X,Y,W),
	J is W-1,
	eliminar(X,Y,Z),
	prueba(X,Z,J).

opcion(13):-
	writeln('ingrese la lista y luego el primer elemento'),read(Z),read(X),primero(X,Z).
primero(X,[X|_]):-writeln('correcto').

opcion(14):-
	writeln('ingrese lista luego ultimo elemento')
	,read(Z)
	,read(X)
	,ultimo(X,Z).
ultimo(X,L):-invertir(L,[X|_]),writeln('correcto').

opcion(15):-
write('ya salio del programa').

