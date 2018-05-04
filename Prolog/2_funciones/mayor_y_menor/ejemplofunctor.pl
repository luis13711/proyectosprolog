p(X,Y):-
    integer(X),
    integer(Y),
    between(1,3,X),
    between(1,3,Y),
    X > Y.
