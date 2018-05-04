mergesort([],[]).   %caso base
mergesort([X],[X]). %caso base
mergesort(XS,YS):-
        divide(XS,LS,MS),  %divido
        mergesort(LS,KS),  %ordeno una parte
        mergesort(MS,NS),  %ordeno la otra parte
        mezcla(KS,NS,YS).  %mezclo

coge(1,1,[X|_],[X]).
coge(N,M,[_|XS],NS):- %avanzo a la posicion
       N>1,
       L is N-1,
       D is M-1,
       coge(L,D,XS,NS).

coge(N,M,[X|XS],NS):- %cojo el elemento
       N==1,
       L is M-1,
       coge(N,L,XS,PS),
       concatena([X],PS,NS).


divide([X],[X],[]).
divide(XS,YS,ZS):-
        longitud(XS,P),
        L is P//2,
        L1 is L+1,
        coge(1,L,XS,YS),
        coge(L1,P,XS,ZS).

mezcla(XS,[],XS).
mezcla([],XS,XS).
mezcla([X|XS],[Y|YS],[X|ZS]):-
        X<Y,
        mezcla(XS,[Y|YS],ZS).
mezcla([X|XS],[Y|YS],[Y|ZS]):-
        X>=Y,
        mezcla([X|XS],YS,ZS).


longitud([],0).
        longitud([_|Cola],N):-longitud(Cola,N1),N is N1+1.
