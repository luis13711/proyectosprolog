puedecasarse(X,Y):- hombre(X),mujer(Y),legusta(X,Y),legusta(Y,X).
:- dynamic legusta/2.
agregarGusta(X,Y):-assertz(legusta(X,Y)).
legusta(luis,nathalia).
legusta(nathalia,luis).
legusta(javier,maria).
legusta(christian,maria).
legusta(maria,javier).
hombre(luis).
hombre(christian).
hombre(javier).
mujer(nathalia).
mujer(maria).
mujer(paola).
