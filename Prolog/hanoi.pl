hanoi(s(0),A,B,C,[A a B]).
hanoi(s(N),A,B,C,Movs) :-
hanoi(N,A,C,B,Movs1),
hanoi(N,C,B,A,Movs2),
append(Movs1,[A a B |Movs2],Movs).

hanoi(1,A,B,C,[A a B]).
hanoi(N,A,B,C,Movs) :-
N > 1,
N1 is N - 1,
lemma(hanoi(N1,A,C,B,Movs1)),
hanoi(N1,C,B,A,Movs2),
append(Movs1,[A a B |Movs2],Movs).

/*Para probarlo, primero resolver en general y luego instanciar (para aprovechar los lemmas).*/
hanoi(N,Discos,Movs) :-
hanoi(N,A,B,C,Movs),
Discos = [A,B,C].
