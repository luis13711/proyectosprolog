recor(a,recor(b,recor(c,d))).
recor(a,b):-write(a),write('->'),writeln(b).
recor(b,c):-write(b),write('->'),writeln(c).
recor(c,d):-write(c),write('->'),writeln(d).

corre(X,Z):-
       recor(X,Z);
       recor(Y,Z),
       corre(X,Y).
