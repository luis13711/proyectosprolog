test :-
    repeat,
        writeln('1. action 1'),
        writeln('2. action 2'),
        writeln('3. bye'),
        read(X),
        travail(X).

travail(1) :-
    !,
    writeln('action 1'), fail.

travail(2) :-
    !,
    writeln('action 2'), fail.

travail(3) :-
    !,
    writeln('bye').

travail(_) :-
    writeln('wrong option'), fail.
