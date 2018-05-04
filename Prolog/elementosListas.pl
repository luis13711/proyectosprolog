resto(X,[X|_]):-write('igual a '+X).
resto(X,[_|Y]):-resto(X,Y).
