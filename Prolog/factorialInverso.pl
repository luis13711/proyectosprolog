fact(0,1).
fact(1,1).
fact(X,F):-Y is X-1,fact(Y,J),F is J*X.
factI(X,S):-
	fact(S,J),J==X,write('correcto');
	F is 1,fact1(X,F).
fact1(F,J):-
	F==J,write('S= '),writeln(F)
	;X is J+1,Y is F/J,fact1(Y,X).
factI(1,0).
factI(1,1).
