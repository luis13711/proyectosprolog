'esFutbolista(X)'.
esFutbolista(messi).
esFutbolista(ronaldi�o).
esFutbolista(chicharito).
esFutbolista(S):-compa�eroEquipo(S,T),esFutbolista(T).
compa�eroEquipo(pedro,messi).
compa�eroEquipo(iniesta,messi).
esFutbolista(P):-tieneCondFisica(P), entrenaFut(P).
tieneCondFisica(villa).
tieneCondFisica(jordan).
entrenaFut(villa).

