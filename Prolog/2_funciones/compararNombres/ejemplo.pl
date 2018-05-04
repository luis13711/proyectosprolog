'esFutbolista(X)'.
esFutbolista(messi).
esFutbolista(ronaldiño).
esFutbolista(chicharito).
esFutbolista(S):-compañeroEquipo(S,T),esFutbolista(T).
compañeroEquipo(pedro,messi).
compañeroEquipo(iniesta,messi).
esFutbolista(P):-tieneCondFisica(P), entrenaFut(P).
tieneCondFisica(villa).
tieneCondFisica(jordan).
entrenaFut(villa).

