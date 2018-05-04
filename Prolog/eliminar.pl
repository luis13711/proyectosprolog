eliminar(X,[X|T],T).
eliminar(X,[H|T],[H|T1]):-eliminar(X,T,T1).
