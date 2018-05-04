eliminar(X,[X|T],T).
eliminar(X,[H|T],[H|T1]):-eliminar(X,T,T1).

igual(X,X).
comparas(X,Y,Z):- eliminar(X,Y,W),igual(W,Z).
