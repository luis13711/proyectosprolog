camino(maturin,cumana):-writeln(maturin+'->'+cumana).
camino(cumana,barcelona):-writeln(cumana+'->'+barcelona).
camino(barcelona,caracas):-writeln(barcelona+'->'+caracas).
camino(pordaz,cbolivar):-writeln(pordaz+'->'+cbolivar).
camino(caracas,coro):-writeln(caracas+'->'+coro).
camino(coro,maracaibo):-writeln(coro+'->'+maracaibo).
camino(merida,barquisimeto):-writeln(merida+'->'+barquisimeto).
camino(barquisimeto,valencia):-writeln(barquisimeto+'->'+valencia).
camino(maturin,camino(cumana,camino(barcelona,camino(caracas,camino(coro,maracaibo))))).
camino(merida,camino(barquisimeto,valencia)).

% ruta(X,X). de alfonso
ruta(X,Z):-
       camino(X,Z);
       camino(Y,Z),
       ruta(X,Y).
